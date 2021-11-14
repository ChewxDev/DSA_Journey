import "dart:io";

//First we'll be using the GCD function we created earlier, so we'll have to re-write/copy it
int GcdIterative(int a, int b){

    while ( b != 0){
        int aPrime = a % b;
         a = b;
         b = aPrime;
    }
    return a;
}


//Then write out the lcm function
int lcm(int c, int d){
  return c*d~/GcdIterative(c,d); //The ~ symbol is used to take out the remainders, in a double format
}

void main(){
  int answer = lcm(int.parse(stdin.readLineSync()),int.parse(stdin.readLineSync()));
  print(answer);
}
