import "dart:io";

//Solution 1
void main(){
  List<int> arr = []; //Initializing the empty List
  arr.addAll([int.parse(stdin.readLineSync()), int.parse(stdin.readLineSync())]); //Telling the useer to input two integers from the keyboard
  print(arr[0] + arr[1]); //Adding the two inputs
}


//Solution 2
int sumOfTwoDigits(int a, int b){ //Using a function with two parameters 
  return a+b; //Adding the two parameters
}

void main(){
  int result = sumOfTwoDigits(int.parse(stdin.readLineSync()), int.parse(stdin.readLineSync())); //Calling the functions and adding arguments from the keyboard
  print(result); // printing the result
}
