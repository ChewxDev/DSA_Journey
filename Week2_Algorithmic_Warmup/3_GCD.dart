//Naive Solution
import "dart:io";

int naiveGCD(int a, int b){
  int best = 0; // saves the value for the greatest common divisor 
  
  for(int d =1; d<=a+b; d++){ //Initializing the divisor, make sure it doesn't exceed the limit of the sum of the numbers, then run the iteration
    if(a % d ==0 && b % d == 0){// if the modulo of the numbers to the divisor equals 0
      best = d;  //save the value of the divior to best, then run again till you get the greatest
    }
  }
return best;//return the best
}


void main(){
  int answer = naiveGCD(int.parse(stdin.readLineSync()),int.parse(stdin.readLineSync()));
  print(answer);
}



//Fast Solutio Recursive
import "dart:io";

int fastGCD(int a, int b){
  if(b == 0){
    return a;
  }
  int aPrime = a % b;
  return naiveGCD(b, aPrime);//returns the value of a as be and the value of b as aPrime and iterates until b equals 0
}


void main(){
  int answer = fastGCD(int.parse(stdin.readLineSync()),int.parse(stdin.readLineSync()));
  print(answer);
}


//Fast Solution Iterative
import "dart:io";

int GcdIterative(int a, int b){

    while ( b != 0){
        int aPrime = a % b;
         a = b;
         b = aPrime
    }
    return a;
}

void main(){
  int answer = GcdIterative(int.parse(stdin.readLineSync()),int.parse(stdin.readLineSync()));
  print(answer);
}
