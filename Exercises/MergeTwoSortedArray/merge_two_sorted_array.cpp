//
//  merge_two_sorted_array.cpp
//  Exercises
//
//  Created by Andrey Firsenko on 18.02.2024.
//

#include "merge_two_sorted_array.hpp"
#include <iostream>

std::string printArray(int *array, int size);

void merge_two_sorted_array() {
    
    const int N = 6;
    int firstArray[N] = { 1, 3, 5, 6, 24, 34 };
    int secondArray[N] = { 15, 17, 24, 24, 40, 66 };
    
    std::cout << "We have two arrays:" << std::endl;
    std::cout << "First: " << printArray(firstArray, N) << std::endl;
    std::cout << "Second: " << printArray(secondArray, N) << std::endl;
    
    int summaryArray[N * 2];
    int iFirst = 0, iSecond = 0;
    
    for (int i = 0; i < N * 2; i++) {
        if ((firstArray[iFirst] <= secondArray[iSecond]) && (iFirst < N)) {
            summaryArray[i] = firstArray[iFirst];
            iFirst++;
        } else {
            summaryArray[i] = secondArray[iSecond];
            iSecond++;
        }
    }
    
    std::cout << "Summary Array: " << printArray(summaryArray, N * 2) << std::endl;
}

std::string printArray(int *array, int size) {
    std::string result = "";
    for (int i = 0; i < size; i++) {
        result += std::to_string(array[i]) + " ";
    }
    return result;
}
