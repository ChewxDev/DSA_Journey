
//Naive Solution
import "dart:io";


int fib(int n, int m){
  List<int> fib_arr = [0,1];
  for(int i = 2; i<=n; i++){
    int value = (fib_arr[0] + fib_arr[1]) % m;//Use the second number to get the modulo
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value;
    }
//print(fib_arr);
return fib_arr[1];
}

void main(){
  int n = int.parse(stdin.readLineSync());
  int m = int.parse(stdin.readLineSync());
  int answer= fib(n,m);
  print(answer);
}

//Fast Solution
import "dart:io";

int pisanno(int a){

  List<int> fib_arr = [0,1];
  for(int i = 1; i<=a*a; i++){
    int value = fib_arr[0] + fib_arr[1];
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value % a;
    if(fib_arr[0] == 0 && fib_arr[1] == 1){
      return i;
    }
  }
}

int fib(int n, int m){
  int period = pisanno(m);
  //print(period);
  n = n%period;
  //print(n);
  List<int> fib_arr = [0,1];
  for(int i = 2; i<=n; i++){
    int value = (fib_arr[0] + fib_arr[1]) % m;
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value;
    }
//print(fib_arr);
return fib_arr[1];
}

void main(){
  int n = int.parse(stdin.readLineSync());
  int m = int.parse(stdin.readLineSync());
  int answer= fib(n,m);
  print(answer);
}
