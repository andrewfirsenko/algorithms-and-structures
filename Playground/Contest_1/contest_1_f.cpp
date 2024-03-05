//
//  contest_1_f.cpp
//  Playground
//
//  Created by Andrey Firsenko on 04.03.2024.
//

#include <iostream>
#include <cstdint>

#ifdef NEED_SKIP

int64_t merge_sort(int32_t *array, int arraySize);

int main(int argc, const char * argv[]) {
    int n = 0;
    std::cin >> n;
    
    int32_t *array = new int32_t[n];
    for (int i = 0; i < n; i++) {
        int32_t tmp = 0;
        std::cin >> tmp;
        array[i] = tmp;
    }
    
    int64_t result = merge_sort(array, n);
    std::cout << result << "\n";
    for (int i = 0; i < n; i++) {
        std::cout << array[i] << " ";
    }
    std::cout << "\n";
    
    delete[] array;
    return 0;
}

int64_t merge_sort(int32_t *array, int arraySize) {
    if (arraySize <= 1) return 0;
    
    int64_t result = 0;
    
    int mid = arraySize / 2;
    int32_t *leftArray = array;
    int leftSize = mid;
    int32_t *rightArray = array + mid;
    int rightSize = arraySize - leftSize;
    
    // Recursion
    result += merge_sort(leftArray, leftSize);
    result += merge_sort(rightArray, rightSize);
    
    // Sort Action
    int32_t *buffer = new int32_t[arraySize];
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
            result += 1;
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
    return result;
}

#endif
