# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abuchet <abuchet@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/13 13:00:33 by abuchet           #+#    #+#              #
#    Updated: 2023/06/14 12:06:19 by abuchet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap

SRCS =  main.c \
		swap.c \
		push.c \
		rotate.c \
		reverse_rotate.c \
		index.c \
		check_args.c \
		radix.c \
		simple.c \
		simple_end.c \
		t_list.c \
		utils.c \
		free_stack.c \
		print_list.c \

OBJS = ${SRCS:.c=.o}

CC = gcc
CFLAGS = -Wall -Wextra -Werror

RM = rm -rf

all: ${NAME} ${CHECK}
${NAME}: ${OBJS}
	@${MAKE} -C ./libft
	@${CC} ${CFLAGS} ${OBJS} ./libft/libft.a -o ${NAME}

clean: 
	@${MAKE} -C ./libft fclean
	@${RM} ${OBJS}

fclean: clean
	@${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re
