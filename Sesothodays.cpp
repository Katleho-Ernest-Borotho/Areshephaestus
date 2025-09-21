#include <iostream>
using namespace std;

int main() {
    int dayNumber;
    
    cout << "Enter a number (1-7): ";
    cin >> dayNumber;
    
    switch (dayNumber) {
        case 1:
            cout << "Mantaha" << endl;
            break;
        case 2:
            cout << "Labobeli" << endl;
            break;
        case 3:
            cout << "Laboraro" << endl;
            break;
        case 4:
            cout << "Labone" << endl;
            break;
        case 5:
            cout << "Labohlano" << endl;
            break;
        case 6:
            cout << "Moqebelo" << endl;
            break;
        case 7:
            cout << "Sontaha" << endl;
            break;
        default:
            cout << "Please enter a number between 1 and 7." << endl;
            return 1;
    }
    
    return 0;
}