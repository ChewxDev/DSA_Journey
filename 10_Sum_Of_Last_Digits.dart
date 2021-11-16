//Naive Solution
import "dart:io";

int fib(int n){
  if(n<2){
    return n;
  }

  List<int> fib_arr = [0, 1];

  int sum = 1;

  for(int i = 2; i<=n; i++){
    int value = (fib_arr[1] + fib_arr[0]) % 10;
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value;
    sum += value;
    //fib_arr.add(n);
  }
  print(fib_arr);
  return sum % 10;

}

void main(){
  num answer = fib(num.parse(stdin.readLineSync()));
  print(answer);
}
