import "dart:io";

int fib(int n){
  if(n<2){
    return n;
  }

  List fib_arr = [0, 1];
  for(int i = 2; i<=n; i++){
    int value = fib_arr[0] + fib_arr[1];
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value;
  }
  print(fib_arr);
  return fib_arr[1] % 10; //Adding modulo 10 gets the last digit of the last number in the fibonacci sequence

}

void main(){
  int answer = fib(int.parse(stdin.readLineSync()!));
  print(answer);
}
