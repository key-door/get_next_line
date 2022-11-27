NAME	= 	gnl.a

SRC		= 	get_next_line.c get_next_line_utils.c

OBJS	= 	$(SRC:.c=.o)

# CC 		= 	gcc
CC 		= 	clang

INCLUDE = -I g./

# CFLAGS	=	-Wall -Wextra $(INCLUDE)
# CFLAGS	=	-Wall -Werror -Wextra $(INCLUDE) -D BUFFER_SIZE=42

CFLAGS	= -Wall -Wextra -Werror $(INCLUDE) -g -fsanitize=address -fsanitize=undefined -fsanitize=integer -D BUFFER_SIZE=42

all 	: 	$(NAME)

$(NAME)	:	$(OBJS)
	ar rcs $(NAME) $^

clean	:
	rm -f $(OBJS)

fclean	:	 clean
	rm -f $(NAME)

re		:	fclean all

.PHONY 	: 	all clean fclean re

