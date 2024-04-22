# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tmalheir <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/11 11:42:06 by tmalheir          #+#    #+#              #
#    Updated: 2024/01/05 12:08:39 by tmalheir         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!MANDATORY PART...............................................................

NAME := libftprintf.a

PATH_INCLUDE = ./includes/

PATH_UTILS = ./utils/

PATH_SRC = ./src/

CC = cc

CFLAGS = -Wall -Werror -Wextra -c

AR := ar -rcs

RM := rm -rf

SRCS =  ft_printf.c

UTILS =		ft_putchar_fd.c \
			ft_putnbr_fd.c \
			ft_putnbr_unsg_fd.c \
			ft_putstr_fd.c \
			ft_puthexa_low_fd.c \
			ft_puthexa_up_fd.c \
			ft_putptr_fd.c

OBJS := $(SRCS:.c=.o)

OBJS_UTILS := $(UTILS:.c=.o)

.DEFAULT_GOAL := all

all: $(NAME)

$(NAME): $(OBJS) $(OBJS_UTILS)
	@$(AR) $@ $^

%.o: $(PATH_SRC)%.c
	@$(CC) $(CFLAGS) -I $(PATH_SRC) -I $(PATH_INCLUDE) -c $< -o $@

%.o: $(PATH_UTILS)%.c
	@$(CC) $(CFLAGS) -I $(PATH_SRC) -I $(PATH_UTILS) -I $(PATH_INCLUDE) -c $< -o $@

clean:
	@$(RM) *.o

fclean: clean
	@$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus
