import "dart:io";

int getChange(int m){
  int n = 0;
  List<int> coins = [10,5,1];
  for(int coin in coins){
    n += m~/coin;
    m = m%coin;
  }
  return n;
}


void main(){
  int answer = getChange(int.parse(stdin.readLineSync()));
  print(answer);
}
