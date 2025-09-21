#include <iostream>
using namespace std;

int main() {
    int n;
    
    cout << "Enter height n: ";
    cin >> n;
    
    if (n <= 0) {
        cout << "Height must be positive" << endl;
        return 1;
    }
    
    for (int i = 1; i <= n; i++) {
        // Print spaces
        for (int j = 0; j < n - i; j++) {
            cout << " ";
        }
        // Print stars
        for (int j = 0; j < 2 * i - 1; j++) {
            cout << "*";
        }
        cout << endl;
    }
    
    return 0;
}