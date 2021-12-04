CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -std=gnu89
NAME = binary_tree
FILES = *.c

all: $(FILES)
	$(CC) $(CFLAGS) $(FILES) -o $(NAME)

