import "dart:io";

void main(){
  List<int> arr = [];
  arr.addAll([int.parse(stdin.readLineSync()), int.parse(stdin.readLineSync())]);
  print(arr[0] + arr[1]);
}



int sumOfTwoDigits(int a, int b){
  return a+b;
}

void main(){
  int result = sumOfTwoDigits(int.parse(stdin.readLineSync()), int.parse(stdin.readLineSync()));
  print(result);
}
