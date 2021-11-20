//Naive Solution: Because it prints all the values leading to the fib of n
import "dart:io";

int fib(int n){
  if(n<2){
    return n;
  }

  List<int> fib_arr = [0,1];
  for(int i = 2; i<=n; i++){
    fib_arr.add(fib_arr[i-1] + fib_arr[i-2]);
  }
  print(fib_arr);
  return fib_arr[n];
}

void main(){
  int answer = fib(int.parse(stdin.readLineSync()));
  print(answer);
  
}

//Fast Solution: Only prints the fib ad the ekement before it
import "dart:io";

int fib(int n){
  if(n<2){ // Since fibonacci of 0 = 0 and fib 1 =1
    return n; // We'll return the number
  }

  List fib_arr = [0, 1]; //Basically Stating the same comment from earlier index 0 is fib 0 and index 1 is fib 1
  for(int i = 2; i<=n; i++){ //starting the for loop from 2 to the fib we want to stop
    int value = fib_arr[0] + fib_arr[1]; //Expression for finding ther fib
    fib_arr[0] = fib_arr[1]; //Swapping indexes
    fib_arr[1] = value; //Same as previous
    //fib_arr.add(n);
  }
  print(fib_arr);
  return fib_arr[1];

}

void main(){
  int answer = fib(int.parse(stdin.readLineSync()));
  print(answer);
}
