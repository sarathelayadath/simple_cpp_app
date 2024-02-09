#include <stdio.h>
#include <unistd.h>

int main() {
    // Specify the file path
    const char *file_path = "example.txt";

    // Check if the file exists
    if (access(file_path, F_OK) != -1) {
        printf("The file '%s' is present.\n", file_path);
    } else {
        printf("The file '%s' is not present.\n", file_path);
    }

    return 0;
}
