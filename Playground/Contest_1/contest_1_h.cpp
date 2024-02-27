//
//  main.cpp
//  Playground
//
//  Created by Andrey Firsenko on 19.02.2024.
//

#include <iostream>

#ifdef NEED_SKIP

int main(int argc, const char * argv[]) {
    
    const int ALPHABET_OFFSET = 65;
    const int ALPHABET_COUNT = 65;
    
    int n = 0;
    std::string input = "";
    int alphabet[ALPHABET_COUNT] = { 0 };
    
    std::cin >> n;
    std::cin >> input;
    for (int i = 0; i < n; i++) {
        alphabet[(int)input[i] - ALPHABET_OFFSET] += 1;
    }
    
    std::string answer = "";
    for (int i = 0; i < ALPHABET_COUNT; i++) { // Минимальное нечетное
        if (alphabet[i] % 2 != 0 && alphabet[i] > 0) {
            answer = (char)(i + ALPHABET_OFFSET);
            alphabet[i] -= 1;
            break;
        }
    }
    for (int i = ALPHABET_COUNT - 1; i >= 0; i--) { // Парные буквы
        if (alphabet[i] > 1) {
            char ch = (char)(i + ALPHABET_OFFSET);
            answer = ch + answer + ch;
            alphabet[i] -= 2;
            i++;
        }
    }
    
    std::cout << answer << "\n";
    
    return 0;
}

#endif
