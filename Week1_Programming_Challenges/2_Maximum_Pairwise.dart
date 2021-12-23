import "dart:io";


//Solution 1
void main(){
  int n = int.parse(stdin.readLineSync()!); //Specifies The number of digits to be multiplied
  

  
  List<int> arr = []; //Creating the empty list

  List<int> max = [0,0]; //Initializing the max list


  for(int i = 0; i<n; i++){
    arr.add(int.parse(stdin.readLineSync()!)); //Populating the arr List using the limitation of the for loop to know the amount of elements to be added
    //print(arr);
    if(max[0]<arr[i]){ //To get the maximum value, check if 0 is less than the the highest value of arr
      max[1] = max[0]; //Makes max at index 1 take the value of max at index 0
      max[0] = arr[i]; //then makes max at index 0 take the value of arr at index i(the highest value);
    }else if(max[1]<arr[i]){ //To get the second highest, the value at max 0 has already been saved so if the value of max[1] takes the next highest value in arr
      max[1] = arr[i]; // Value of arr[i] is assigned to max[1]
    }
  }

  int maxProduct = max[1] * max[0]; //Multiplying the two values

  print(maxProduct);

  
}

//Stress Testing

//Solution 2
import "dart:io";
import "dart:math";

void main(){
  int n = int.parse(stdin.readLineSync()!);
  

  
  List<int> arr = [];

  List<int> max = [0,0];


  for(int i = 0; i<n; i++){
    arr.add(Random().nextInt(n) + 1);
    //print(arr);
    if(max[0]<arr[i]){
      max[1] = max[0];
      max[0] = arr[i];
    }else if(max[1]<arr[i]){
      max[1] = arr[i];
    }
  }

  int maxProduct = max[1] * max[0];

  print(max[0]);
  print(max[1]);

  print(maxProduct);

  
}


//Solution 3
import "dart:io";

void main(){
  int n = int.parse(stdin.readLineSync()!);
  

  
  List<int> arr = [];

  List<int> max = [0,0];

  if(n<2){
    print("The number of elements in the array must 2 or above");
  }else if(n>=2){

  for(int i = 0; i<n; i++){
    arr.add(int.parse(stdin.readLineSync()!));
    //print(arr);
    if(max[0]<arr[i]){
      max[1] = max[0];
      max[0] = arr[i];
    }else if(max[1]<arr[i]){
      max[1] = arr[i];
    }
  }

  int maxProduct = max[1] * max[0];

  print(maxProduct);
}
  
}
