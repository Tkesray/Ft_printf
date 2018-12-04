# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ochaar <ochaar@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/21 15:24:29 by ochaar            #+#    #+#              #
#    Updated: 2018/12/04 14:32:17 by prastoin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = ft_printf

SRCS = ft_printptr.c ft_printf.c solver.c padding.c display.c diouxx.c \
	   ft_putnnbr.c

OBJ = $(SRCS:.c=.o)

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	make -C ./libft
	gcc  -c $(SRCS)
	gcc  $(OBJ) -o $(NAME) -Llibft -lft -I libft

clean:
	/bin/rm -rf $(OBJ)
	make -C ./libft clean

fclean: clean
	/bin/rm -rf $(NAME)
	make -C ./libft fclean

re: fclean all
