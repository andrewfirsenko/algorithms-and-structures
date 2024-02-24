//
//  main.cpp
//  Exercises
//
//  Created by Andrey Firsenko on 03.02.2024.
//

#include <iostream>
#include <functional>
#include <vector>

#include "factorial.hpp"
#include "euclid.hpp"
#include "merge_two_sorted_array.hpp"
#include "hanoi.hpp"
#include "generate_binary.hpp"

struct Option {
    std::string command;
    std::string description;
    std::function<void ()> action;
    
    Option(std::string command, std::string description, std::function<void ()> action) {
        this->command = command;
        this->description = description;
        this->action = action;
    }
};

void printOptions(std::vector<Option>& options);

// MARK: - Main

int main(int argc, const char * argv[]) {
    
    std::vector<Option> options = {
        Option("1", "Factorial", factorial_main),
        Option("2", "Euclid gcd", euclid_main),
        Option("3", "Merge two sorted array", merge_two_sorted_array),
        Option("4", "Hanoi", main_hanoi),
        Option("5", "Generate binary", main_generate_binary),
        Option("exit", "Exit from app", []() {})
    };
    
    std::string option;
    do {
        printOptions(options);
        std::cout << "> ";
        std::cin >> option;
        
        for(int i = 0; i < options.size(); i++) {
            if (options[i].command == option) {
                // Run option
                std::cout << std::endl;
                options[i].action();
                std::cout << std::endl;
            }
        }
    } while (option != "exit");
    
    return 0;
}

// MARK: - Functions

void printOptions(std::vector<Option>& options) {
    std::cout << "Exercise options:" << std::endl;
    for(int i = 0; i < options.size(); i++) {
        std::cout << " [" << options[i].command << "] - " << options[i].description << std::endl;
    }
}
