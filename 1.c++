// C++ program to find the maximum element in an array`
#include <iostream>
using namespace std;

int main() {
    int arr[] = {3, 7, 2, 9, 5};
    int n = 5;

    int maxVal = arr[0];

    for(int i = 1; i < n; i++) {
        if(arr[i] > maxVal) {
            maxVal = arr[i];
        }
    }

    cout << "Maximum element: " << maxVal;
    return 0;
}
