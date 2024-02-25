//
//  generate_binary.cpp
//  Exercises
//
//  Created by Andrey Firsenko on 21.02.2024.
//

#include "generate_binary.hpp"
#include <iostream>

void generate_binary(int n, std::string prefix);

void main_generate_binary() {
    generate_binary(4, "");
}

void generate_binary(int n, std::string prefix) {
    if (n <= 1) {
        std::cout << prefix << "0" << "\n";
        std::cout << prefix << "1" << "\n";
    } else {
        generate_binary(n - 1, prefix + "0");
        generate_binary(n - 1, prefix + "1");
    }
}
