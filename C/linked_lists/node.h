#if !defined(NODE_H)
#define NODE_H

typedef struct Node {
	char *name;
	struct Node *next;
} Node;

#endif
