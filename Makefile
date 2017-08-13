CFLAGS += -std=c99 -Wall -Wextra -pedantic

APP = hotline-miami-extract

all: $(APP)

$(APP): extract.o
	$(LINK.o) $< -o $@

extract.o: extract.c

clean:
	$(RM) -f $(APP) extract.o

.PHONY: all clean
