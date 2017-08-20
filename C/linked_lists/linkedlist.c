#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "linkedlist.h"
#include "node.h"

List* create_list(const char *name) {
	List *list = malloc(sizeof(List));
	if (list != NULL) {
		char *namer;
		if (name != NULL) {
			namer = malloc(strlen(name)+1);
			if (namer != NULL) {
				list->name = strcpy(namer, name);
			}
			else {
				free(namer);
				list->name = NULL;
			}
		}
		else {
			list->name = NULL;
		}
		list->head = NULL;
		return list;
	} else {
		free(list);
		return NULL;
	}
}

void add_to_list(List *list, const char *name) {
	if (list != NULL && name != NULL) {
		Node *insert = malloc(sizeof(Node));
		if (insert != NULL) {
			char *namer = malloc(strlen(name)+1);
			if (namer != NULL) {
				insert->name = strcpy(namer, name);
			}
			else {
				free(namer);
				insert->name = NULL;
			}
			insert->next = NULL;
			if (list->head == NULL) {
				list->head = insert;
			}
			else {
				Node *curr = list->head;
				while (curr != NULL && curr->next != NULL) {
					curr = curr->next;
				}
				curr->next = insert;
			}
		}
		else {
			free(insert);
			list->head = NULL;
		}
	}
}
