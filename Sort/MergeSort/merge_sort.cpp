//
//  merge_sort.cpp
//  Sorting
//
//  Created by Andrey Firsenko on 03.03.2024.
//

#include "merge_sort.hpp"
#include <iostream>

void merge_sort(int *array, int arraySize);
void print_array(int *array, int arraySize);

void main_merge_sort() {
    const int n = 10;
    int array[n];
    for (int i = 0; i < n; i++) {
        array[i] = std::rand() % 100;
    }
    
    print_array(array, n);
    merge_sort(array, n);
    print_array(array, n);
}

void merge_sort(int *array, int arraySize) {
    if (arraySize <= 1) return;
    
    int mid = arraySize / 2;
    int *leftArray = array;
    int leftSize = mid;
    int *rightArray = array + mid;
    int rightSize = arraySize - leftSize;
    
    // Recursion
    merge_sort(leftArray, leftSize);
    merge_sort(rightArray, rightSize);
    
    // Sort Action
    int *buffer = new int[arraySize];
    int leftIndex = 0, rightIndex = 0, bufferIndex = 0;
    while (leftIndex < leftSize && rightIndex < rightSize) {
        if (leftArray[leftIndex] <= rightArray[rightIndex]) {
            buffer[bufferIndex] = leftArray[leftIndex];
            leftIndex += 1;
            bufferIndex += 1;
        } else {
            buffer[bufferIndex] = rightArray[rightIndex];
            rightIndex += 1;
            bufferIndex += 1;
        }
    }
    while (leftIndex < leftSize) {
        buffer[bufferIndex] = leftArray[leftIndex];
        leftIndex += 1;
        bufferIndex += 1;
    }
    while (rightIndex < rightSize) {
        buffer[bufferIndex] = rightArray[rightIndex];
        rightIndex += 1;
        bufferIndex += 1;
    }
    
    // Buffer -> Array
    for (int i = 0; i < arraySize; i++) {
        array[i] = buffer[i];
    }
    
    delete[] buffer;
}

void print_array(int *array, int arraySize) {
    for (int i = 0; i < arraySize; i++) {
        std::cout << array[i] << " ";
    }
    std::cout << "\n";
}
