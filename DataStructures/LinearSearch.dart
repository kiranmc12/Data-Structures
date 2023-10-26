class LinearSearch {
 int linearSearch(List<int> arr, int size, int key) {
    if (size == 0) {
      return -1;
    } else if (arr[size - 1] == key) {
      return size - 1;
    }
    return linearSearch(arr, size - 1, key);
  }

 void main() {
    List<int> arr = [5, 15, 6, 9, 4];
    int key = 4;

    int index = linearSearch(arr, arr.length, key);
    if (index != -1) {
      print("The element $key is found at index $index of the given array.");
    } else {
      print("The element $key is not found.");
    }
  }
}
