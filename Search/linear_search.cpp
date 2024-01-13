//
//  linear_search.cpp
//  Search
//
//  Created by Andrey Firsenko on 10.01.2024.
//

#include "linear_search.hpp"
#include <iostream>

int searchIndex(int array[], int N, int number);

// MARK: - Main

void linearSearch() {
    
    const int N = 7;
    int array[N] = {1, 2, 3, 6, 10, 15, 14};
    int number;
    
    std::cout << std::endl;
    std::cout << "Linear search" << std::endl;
    for(int i = 0; i < N; i++) {
        std::cout << array[i] << " ";
    }
    std::cout << std::endl;
    std::cout << "Enter number: ";
    std::cin >> number;
    int index = searchIndex(array, N, number);
    std::cout << "Found index is " << index << std::endl;
    std::cout << std::endl;
}

// MARK: - Functions

int searchIndex(int array[], int N, int number) {
    for (int i = 0; i < N; i++) {
        if (array[i] == number) {
            // Found
            return i;
        }
    }
    // Not found
    return -1;
}
