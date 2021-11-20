//Naive Solution
import "dart:io";

int fib(int n, int m){
  if(n<2){
    return n;
  }

  List fib_arr = [0, 1];
  for(int i = 2; i<=n; i++){
    int value = (fib_arr[0] + fib_arr[1]) % m;//Allows the user select the modulo and ultimately the pisanno period themselves 
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value;
  }
  print(fib_arr);
  return fib_arr[1];

}

void main(){
  int answer = fib(int.parse(stdin.readLineSync()), int.parse(stdin.readLineSync()));
  print(answer);
}
