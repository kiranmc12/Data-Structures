int linear(List <int> array,int target,int size)
{
  if(size==0)
  return -1;

  if(array[size-1]==target)
  return size;

  return linear(array, target, size-1);
}

void main(){
  List <int> array=[1,2,3,4,5,6];
  int target=4;

  int index=linear(array, target, array.length);
  if(index == -1)
  {
     print(" not Found");
  }
  else{
    print("Element found at index $index");
  }
}