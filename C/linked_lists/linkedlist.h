#if !defined(LINKEDLIST_H)
#define LINKEDLIST_H

#include "node.h"

typedef struct List {
	char *name;
	Node *head;
} List;

List* create_list(const char *name);
void add_to_list(List *list, const char *name);

#endif
