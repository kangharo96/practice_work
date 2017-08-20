#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "linkedlist.h"
#include "node.h"

int main() {
	List *list = create_list("Windows");

	if (list == NULL) {
		printf("You probably suck and need a refresher course in C.\n");
	} else {
		printf("The list's name is: %s.\n", list->name);
		add_to_list(list, "Chrome");
		if (list->head == NULL) {
			printf("You probably screwed up again.\n");
		} else {
			printf("The list has '%s' in it.\n", list->head->name);
			add_to_list(list, "Word");
			if (list->head->next == NULL) {
				printf("Yet another screw-up.\n");
			} else {
				printf("List's head's next has '%s'.\n", list->head->next->name);
			}
		}
	}

	return 0;
}
