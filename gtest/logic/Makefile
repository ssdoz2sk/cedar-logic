LDLIBS+=-lgtest_main -lgtest -lpthread
TESTS = run_test

OBJS= test_logic_gate.o

all: $(OBJS)
	g++ $(LDLIBS)  -o $^
	./$(OBJS)
