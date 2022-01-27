#include <iostream>
using namespace std;

int main()
{
    int * a[] = {new int,new int,new int,new int};
    *a[2] = 123;
    a[3][5] = 456;
    if(! a[0] ) {
        cout << * a[2] << "," << a[3][5];
    }
    return 0;
}