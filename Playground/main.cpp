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

double f(double x, int a, int b, int c, int d);

int main(int argc, const char * argv[]) {
    
    int a = 0, b = 0, c = 0, d = 0;
    std::cin >> a >> b >> c >> d;
    
    double lBound = -MAXFLOAT; // Answer
    double rBound = MAXFLOAT;
    double delta = 0.000001;
    
    while (rBound - lBound > delta) {
        double mid = (lBound + rBound) / 2;
        if (0 >= f(mid, a, b, c, d)) {
            lBound = mid;
        } else {
            rBound = mid;
        }
    }
    
    std::cout << std::setprecision(15) << lBound << "\n";
    
    return 0;
}

double f(double x, int a, int b, int c, int d) {
    return a * std::pow(x, 3) + b * std::pow(x, 2) + c * x + d;
}
