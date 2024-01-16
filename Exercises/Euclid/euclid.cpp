//
//  euclid.cpp
//  Exercises
//
//  Created by Andrey Firsenko on 03.02.2024.
//

#include "euclid.hpp"
#include <iostream>

int gcd(int a, int b);

// MARK: - Main

void euclid_main() {
    int a, b;
    
    std::cout << "Enter two numbers: ";
    std::cin >> a >> b;
    
    std::cout << "Gcd(" << a << ", " << b << ") = " << gcd(a, b) << std::endl;
}

// MARK: - Functions

int gcd(int a, int b) {
    if (b == 0) {
        return a;
    } else {
        return gcd(b, a % b);
    }
}
