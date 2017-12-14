CFLAGS+=-std=c11
CFLAGS+=-Wall -Wextra -pedantic -Werror
CFLAGS+=-Wwrite-strings -fstack-usage -Wstack-usage=1024 -Wfloat-equal -Waggregate-return -Winline

.PHONY: debug profile clean
mastermind: mastermind.o -lm

debug: CFLAGS+=-g
debug: mastermind

profile: CFLAGS+=-pg
profile: LDFLAGS+=-pg
profile: mastermind

clean:	
	rm *.o *.su mastermind
