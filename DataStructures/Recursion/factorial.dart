int fact(int num){
  if (num<=1)
  return 1;
  else
  return num*fact(num-1);
}
void main()
{ 
  int result=fact(5);
  print("The factorial is $result");
}