void quickSort(List<int> a, int low, int high) {
  if (low < high) {
    int loc = partiton(a, low, high);
    quickSort(a, low, loc - 1);
    quickSort(a, loc + 1, high);
  }
}

int partiton(List<int> a, int low, int high) {
  int pivot = a[low];
  int start = low;
  int end = high;

  while (start <= end) {
    while (start <= end && a[start] <= pivot) {
      start++;
    }
    while (start <= end && a[end] >= pivot) {
      end--;
    }
    if (start <= end) {
      int temp = a[start];
      a[start] = a[end];
      a[end] = temp;
    }
  }

  int temp = a[low];
  a[low] = a[end];
  a[end] = temp;
  return end;
}

void main() {
  List<int> a = [1, 5, 6, 3, 7, 66, 8, 3];
  print(a);
  print("----------------------------");

  quickSort(a, 0, a.length - 1);
  print(a);
}
