void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  List<int> evenNumbers = numbers. ((number) => number % 2 == 0).toList();

  print(evenNumbers); 
}
