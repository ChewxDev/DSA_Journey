//Naive Solution
import "dart:io";

int naiveGCD(int a, int b){
  int best = 0;
  
  for(int d =1; d<=a+b; d++){
    if(a % d ==0 && b % d == 0){
      best = d;  
    }
  }
return best;
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
  return naiveGCD(b, aPrime);
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
