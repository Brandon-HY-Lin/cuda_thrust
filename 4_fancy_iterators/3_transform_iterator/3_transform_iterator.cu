
#include <thrust/device_vector.h>
#include <thrust/reduce.h>
#include <thrust/iterator/transform_iterator.h>
#include <iostream>

int main()
{

	// initialize vector
	thrust::device_vector<int> vec(3);
	vec[0] = 10; vec[1] = 20; vec[2] = 30;

	// create iterator (type omitted)
	
	auto first = thrust::make_transform_iterator(vec.begin(), thrust::negate<int>());
	
	auto last = thrust::make_transform_iterator(vec.end(), thrust::negate<int>());

	std::cout << first[0] << std::endl;   // returns -10
	std::cout << first[1] << std::endl;    // returns -20
	std::cout << first[2] << std::endl;    // returns -30

	// sum of [first, last)
	int result = thrust::reduce(first, last);   // returns -60 (i.e. -10 + -20 + -30)

	std::cout << "Result = " << result << std::endl;

	return 0;
}
