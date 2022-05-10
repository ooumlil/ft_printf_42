NAME = libftprintf.a

CC = gcc

CFLAGS = -Wall -Wextra -Werror

RM = rm -rf

LIB = ar rcs

INC = ft_printf.h

SOURCES = ft_tools1.c \
		  ft_tools2.c \
		  ft_printf.c

OBJECTS = $(SOURCES:.c=.o)

all : $(NAME)
$(NAME) : $(OBJECTS) $(INC)
	$(LIB) $(NAME) $(OBJECTS)

clean :
	$(RM) $(OBJECTS)

fclean : clean
	$(RM) $(NAME)

re : fclean all
