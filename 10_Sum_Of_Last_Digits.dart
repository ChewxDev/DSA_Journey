//Naive Solution
import "dart:io";

int fib(int n){
  if(n<2){
    return n;
  }

  List<int> fib_arr = [0, 1];

  int sum = 1;//We are setting sum to one since we're starting the for loop at 2, so we need to get the 1 at array index 1

  for(int i = 2; i<=n; i++){
    int value = (fib_arr[1] + fib_arr[0]) % 10;//Gets the last digits of the fib sequence
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value;
    sum += value;//add sum to value to get the final sum
    //fib_arr.add(n);
  }
  print(fib_arr);
  return sum % 10;//return the last digit of sum

}

void main(){
  num answer = fib(num.parse(stdin.readLineSync()));
  print(answer);
}

//Fast Solution
import "dart:io";

List<int> pisanno(int a){
  int sum = 0;
  List<int> fib_arr = [0,1];
  for(int i = 1; i<=a*a; i++){
    int value = fib_arr[0] + fib_arr[1];
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value % a;
    sum += value % a;
    if(fib_arr[0] == 0 && fib_arr[1] == 1){
      return [i, sum];
    }
  }
}

int fib(int n){
  List<int> period = pisanno(10);
  //print(period);
  int m = n~/period[0];
  int sum = period[1] * m;
   
  n = n%period[0];
  //print(n);
  if (n){
    sum += 1;
  }
  List<int> fib_arr = [0,1];
  for(int i = 2; i<=n; i++){
    int value = (fib_arr[0] + fib_arr[1]) % 10;
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value;
    sum += value;
    }
//print(fib_arr);
return sum % 10;
}

void main(){
  num answer = fib(num.parse(stdin.readLineSync()));
  print(answer);
}
