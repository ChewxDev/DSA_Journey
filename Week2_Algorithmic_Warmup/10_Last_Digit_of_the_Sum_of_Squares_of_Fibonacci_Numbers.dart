import "dart:io";
import "dart:math";

List<int> pisanno(int a){
  int sum = 0;
  List<int> fib_arr = [0,1];
  for(int i = 1; i<=a*a; i++){
    int value = fib_arr[0] + fib_arr[1];
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value % a;
    sum += pow(value % a,2);//Squares each value of the fib number
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
    sum += value * value;//Same thiing done here
    }
//print(fib_arr);
//print(sum);
return sum % 10 ;
}

void main(){
  num answer = fib_sum(num.parse(stdin.readLineSync()));
  print(answer);
}
