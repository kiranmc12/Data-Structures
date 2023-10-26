void main() {
  List<int> numbers = [10,20,3,40,50,69];
  int sum = 0;

  for (int number in numbers) {
    if (number >= 10 && number < 100) {
      sum += number;
    }
  }

  print('Sum of two-digit numbers: $sum');
}
