_This project has been created as part of the 42 curriculum by Bertrmar._

# LIBFT &nbsp; ![C](https://img.shields.io/badge/C-00599C?style=for-the-badge&logo=c&logoColor=white)

## Table of Content

1. [Description](#description)
2. [Instructions](#instructions)
    - [Prerequisites](#prerequisites)
    - [Compilation](#compilation)
3. [Functions Included](#functions-included)
    - [Libc Functions](#libc-functions)
    - [Additional Functions](#additional-functions)
    - [Bonus Functions (Linked Lists)](#bonus-functions-linked-lists)
4. [Author](#author)

### Description

`libft` is the first individual project at 42. It consists of rewriting a set of standard C library functions, along with other utility functions that can be used later in future 42 C projects.

### Instructions

#### <u>Prerequisites</u>
- C Compiler (`cc` or `gcc`)
- Make

#### <u>Compilation</u>

To compile the library, run the Makefile in the `libft` directory:

```bash
make
```
This will generate the static library file `libft.a`.

Available Makefile rules:
- `make` : Compiles the library objects and generates `libft.a`.
- `make clean` : Removes object files (`.o`).
- `make fclean` : Removes object files and the `libft.a` archive.
- `make re` : Full recompilation.

### Functions Included

#### Libc Functions
Standard C library functions recreated with the `ft_` prefix:
- `ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint`
- `ft_strlen`, `ft_memset`, `ft_bzero`, `ft_memcpy`, `ft_memmove`
- `ft_strlcpy`, `ft_strlcat`, `ft_toupper`, `ft_tolower`
- `ft_strchr`, `ft_strrchr`, `ft_strncmp`, `ft_memchr`, `ft_memcmp`
- `ft_strnstr`, `ft_atoi`, `ft_calloc`, `ft_strdup`

#### Additional Functions
Non-standard or custom utility functions:
- `ft_substr`, `ft_strjoin`, `ft_strtrim`, `ft_split`
- `ft_itoa`, `ft_strmapi`, `ft_striteri`
- `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd`

#### Bonus Functions (Linked Lists)
Functions to manipulate linked lists:
- `ft_lstnew`, `ft_lstadd_front`, `ft_lstsize`, `ft_lstlast`
- `ft_lstadd_back`, `ft_lstdelone`, `ft_lstclear`, `ft_lstiter`, `ft_lstmap`

## Author

- **Bertrand Martin** ([github](https://github.com/bertima))
