int binarysearch(List<int> array, int low, int high, int target) {
  while (low <= high) {
    int mid = (low + high) ~/ 2;

    if (array[mid] == target) {
      return mid;
    } else if (target < array[mid]) {
      return binarysearch(array, low, mid - 1, target);
    } else {
      return binarysearch(array, mid + 1, high, target);
    }
  }
  return -1;
}

void main() {
  List<int> array = [4, 5, 7, 8, 9, 10]; // Make sure the array is sorted for binary search
  int target = 5;
  int index = binarysearch(array, 0, array.length - 1, target); // Adjusted the high parameter
  if (index == -1) {
    print("Element not found");
  } else {
    print("Element Found at $index");
  }
}
