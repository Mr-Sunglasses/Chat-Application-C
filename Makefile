all: server client

server: server.c
	gcc -Wall -g3 -fsanitize=address -pthread server.c -o server

client: client.c
	gcc -Wall -g3 -fsanitize=address -pthread client.c -o client

clean:
	rm server client

compile:
	gcc -Wall -g3 -fsanitize=address -pthread server.c -o server
	gcc -Wall -g3 -fsanitize=address -pthread client.c -o client

FLAGS    = -L /lib64
LIBS     = -lusb-1.0 -l pthread
