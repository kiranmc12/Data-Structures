import 'dart:io';

String convert(String s) {
  String newstr = "";

  for (int i = 0; i < s.length; i++) {
    int a = s.codeUnitAt(i);
    if (a >= 65 && a <= 90) {
      a = a + 32;
    } else if (a >= 97 && a <= 122) {
      a = a - 32;
    }
    newstr += String.fromCharCode(a);
  }
  return newstr;
}

void main() {
  String s = "KIran";
  String newestr = convert(s);
  print(newestr);
}
