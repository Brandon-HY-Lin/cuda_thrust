// prefix_sums.cpp : Defines the entry point for the application.
//

#include <thrust/scan.h>
#include <iostream>

int main()
{
	int data[6] = { 1, 0, 2, 2, 1, 3 };
	int data_out[6];

	// data_out is now {1, 1, 3, 5, 6, 9}
	thrust::inclusive_scan(data, data + 6, data_out);


	std::cout << "inclusive scan = ";
	for (int i = 0; i < 6; i++) {
		std::cout << data_out[i] << ", ";
	}

	std::cout << std::endl;

	// data_out is now {0, 1, 1, 3, 5, 6}
	thrust::exclusive_scan(data, data + 6, data_out);

	std::cout << "exclusive scan = ";
	for (int i = 0; i < 6; i++) {
		std::cout << data_out[i] << ", ";
	}

	std::cout << std::endl;

	return 0;
}
