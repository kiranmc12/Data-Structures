int binarysearch(List<int> array,int target,int low,int high)
{
  if(low<=high)
  {
    int mid=low+high~/2;
    if(array[mid]==target)
    { 
       return mid;
    }
    else if(mid<target)
    {
      return binarysearch(array, target, mid+1, high);
    }
    else{
      return binarysearch(array, target, low, high-1);
    }
  }
  return -1;
}
void main()
{
  List<int> array=[1,2,3,4,5,6,7];
  int target=4;
  int index=binarysearch(array, target, 0, array.length-1);
  if(index==-1)
  {
    print("Element not found");
  }
  else{
    print("Elemet found at $index");
  }
}