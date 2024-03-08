//
//  main.cpp
//  Search
//
//  Created by Andrey Firsenko on 10.01.2024.
//

#include <iostream>
#include <functional>
#include <vector>

#include "linear_search.hpp"
#include "binary_search.hpp"

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
        Option("1", "Linear search", linearSearch),
        Option("2", "Binary search", main_binary_search),
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
                options[i].action();
            }
        }
    } while (option != "exit");
    
    return 0;
}

// MARK: - Functions

void printOptions(std::vector<Option>& options) {
    std::cout << "Search options:" << std::endl;
    for(int i = 0; i < options.size(); i++) {
        std::cout << " [" << options[i].command << "] - " << options[i].description << std::endl;
    }
}
