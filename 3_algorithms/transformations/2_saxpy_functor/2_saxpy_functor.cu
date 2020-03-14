#include <iostream>
#include <thrust/device_vector.h>
#include <thrust/host_vector.h>
#include <thrust/transform.h>
#include <thrust/fill.h>

struct saxpy_functor
{
    const float a;

    saxpy_functor(float _a) : a(_a) {}

    __host__ __device__
        float operator()(const float& x, const float& y) const {
        return a * x + y;
    }
};

void saxpy_fast(float A, thrust::device_vector<float>& X, thrust::device_vector<float>& Y)
{
    // Y <- A * X + Y
    thrust::transform(X.begin(), X.end(), Y.begin(), Y.begin(), saxpy_functor(A));
}

void saxpy_slow(float A, thrust::device_vector<float>& X, thrust::device_vector<float>& Y)
{
    thrust::device_vector<float> temp(X.size());

    // temp <- A
    thrust::fill(temp.begin(), temp.end(), A);

    // temp <- A * X
    thrust::transform(X.begin(), X.end(), temp.begin(), temp.begin(), thrust::multiplies<float>());

    // Y <- A * X + Y
    thrust::transform(temp.begin(), temp.end(), Y.begin(), Y.begin(), thrust::plus<float>());
}
int main()
{
    // initial values
    std::vector<float> h_x = { 1.0, 2.0, 3.0 };
    std::vector<float> h_y = { 4.0, 5.0, 6.0 };

    // init device
    float A = 2.0;
    thrust::device_vector<float> X;
    thrust::device_vector<float> Y;

    X = h_x;
    Y = h_y;

    saxpy_slow(A, X, Y);

    // move data from device to host
    thrust::host_vector<float> result;
    result = Y;

    // print result ( A*X + Y )
    std::cout << "A =         " << A << std::endl;
    std::cout << "X =         ";
    for (auto x : h_x) {
        std::cout << x << ", ";
    }
    std::cout << std::endl;

    std::cout << "Y =         ";
        for (auto y : h_y) {
            std::cout << y << ", ";
        }
    std::cout << std::endl;

    std::cout << "A * X + Y = ";
    for (int i = 0; i < result.size(); i++) {
        std::cout << result[i] << ", ";
    }

    std::cout << std::endl;

	return 0;
}
