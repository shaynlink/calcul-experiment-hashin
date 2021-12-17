#include <iostream>
#include <ctime>
#include <chrono>

using namespace std::chrono;
using std::string;
using std::cout;
using std::endl;
 
int main(int argc, char *argv[]) {
    unsigned int results[10] = {};
    float sum = 0;

    for (int i = 0; i < 10; i++) {
        unsigned int start = duration_cast<milliseconds>(
            system_clock::now().time_since_epoch()
        ).count();

        for (int j = 0; j < 1000000; j++) {
            std::hash<std::string>{}("hello world");
        }

        unsigned int end = std::chrono::duration_cast<milliseconds>(
            system_clock::now().time_since_epoch()
        ).count();

        results[i] = end - start;
    }

    for (int i = 0; i < 10; i++) {
        sum = sum + results[i];
    }

    sum = sum / 10;
       
    cout << sum;

    return 0;
}