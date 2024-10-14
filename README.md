# ft_printf
## Because ft_putnbr() and ft_putstr() aren’t enough

![ft_printf_icon](https://github.com/Thais-Malheiros/ft_printf/blob/main/ft_printf.png)

## Description

libftprintf is a C library that implements the `ft_printf()` function, designed to mimic the behavior of the standard `printf()` function.  This project is an exercise in recreating essential functionalities `of printf()` while adhering to specific requirements.

## Prototype

`int ft_printf(const char *format, ...);`

## External Functions Allowed

• `malloc`

• `free`

• `write`

• `va_start`

• `va_arg`

• `va_copy`

• `va_end`

## Supported Conversions

• `%c: Prints a single character.`

• `%s: Prints a string (as defined by the common C convention).`

• `%p: Prints a pointer argument in hexadecimal format.`

• `%d: Prints a signed decimal (base 10) number.`

• `%i: Prints an integer in base 10.`

• `%u: Prints an unsigned decimal (base 10) number.`

• `%x: Prints a number in hexadecimal (base 16) lowercase format.`

• `%X: Prints a number in hexadecimal (base 16) uppercase format.`

• `%%: Prints a percent sign.`

## How to use this project

1) Clone the Repository

`https://github.com/Thais-Malheiros/ft_printf`

2) To compile the library, use the following command:

`make`

This will create the libftprintf.a library at the root of your repository.

You can now use the `libftprintf.a` library in your project. The `ft_printf` function can be utilized just like the standard printf function from the C library.

Example of a Main File:
```
#include "libftprintf.h"

int main(void)
{
    char *str;

    str = "Hello, World!";
    ft_printf("String: %s\n", str);
    return (0);
}
```
3) To clean the compiled files, use:

`make clean`

4) To remove all compiled files and the library, use:

`make fclean`

5) To recompile the library, use:

`make re`
