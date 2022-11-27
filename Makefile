NAME	= 	gnl.a

SRC		= 	get_next_line.c get_next_line_utils.c

OBJS	= 	$(SRC:.c=.o)

CC 		= 	gcc

INCLUDE = -I get_next_line.h

# CFLAGS	=	-Wall -Wextra $(INCLUDE)
CFLAGS	=	-Wall -Werror -Wextra $(INCLUDE) -D BUFFER_SIZE=42

all 	: 	$(NAME)

$(NAME)	:	$(OBJS)
	ar rcs $(NAME) $^

clean	:
	rm -f $(OBJS)

fclean	:	 clean
	rm -f $(NAME)

re		:	fclean all

.PHONY 	: 	all clean fclean re

