//
//  712.cpp
//  Acmp
//
//  Created by Andrey Firsenko on 19.02.2024.
//

#include "712.hpp"
#include <iostream>
#include <cstdint>

// Расстановка дипломов в квадрате. Надо найти сторону квадрата
// Input: w, h, n (1 ≤ w, h, n ≤ 10^9)
// Input: 2 3 10
// Output: 9
// int main(int argc, const char * argv[])

bool check(uint32_t width, uint32_t height, uint64_t side, uint32_t n);

int main_712() {
    
    uint32_t width, height, n;
    std::cin >> width >> height >> n;
    
    uint64_t lBound = 0;
    uint64_t rBound = INT64_MAX;

    while (rBound - lBound > 1) {
        uint64_t mid = (lBound + rBound) / 2;
        if (check(width, height, mid, n)) {
            rBound = mid;
        } else {
            lBound = mid;
        }
    }

    std::cout << rBound << "\n";
    
    return 0;
}

bool check(uint32_t width, uint32_t height, uint64_t side, uint32_t n) {
    uint64_t w_count = side / width;
    uint64_t h_count = side / height;
    uint64_t maxN = w_count * h_count;
    return maxN >= n;
}
