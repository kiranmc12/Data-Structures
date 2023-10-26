void main() {
  List<int> numbers = [2, 3, 1, 4, 2, 5];
  
  for (int i = 0; i < numbers.length; i++) {
    int count = numbers[i];
    
    for (int j = numbers.length - 1; j >= 0 && count > 0; j--) {
      print(numbers[j]);
      count--;
    }
  }
}
