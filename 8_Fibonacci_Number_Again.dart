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

int fib(int n){
  int period = pisanno(10);
  //print(period);
  n = n%period;
  //print(n);
  List<int> fib_arr = [0,1];
  for(int i = 2; i<=n; i++){
    int value = fib_arr[0] + fib_arr[1];
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value;
    }
//print(fib_arr);
return fib_arr[1] % 10;
}

void main(){
  int n = int.parse(stdin.readLineSync());
  int answer= fib(n);
  print(answer);
}
