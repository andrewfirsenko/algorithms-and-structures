//
//  contest_1_e.cpp
//  Playground
//
//  Created by Andrey Firsenko on 26.02.2024.
//

#include <iomanip>
#include <iostream>
#include <cstdint>
#include <cmath>

// Неполное решение, неверный ответ на 2 тесте

#ifdef NEED_SKIP

double f(double x, int a, int b, int c, int d);

int main(int argc, const char * argv[]) {
    
    int a = 0, b = 0, c = 0, d = 0;
    std::cin >> a >> b >> c >> d;
    
    double bound = std::pow((MAXFLOAT / (2 * std::abs(a))), 0.333);
    double lBound = -bound; // Answer
    double rBound = bound;
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
    return (double)a * std::pow(x, 3) + (double)b * std::pow(x, 2) + (double)c * x + (double)d;
}

#endif
