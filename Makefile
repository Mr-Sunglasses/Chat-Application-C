CC      = gcc
# FLAGS   = -L /lib64
# LIBS    = -lusb-1.0 -l pthread
TARGETS = server client
FLAGS   = -Wall -g3 -fsanitize=address
LIBS    = -pthread

all: $(TARGETS)

$(TARGETS): %: %.c
	$(CC) $(FLAGS) $(LIBS) $< -o $@

.PHONY: clean
clean:
	rm $(TARGETS)
