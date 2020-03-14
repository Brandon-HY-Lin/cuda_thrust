
#include <thrust/reduce.h>
#include <thrust/iterator/counting_iterator.h>


int main()
{
	thrust::counting_iterator<int> first(10);
	thrust::counting_iterator<int> last = first + 3;

	std::cout << first[0] << std::endl;   // returns 10
	std::cout << first[1] << std::endl;   // returns 11
	std::cout << first[100] << std::endl; // returns 110

	// sum of [first, last)
	float result = thrust::reduce(first, last); // returns 33 (i.e. 10 + 11 + 12)

	std::cout << result << std::endl;

	return 0;
}
