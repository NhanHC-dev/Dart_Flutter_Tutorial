// Given a list of numbers, write a Dart function that returns the two numbers in the list that add up to a given target value.
// If there are multiple pairs of numbers that add up to the target value, the function should return the pair with the lowest indices.

// For example, given the list [1, 2, 3, 4, 5] and a target value of 7,
// the function should return [2, 5], since 2 + 5 = 7 and
// 2 and 5 have lower indices than any other pair that adds up to 7 in the list.

import 'dart:ffi';
import 'dart:io';
void main(){
  int target = 8;
  List<int> listNumber = [1,3,4,5,2,6];
  print(checkTarget(listNumber, target));

  List<int> result = checkTarget(listNumber, target);
  print(result.toString() == [2,1].toString() ? "correct" : "incorrect");
}
List<int> checkTarget(List<int> listNumber,int target){
  listNumber.sort();
  List<List<int>> a = [];
  for(int i=0;i<listNumber.length;i++){
    for(int j=i+1;j<listNumber.length;j++){
      if(listNumber[i] + listNumber[j] == target){
        a.add([listNumber[i],listNumber[j]]);
        break;
      }
    }
  }
  return a[0];
}