CC	= gcc

CFLAGS	+= -Wall -g -std=gnu99 -O3
LDFLAGS	+=

NAME	= jwt-crack
SRCS	= jwt-crack.c base64.c
OBJS	= $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(CC) -o $(NAME) $(OBJS) $(LDFLAGS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
