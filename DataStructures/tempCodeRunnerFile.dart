int binarysearch(List<int> array, int target) {
  int left = 0;
  int right = array.length - 1;

  while (left <= right) {
    int mid = left + right ~/ 2;

    if (array[mid] == target) {
      return mid;
    }

    if (array[mid] < target) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }
  return -1;
}

void main()
{
  List<int> array = [1, 3, 5, 7, 9, 11, 13, 15, 17];
  int target = 9;

  int result = binarysearch(array, target);
  if (result == -1) {
    print("Target $target is not found in the array");
} 
else {
    print("Target $target is found at index $result");
  }  
}
