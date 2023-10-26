int sumOfArray(List<int> arr, int size) {
  if (size==0) {
    return 0;
  } else {
    int result= arr[size-1] + sumOfArray(arr, size-1);
    return result;
  }
}

void main() {
  List<int> myArray = [1, 2, 3, 4, 5];
  int result = sumOfArray(myArray, myArray.length);
  print("The sum of the array is: $result");
}
