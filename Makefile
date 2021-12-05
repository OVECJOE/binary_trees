CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -std=gnu89
PPRINT = binary_tree_print.c

0: $(PPRINT)
	$(CC) $(CFLAGS) $(PPRINT) 0-*.c -o 0-node

1: $(PPRINT)
	$(CC) $(CFLAGS) $(PPRINT) 1-*.c 0-*_node.c -o 1-left

2: $(PPRINT)
	$(CC) $(CFLAGS) $(PPRINT) 2-*.c 0-*_node.c -o 2-right
