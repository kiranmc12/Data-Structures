void printarray(List<int> array,index)
{
  if(index < array.length)
  {
    if(array[index] %2 ==1)
    print(array[index]);
    printarray(array, index+1);
}
}
void main()
{
  List <int> array=[1,2,3,4,5,6,7,8,9];
  printarray(array, 0);
}