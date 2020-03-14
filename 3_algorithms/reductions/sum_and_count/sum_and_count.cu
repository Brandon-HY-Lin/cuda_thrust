
#include <thrust/device_vector.h>
#include <thrust/sequence.h>
#include <thrust/transform_reduce.h>
#include <iostream>

int main()
{
	thrust::device_vector<int> D(10);

	thrust::sequence(D.begin(), D.end());

	std::cout << "D = ";
	for (auto d : D) {
		std::cout << d << ", ";
	}

	std::cout << std::endl;

	int sum = thrust::reduce(D.begin(), D.end(), (int)0, thrust::plus<int>());

	std::cout << "sum = " << sum << std::endl;


	// count the number of D[i] = 1
	int count = thrust::count(D.begin(), D.end(), 1);

	std::cout << "count the number of 1 = " << count << std::endl;

	return 0;
}
