# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: slaanani <slaanani@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/10/11 22:44:53 by mderri            #+#    #+#              #
#    Updated: 2019/10/09 19:55:40 by slaanani         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



NAME=libft.a
CC=gcc
CFLAGS=-Wall -Wextra -Werror -I ../../includes
RM=rm -f
LDFLAGS=-L.
LDLIBS=-lft
SRC = ft_memccpy.c ft_memset.c ft_memcpy.c \
 	ft_bzero.c ft_memmove.c ft_memchr.c ft_memcmp.c	ft_strlen.c ft_strdup.c ft_strcpy.c ft_strncpy.c ft_strcat.c ft_strncat.c \
	ft_strlcat.c ft_strchr.c ft_strrchr.c ft_strstr.c ft_strnstr.c ft_strcmp.c ft_strncmp.c ft_atoi.c ft_isalpha.c ft_isdigit.c \
	ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c ft_memalloc.c ft_memdel.c ft_strnew.c ft_strdel.c ft_strclr.c \
	ft_striter.c ft_striteri.c ft_strmap.c ft_strmapi.c ft_strequ.c ft_strnequ.c ft_strsub.c ft_strjoin.c ft_strtrim.c ft_itoa.c \
	ft_putchar.c ft_putstr.c ft_putnbr.c ft_putendl.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_strsplit.c \
	ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c ft_is_character.c  ft_swap.c ft_replace.c \
	ft_recursive_factorial.c ft_recursive_power.c ft_abs.c get_next_line.c ft_atoi_base.c ft_atof.c

OBJ = $(SRC:.c=.o)
INC = ./inc/

$(NAME): $(OBJ)
		@ar rc $(NAME) $(OBJ)
		@ranlib $(NAME)

%.o: %.c
		@$(CC) -I. -o $@ -c $? $(CFLAGS)

all: $(NAME)

clean:
		@$(RM) $(OBJ)

fclean: clean
		@$(RM) $(NAME)

re: fclean all

.PHONY: clean clean
