int binary(List<int> array, int target) {
  int l = 0;
  int u = array.length - 1;

  while (l <= u) {
    int mid = (l + u) ~/ 2;

    if (array[mid] == target) {
      return mid;
    }

    if (target <= array[mid]) {
      u = mid - 1;
    }
    if (target >= array[mid]) {
      l = mid + 1;
    }
  }
  return -1;
}

void main() {
  List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  int index = binary(array, 5);
  if (index == -1) {
    print("Item noy found");
  } else {
    print("Item found at $index");
  }
}
