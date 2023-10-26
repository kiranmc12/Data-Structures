String findLastWord(String inputString) {
  String currentWord = '';

  for (int i = inputString.length - 1; i >= 0; i--) {
    if (inputString[i] == ' ') {
      break;
    }
    currentWord = currentWord + inputString[i];
  }
  return currentWord;
}

void main() {
  String inputString = "Hello my name is kiran";
  String lastWord = findLastWord(inputString);
  String news = "";

  for (int i = lastWord.length-1; i >= 0; i--) {
    news += lastWord[i];
  }
  print("Last word =$news");
}
