#include <thrust/device_vector.h>
#include <thrust/reduce.h>
#include <thrust/iterator/permutation_iterator.h>

#include <iostream>

int main()
{

	// gather locations
	thrust::device_vector<int> map(4);
	map[0] = 3;
	map[1] = 1;
	map[2] = 0;
	map[3] = 5;

	// array to gather from
	thrust::device_vector<int> source(6);
	source[0] = 10;
	source[1] = 20;
	source[2] = 30;
	source[3] = 40;
	source[4] = 50;
	source[5] = 60;

	int sum = thrust::reduce(
		thrust::make_permutation_iterator(source.begin(), map.begin()),
		thrust::make_permutation_iterator(source.begin(), map.end())
	);

	// fuse gather with reduction: 
	//   sum = source[map[0]] + source[map[1]] + ...
	//		=  source[3] + source[1] + source[0] + source[5]
	//		= 40 + 20 + 10 + 60
	//		= 130
	std::cout << "sum = " << sum << std::endl;


	return 0;
}
