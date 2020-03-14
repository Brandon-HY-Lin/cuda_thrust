
#include <iostream>
#include <thrust/iterator/constant_iterator.h>
#include <thrust/reduce.h>

int main()
{
	// create iterators
	thrust::constant_iterator<int> first(10);
	thrust::constant_iterator<int> last = first + 3;

	std::cout << first[0] << std::endl;   // returns 10
	std::cout << first[1] << std::endl;   // returns 10
	std::cout << first[100] << std::endl; // returns 10

	// sum of [first, last)
	int result = thrust::reduce(first, last);   // returns 30 (i.e. 3 * 10)

	std::cout << result << std::endl;

	return 0;
}
