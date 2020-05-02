#include <stdio.h>

#include "simple.h"

int main() {
    int input = 2;
    printf("Calling 'entrypoint' with %d\n", input);
    int output = entrypoint(input);
    printf("Got output: %d\n", output);
}
