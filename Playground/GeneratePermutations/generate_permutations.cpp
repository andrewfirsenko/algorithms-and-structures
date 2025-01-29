//
//  generate_permutations.cpp
//  Exercises
//
//  Created by Andrey Firsenko on 03.03.2024.
//

#include "generate_permutations.hpp"
#include <iostream>
#include <map>

void generate_permutaion(std::map<int, bool> numbers, int currentNumber, std::string result);

void main_generate_permutations() {
    const int n = 4;
    std::cout << "Generate permutations for " << n << "\n";
    
    std::map<int, bool> numbers;
    for (int i = 0; i < n; i++) {
        numbers[i] = true;
    }
    
    generate_permutaion(numbers, 0, "");
}

void generate_permutaion(std::map<int, bool> numbers, int currentNumber, std::string result) {
    if (currentNumber >= numbers.size()) {
        std::cout << result << "\n";
    } else {
        for (auto &tmp : numbers) {
            if (tmp.second) {
                tmp.second = false;
                generate_permutaion(numbers, currentNumber + 1, result + std::to_string(tmp.first));
                tmp.second = true;
            }
        }
    }
}
