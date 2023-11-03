default: writer.c
	gcc -c -o writer.o writer.c 
	gcc -o writer writer.o
CROSS_COMPILE: writer.c
	aarch64-none-linux-gnu-gcc -c -o writer.o writer.c
	aarch64-none-linux-gnu-gcc -o writer writer.o
	file -e apptype writer > /home/zeby/Desktop/ass1_repo/assignment-1-therealmroffline/assignments/assignment2/fileresult.txt
	
clean:
	rm -f writer *.o	
