//
//  karatsuba.cpp
//  Playground
//
//  Created by Andrew on 29.01.2025.
//

#include "karatsuba.hpp"
#include <iostream>
#include <cmath>

int multiply(int x, int y);
int lengthNumber(int num);
bool isPowerOfTwo(int num);

int mainKaratsuba() {
    int x, y;
    std::cout << "Enter two num (power of 2):\n";
    std::cin >> x >> y;
    
    int xy = multiply(x, y);
    std::cout << "Result: " << xy << " and expected value: " << x * y << "\n";
    
    return 0;
}

int multiply(int x, int y) {
    int length = lengthNumber(x);
    if (length == 1) return x * y;
    
    int halfLength = length / 2;
    int halfPow = std::pow(10, halfLength);
    int a = x / halfPow;
    int b = x % halfPow;
    int c = y / halfPow;
    int d = y % halfPow;
    
    int ac = multiply(a, c);
    int bd = multiply(b, d);
    int abcd = multiply(a + b, c + d);
    
    return std::pow(10, length) * ac + std::pow(10, halfLength) * (abcd - ac - bd) + bd;
}

int lengthNumber(int num) {
    if (num == 0) return 1;
    return std::log10(std::abs(num)) + 1;
}

bool isPowerOfTwo(int num) {
    return (num > 0) && ((num & (num - 1)) == 0);
}
