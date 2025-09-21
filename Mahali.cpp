#include <iostream>
using namespace std;

int main() {
    int likhomo;
    
    cout << "Enter number of cattle: ";
    cin >> likhomo;
    
    if (likhomo < 0) {
        cout << "Number of cattle cannot be negative." << endl;
        return 1;
    }
    
    if (likhomo < 15) {
        cout << "Not enough for bohali" << endl;
    } else if (likhomo < 50) {
        cout << "Small herd" << endl;
    } else {
        cout << "Wealthy cattle owner" << endl;
    }
    
    return 0;
}