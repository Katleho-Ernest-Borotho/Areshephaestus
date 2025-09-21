#include <iostream>
#include <string>
using namespace std;


int main() {
    int litres;
    const int Lekopokopo = 20;
    
    cout << "Enter quantity of grains in litres: ";
    cin >> litres;
    
    if (litres < 0) {
        cout << "Quantity cannot be negative." << endl;
        return 1;
    }
    
    int makokopo = litres / Lekopokopo;
    int remaining= litres % Lekopokopo;
    
    cout << litres << " litres make " << makokopo << " makokopo";
    cout << " with " << remaining << " litres remaining." << endl;
    
    return 0;
}