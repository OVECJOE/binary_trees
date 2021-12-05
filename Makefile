CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic -std=gnu89
PPRINT = binary_tree_print.c
CRNODE = 0-*_node.c # Create node
INRGHT = 2-*_right.c # Insert right
INLFT = 1-*_left.c # Insert left

0: $(PPRINT)
	$(CC) $(CFLAGS) $(PPRINT) 0-*.c -o 0-node

1: $(PPRINT)
	$(CC) $(CFLAGS) $(PPRINT) 1-*.c $(CRNODE) -o 1-left

2: $(PPRINT)
	$(CC) $(CFLAGS) $(PPRINT) 2-*.c $(CRNODE) -o 2-right

3: $(PPRINT)
	$(CC) $(CFLAGS) $(PPRINT) 3-*.c $(CRNODE) $(INRGHT) -o 3-del

4: $(PPRINT)
	$(CC) $(CFLAGS) $(PPRINT) 4-*.c $(CRNODE) $(INRGHT) -o 4-leaf

5: $(PPRINT)
	$(CC) $(CFLAGS) $(PPRINT) 5-*.c $(CRNODE) $(INRGHT) -o 5-root

6: $(PPRINT)
	$(CC) $(CFLAGS) $(PPRINT) 6-*.c $(CRNODE) -o 6-pre

betty:
	echo "Enter task number: "
	@(read arg; arg="$$arg-*.c" && betty $$arg);
