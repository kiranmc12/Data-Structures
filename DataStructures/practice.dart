int binarysearch(List<int> array,int low,int high,int target){
  while(low<=high){
    int mid=(low+high)~/2;

    if(array[mid]==target){

     return mid;
    }
    else if(target<=array[mid]){
      return binarysearch(array, low, mid-1, target);
    }
    else{
      return binarysearch(array, mid+1, high, target);
    }
  }
  return -1;

}

void main(){
  List<int> array=[4,5,7,4,8,9,10];
  int target=5;
  int inddex=binarysearch(array, 0, array.length, target);
  if(inddex==-1){
    print("Element not found");
  }
  else{
    print("Element Found at $inddex");
  }
  
}