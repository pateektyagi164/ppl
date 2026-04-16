#include <iostream>
using namespace std;

/* 
   Multi-line comment
   spanning multiple lines
*/

int main() {

    // Single-line comment
    cout << "Hello World";  // comment after code

    cout << "This is not // a comment";   // tricky case
    cout << "This is not /* comment */ either";

    /*
        Another multi-line comment
    */

    int x = 10; /* inline multi-line comment */ int y = 20;

    // Entire line comment

    cout << x + y << endl;

    /* Nested-like pattern (not real nesting in C)
       /* inner comment */
       still going */
       
    cout << "End of program";

    return 0;
}