#include <string.h>
#include <stdlib.h>
#include <math.h>

#include "babylonian_converter.h"

int babylonian_to_decimal(char *str)
{
    int num = 0;
    int base = 60;
    int digit = 0;
    int i = 0;

    // count number of digits
    while (str[i] != '\0')
    {
        if (str[i] == ' ')
        {
            digit++;
        }
        i++;
    }

    // convert to decimal
    i = 0;
    while (str[i] != '\0')
    {

        if (str[i] == 'Y')
        {
            num += 1 * pow(base, digit);
        }
        else if (str[i] == '<')
        {
            num += 10 * pow(base, digit);
        }
        else if (str[i] == ' ')
        {
            digit--;
        }
        i++;
    }
    return num;
}

char *decimal_to_babylonian(int num)
{
    int base = 60;
    int digit = 0;
    int i = 0;
    int temp = num;
    char *digit_str = malloc(1);
    *digit_str = '\0';
    char *str = malloc(1);
    *str = '\0';

    // count number of babylonian digits
    while (temp != 0)
    {
        temp /= base;
        digit++;
    }

    // convert to babylonian
    for (i = 0; i < digit; i++)
    {
        int rem = num % base;
        num /= base;

        // Add space between each digit
        if (i < digit - 1)
        {
            digit_str = realloc(digit_str, strlen(digit_str) + 2);
            strcat(digit_str, " ");
        }

        // Add 10s
        for (int j = 0; j < rem / 10; j++)
        {
            digit_str = realloc(digit_str, strlen(digit_str) + 2);
            strcat(digit_str, "<");
        }

        // Add 1s
        for (int j = 0; j < rem % 10; j++)
        {
            digit_str = realloc(digit_str, strlen(digit_str) + 2);
            strcat(digit_str, "Y");
        }

        // Since we are adding digits from least significant to most significant,
        // we need to reorder the digits in the output string
        int j = 0;
        while (str[j] != ' ' && str[j] != '\0')
        {
            j++;
        }
        str = realloc(str, strlen(str) + strlen(digit_str) + 1);
        memmove(str + j + strlen(digit_str), str + j, strlen(str) - j + 1); // Copy existing digits to the right
        memcpy(str + j, digit_str, strlen(digit_str));                      // Insert new digit on the left
        *digit_str = '\0';
    }

    return str;
}