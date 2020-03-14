// sort_by_key.cpp : Defines the entry point for the application.
//

#include <thrust/sort.h>
#include <thrust/functional.h>


template <typename T>
void print_array(const T* array, const int size)
{
	for (int i = 0; i < size; ++i) {
		std::cout << array[i] << ", ";
	}

	std::cout << std::endl;
}

int main()
{
	// Test 1: Ordinary sorting
	std::cout << "Test 1: Ordinary Sorting" << std::endl;
	const int N = 6;
	int A[N] = { 1, 4, 2, 8, 5, 7 };

	thrust::sort(A, A + N);

	std::cout << "After sorting" << std::endl;
	print_array<int>(A, N);
	std::cout << std::endl;

	// Test 2: Sort by key
	std::cout << "Test 2: Sort by keys" << std::endl;

	int    keys[N] = { 1,   4,   2,   8,   5,   7 };
	char values[N] = { 'a', 'b', 'c', 'd', 'e', 'f' };

	thrust::sort_by_key(keys, keys + N, values);

	// keys is now   {  1,   2,   4,   5,   7,   8}
	// values is now {'a', 'c', 'b', 'e', 'f', 'd'}
	std::cout << "After sorting" << std::endl;

	std::cout << "keys = ";
	print_array<int>(keys, N);

	std::cout << "values = ";
	print_array<char>(values, N);
	std::cout << std::endl;

	// Test 3: descending sort
	std::cout << "Test 3: Descending sort" << std::endl;
	int B[N] = { 1, 4, 2, 8, 5, 7 };
	thrust::stable_sort(B, B + N, thrust::greater<int>());

	std::cout << "After sorting" << std::endl;
	print_array<int>(B, N);
	std::cout << std::endl;

	return 0;
}
