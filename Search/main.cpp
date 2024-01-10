//
//  main.cpp
//  Search
//
//  Created by Andrey Firsenko on 10.01.2024.
//

#include <iostream>
#include "linear_search.hpp"

const int N = 100;

int main(int argc, const char * argv[]) {
    
    int array[N];
    int number;
    
    for(int i = 0; i < N; i++) {
        array[i] = i;
    }
    
    std::cout << "Linear Search" << std::endl;
    std::cout << "Enter your number: ";
    std::cin >> number;
    
    int index = linearSearch(array, N, number);
    std::cout << "Found index = " << index <<  std::endl;
    
    return 0;
}
