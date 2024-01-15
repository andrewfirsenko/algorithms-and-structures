//
//  factorial.cpp
//  Exercises
//
//  Created by Andrey Firsenko on 03.02.2024.
//

#include "factorial.hpp"
#include <iostream>

int32_t factorial(int16_t n);

// MARK: - Main

void factorial_main() {
    int16_t number;
    
    std::cout << "Enter number for factorial: ";
    std::cin >> number;
    
    std::cout << "Factorial(" << number << ") = " << factorial(number) << std::endl;
    
}

// MARK: - Functions

int32_t factorial(int16_t n) {
    if (n <= 0) {
        return 1;
    }
    return n * (factorial(n - 1));
}
