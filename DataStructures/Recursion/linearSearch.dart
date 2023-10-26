int linearSearch(List <int> array,int size,int target)
{
  if(size==0)
  return -1;

  if(array[size-1]==target)
  return size-1;

  return linearSearch(array, size-1, target);
}


void main(){
  List <int> array=[4,6,7,8,4,9];
  int target=7;

  int index=linearSearch(array, array.length, target);

  if(index==-1)
  {
    print("Item not found ");

  }
  else{
    print("Item found at $index" );
  }
}
