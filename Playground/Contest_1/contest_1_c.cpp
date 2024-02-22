//
//  main.cpp
//  Playground
//
//  Created by Andrey Firsenko on 19.02.2024.
//

#include <iostream>
#include <cstdint>

#ifdef NEED_SKIP

int main(int argc, const char * argv[]) {
    
    int32_t n = 0;
    std::cin >> n;
    
    int32_t lIndex = 0; // Answer
    int32_t rIndex = n + 1;
    
    while (rIndex - lIndex > 1) {
        int32_t mid = (lIndex + rIndex) / 2;
        std::string feedback = "";
        
        std::cout << mid << "\n";
        std::fflush(stdout);
        std::cin >> feedback;
        
        if (feedback == ">=") {
            lIndex = mid;
        } else {
            rIndex = mid;
        }
    }
    
    std::cout << "! " << lIndex << "\n";
    
    return 0;
}

#endif
