//
//  main.cpp
//  Playground
//
//  Created by Andrey Firsenko on 19.02.2024.
//

#include <iostream>
#include <cstdint>
#include <vector>

#ifdef NEED_SKIP

int32_t search_min_number_near(int32_t number, std::vector<int32_t>& array);

int main(int argc, const char * argv[]) {
    
    int32_t n = 0, k = 0;
    std::vector<int32_t> array;
    
    std::cin >> n >> k;
    for (int32_t i = 0; i < n; i++) {
        int32_t element;
        std::cin >> element;
        array.push_back(element);
    }
    for (int32_t i = 0; i < k; i++) {
        int32_t number;
        std::cin >> number;
        
        std::cout << search_min_number_near(number, array) << "\n";
    }
    
    return 0;
}

int32_t search_min_number_near(int32_t number, std::vector<int32_t>& array) {
    int32_t lIndex = -1;
    int32_t rIndex = (int32_t)array.size();
    
    while (rIndex - lIndex > 1) {
        int32_t mid = (lIndex + rIndex) / 2;
        if (number >= array[mid]) {
            lIndex = mid;
        } else {
            rIndex = mid;
        }
    }
    
    lIndex = std::max(lIndex, 0);
    rIndex = std::min(rIndex, (int32_t)array.size());
    
    if (std::abs(number - array[lIndex]) <= std::abs(number - array[rIndex])) {
        return array[lIndex];
    } else {
        return array[rIndex];
    }
}

#endif
