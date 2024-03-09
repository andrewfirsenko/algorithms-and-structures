//
//  contest_2_a.cpp
//  Playground
//
//  Created by Andrey Firsenko on 09.03.2024.
//

#include <iostream>
#include <cstdint>
#include <stack>

#ifdef NEED_SKIP

struct StackElement {
    
    int32_t value;
    int32_t min;
    
    StackElement(int32_t value, int32_t min) {
        this->value = value;
        this->min = min;
    }
};

int main(int argc, const char * argv[]) {
    
    int n = 0;
    std::cin >> n;
    
    std::stack<StackElement> stack;
    for (int i = 0; i < n; i++) {
        int command = 0;
        std::cin >> command;
        
        switch (command) {
            case 1:
                {
                    int32_t tmp = 0;
                    std::cin >> tmp;
                    if (stack.empty()) {
                        stack.push(StackElement(tmp, tmp));
                    } else {
                        int32_t newMin = std::min(stack.top().min, tmp);
                        stack.push(StackElement(tmp, newMin));
                    }
                }
                break;
            case 2:
                stack.pop();
                break;
            case 3:
                std::cout << stack.top().min << "\n";
                break;
            default: break;
        }
    }
}

#endif
