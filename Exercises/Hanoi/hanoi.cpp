//
//  hanoi.cpp
//  Exercises
//
//  Created by Andrey Firsenko on 21.02.2024.
//

#include "hanoi.hpp"
#include <iostream>

// 2^(n+1) - 1 кол-во решений. O(2^n)
// С i столбика на k. n - кол-во дисков
void hanoi(int i, int k, int n);
void print(int i, int k, int n);

void main_hanoi() {
    hanoi(1, 2, 3);
}

void hanoi(int i, int k, int n) {
    if (n == 1) {
        print(i, k, n);
    } else {
        // i + j + tmp = 6 (1 + 2 + 3) столбики
        int tmp = 6 - i - k;
        hanoi(i, tmp, n - 1);
        print(i, k, n);
        hanoi(tmp, k, n - 1);
    }
}

void print(int i, int k, int n) {
    std::cout << "Move " << n << " from(" << i << ") to("<< k << ")\n";
}
