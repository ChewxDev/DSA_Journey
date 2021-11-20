import "dart:io";

int pisanno(int a){ //gets the pisanno period(when repetition occurs in fibonnaci)

  List<int> fib_arr = [0,1]; //The intitial values of the fib array, since the fib of 0 and 1 are 0 and 1
  for(int i = 1; i<=a*a; i++){ //We are starting at 1 since we already have elements at position 0 and 1, also we have a*a because a pissano period cannot exceed the square of the number to be used as modulo(pisanno number)
    int value = fib_arr[0] + fib_arr[1];//Calculate the value of the fib by add n-1 and n-2 in the fib array
    fib_arr[0] = fib_arr[1];// set the value of the array index 0 to be the valuie of array index 1 until the value of the fib number is gotten
    fib_arr[1] = value % a; //set the value of array index 1 to be the fib of the number, the % a to get the pisanno period
    if(fib_arr[0] == 0 && fib_arr[1] == 1){//look out for the pisanno period
      return i;//when it gets to the pisanno period return the length of the pisano period
    }
  }
}

int fib(int n){
  int period = pisanno(10); //Call the pisanno period 
  //print(period);
  n = n%period; // reduce the selected fib number to its last digits
  //print(n);
  List<int> fib_arr = [0,1];
  for(int i = 2; i<=n; i++){
    int value = fib_arr[0] + fib_arr[1];
    fib_arr[0] = fib_arr[1];
    fib_arr[1] = value;
    }
//print(fib_arr);
return fib_arr[1] % 10;//after getting the fib of the number we'll have to get the last digit
}

void main(){
  int n = int.parse(stdin.readLineSync());
  int answer= fib(n);
  print(answer);
}
