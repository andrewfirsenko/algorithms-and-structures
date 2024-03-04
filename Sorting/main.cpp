//
//  main.cpp
//  Sorting
//
//  Created by Andrey Firsenko on 03.03.2024.
//

#include <iostream>
#include <functional>
#include <vector>

#include "merge_sort.hpp"

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
        Option("1", "Merge Sort", main_merge_sort),
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
