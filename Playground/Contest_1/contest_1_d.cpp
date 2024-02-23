//
//  main.cpp
//  Playground
//
//  Created by Andrey Firsenko on 19.02.2024.
//

#include <iomanip>
#include <iostream>
#include <cstdint>
#include <cmath>

#ifdef NEED_SKIP

double f(double x);

int main(int argc, const char * argv[]) {
    
    long double c = 0.0;
    std::cin >> c;
    
    long double lBound = 0.0; // Answer
    long double rBound = std::sqrt(c);
    long double delta = 0.0000001;
    
    while (rBound - lBound > delta) {
        double mid = (lBound + rBound) / 2;
        if (c >= f(mid)) {
            lBound = mid;
        } else {
            rBound = mid;
        }
    }
    
    std::cout << std::setprecision(15) << lBound << "\n";
    
    return 0;
}

double f(double x) {
    return std::pow(x, 2) + std::sqrt(x + 1);
}

#endif
