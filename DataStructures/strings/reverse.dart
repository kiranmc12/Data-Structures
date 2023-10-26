String rev(String str) {
  String revstr = "";

  for (int i = str.length - 1; i >= 0; i--) {
    revstr += str[i];
  }
  return revstr;
}

void main() {
  String og = "Hello";

  String revstr = rev(og);
  print("Reversed string = $revstr");

  if (revstr == og) {
    print("palindrome");
  } else {
    print("$revstr not palindrrome");
  }
}
