//
//  linear_search.cpp
//  Search
//
//  Created by Andrey Firsenko on 10.01.2024.
//

#include "linear_search.hpp"

int linearSearch(int array[], int N, int number) {
    for (int i = 0; i < N; i++) {
        if (array[i] == number) {
            return i;
        }
    }
    // Not found
    return -1;
}
