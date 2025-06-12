# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bertrmar <bertrmar@student.s19.be>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/09 10:53:44 by bertrmar          #+#    #+#              #
#    Updated: 2025/04/21 10:23:04 by bertrmar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = cc
INCLUDE = .
CFLAGS = -Wall -Werror -Wextra
FSRC = ft_atoi.c \
       ft_bzero.c \
       ft_calloc.c \
       ft_isalnum.c \
       ft_isalpha.c \
       ft_isascii.c \
       ft_isdigit.c \
       ft_isprint.c \
       ft_itoa.c \
       ft_memchr.c \
       ft_memcmp.c \
       ft_memcpy.c \
       ft_memmove.c \
       ft_memset.c \
       ft_putchar_fd.c \
       ft_putendl_fd.c \
       ft_putnbr_fd.c \
       ft_putstr_fd.c \
       ft_split.c \
       ft_strchr.c \
       ft_striteri.c \
       ft_strdup.c \
       ft_strjoin.c \
       ft_strlcat.c \
       ft_strlcpy.c \
       ft_strlen.c \
       ft_strmapi.c \
       ft_strncmp.c \
       ft_strnstr.c \
       ft_strrchr.c \
       ft_strtrim.c \
       ft_substr.c \
       ft_tolower.c \
       ft_toupper.c
FBONUS = ft_lstadd_back_bonus.c \
	 ft_lstadd_front_bonus.c \
	 ft_lstclear_bonus.c \
	 ft_lstdelone_bonus.c \
	 ft_lstiter_bonus.c \
	 ft_lstlast_bonus.c \
	 ft_lstmap_bonus.c \
	 ft_lstnew_bonus.c \
	 ft_lstsize_bonus.c
OBJ_FILES = $(FSRC:.c=.o)
OBJ_BONUS = $(FBONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ_FILES)
	ar rc $(NAME) $(OBJ_FILES)

bonus: $(NAME) $(OBJ_BONUS)
	ar rc $(NAME) $(OBJ_BONUS)
	
%.o: %.c
	$(CC) $(CFLAGS) -I $(INCLUDE) -c $< -o $@

clean:
	rm -rf $(OBJ_FILES) $(OBJ_BONUS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: clean fclean all bonus re
