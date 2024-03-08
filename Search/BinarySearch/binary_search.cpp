//
//  binary_search.cpp
//  Search
//
//  Created by Andrey Firsenko on 06.03.2024.
//

#include "binary_search.hpp"
#include <iostream>
#include <vector>

int binary_search_index(std::vector<int> array, int x);

void main_binary_search() {
    
    std::vector<int> array { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
    int x = 0;
    std::cout << "Enter search number: ";
    std::cin >> x;
    
    std::cout << "Find element index_binary_search(" << x << ") = " << binary_search_index(array, x) << "\n";
}

int binary_search_index(std::vector<int> array, int x) {
    int leftIndex = -1; // Answer
    int rightIndex = (int)array.size();
    
    while (rightIndex - leftIndex > 1) {
        int mid = (leftIndex + rightIndex) / 2;
        if (array[mid] <= x) {
            leftIndex = mid;
        } else {
            rightIndex = mid;
        }
    }
    
    return leftIndex;
}
