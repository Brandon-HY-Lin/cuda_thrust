#include <thrust/device_vector.h>
#include <thrust/iterator/zip_iterator.h>
#include <thrust/tuple.h>
#include <thrust/reduce.h>

int main()
{
	// initialize vectors
	thrust::device_vector<int>  A(3);
	thrust::device_vector<char> B(3);
	A[0] = 10;  A[1] = 20;  A[2] = 30;
	B[0] = 'x'; B[1] = 'y'; B[2] = 'z';
	
	// create iterator (type omitted)
	auto first = thrust::make_zip_iterator(thrust::make_tuple(A.begin(), B.begin()));
	auto last = thrust::make_zip_iterator(thrust::make_tuple(A.end(), B.end()));

	first[0];   // returns tuple(10, 'x')
	first[1];   // returns tuple(20, 'y')
	first[2];   // returns tuple(30, 'z')


	// maximum of [first, last)
	thrust::maximum< thrust::tuple<int, char>> binary_op;
	thrust::tuple<int, char> init = first[0];
	thrust::reduce(first, last, init, binary_op); // returns tuple(30, 'z')

	return 0;
}
