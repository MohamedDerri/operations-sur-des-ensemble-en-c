# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mderri <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/12/26 22:13:41 by mderri            #+#    #+#              #
#    Updated: 2019/12/26 22:13:43 by mderri           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS1 = -Wextra -Wall -Werror -I /usr/local/include -I ./includes
CFLAGS2 = -L srcs/libft -lft -I ./includes -I /usr/local/include -L /usr/local/lib -lmlx -framework OpenGL -framework AppKit
NAME = ensemble

SRC =	

SRCS = $(addprefix srcs/, $(SRC))
OBJ = $(SRC:%.c=objs/%.o)
DIRECTORY = objs

all: $(NAME)

$(NAME): $(DIRECTORY) $(OBJ)
	@make -C srcs/libft
	@$(CC) -o $(NAME) $(OBJ) $(CFLAGS1) $(CFLAGS2)
	@echo "\033[0;31m ================================================================================"
	@echo "\033[0;31m|>>>>>>>>>>>>>>>>>>>>\033[0;35m{YOUR PROJECT HAS BEEN COMPILED SUCCESSFULLY}\033[0;31m<<<<<<<<<<<<<<<<<<|"
	@echo "\033[0;31m ================================================================================"

$(DIRECTORY):
	@mkdir -p objs

objs/%.o: srcs/%.c
	@gcc $(CFLAGS1) -c $< -o $@

clean:
	@rm -rf objs
	@rm -f $(OBJ)
	@make clean -C srcs/libft
	@echo "\033[0;31m ================================================================================"
	@echo "\033[0;31m|>>>>>>>>>>>>>>>>>>>>>\033[0;32m{YOUR PROJECT HAS BEEN CLEANED SUCCESSFULLY}\033[0;31m<<<<<<<<<<<<<<<<<<|"
	@echo "\033[0;31m ================================================================================"

fclean: clean
	@make fclean -C srcs/libft
	@rm -f $(NAME)

re: fclean all
.PHONY: fclean, clean, re, all, ensemble
