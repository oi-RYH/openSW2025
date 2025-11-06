./bin/myapp: ./obj/main.o ./obj/func1.o ./obj/func2.o
	gcc -o $@ $^

./obj/%.o: ./src/%.c
	gcc -o $@ -c $< -I./include

clean:
	rm ./bin/*
	rm ./obj/*