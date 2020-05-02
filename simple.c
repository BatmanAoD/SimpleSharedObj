#include <stdio.h>

int entrypoint(int input) {
    int output = input * 42;
    printf("Received %d, returning %d\n", input, output);
    return output;
}
