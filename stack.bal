import ballerina/io;

type Stack object {
    int size;
    int top = -1;
    int[] stackArray = [size];

    new(size){}

    function push (int value) {
        if(top < 9){
            top++;
            stackArray[top] = value;

        } else{
        io:println("Stack is full");
        }
    }

    function pop() {
        if(top != -1){
            io:println(stackArray[top]);
            top--;
        }
    }

    function isEmpty() returns boolean{
        if(top == -1) {return true;}
        else {return false;}
    }


};


function main (string... args) {
    Stack stack = new(10);
    io:println(stack.isEmpty());
    stack.push(12);
    io:println(stack.isEmpty());
    stack.pop();
    io:println(stack.isEmpty());
}