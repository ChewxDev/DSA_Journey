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

int fib_sum(int n){
print(n);
  List<int> period = pisanno(10);
  //print(period);
  int m = n~/period[0];
  int sum = period[1] * m;
   
  n = n%period[0];
  //print(n);
  if (n != 0){
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
print(sum );
return sum ;
}

int ldsa(int first, int last){
  if(first == 0){
    return fib_sum(last);// if beginniig fib number is zero, the fib of the last number is returned
  }
  return (fib_sum(last) - fib_sum(first - 1))%10;//This subtracts the begining fib number from the end fib number to get the start and end 
}


void main(){
  num answer = ldsa(num.parse(stdin.readLineSync()), num.parse(stdin.readLineSync()));
  print(answer);
}

