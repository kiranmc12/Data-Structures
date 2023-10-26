import 'dart:io';

void secondSmallest(List<int> a)
{
  int s1,s2;
 if(a[0]<a[1])
 {
  s1=a[0];
  s2=a[1];

 }
 else{
  s1=a[1];
  s2=a[0];
 }

 for(int i=2;i<a.length;i++)
 {
  if(a[i]<s1)
  {
    s2=s1;
    s1=a[i];
   
  }
  else if(a[i]>s1&&a[i]<s2)
  s2=a[i];
 }
 print("Second smallest=$s2");
}

List<int> reverse(List<int> a)
{
  int temp=0;
  for(int i=0;i<a.length/2;i++)
  {
    temp=a[i];
    a[i]=a[a.length-1-i];
    a[a.length-1-i]=temp;
  }
  return a;
}
int average(List<int> a)
{
  int avg=0;
  int sum=0;
  int count=0;
  for(int i=0;i<a.length;i++)
  {
    sum=sum+a[i];
     count++;
  }
  avg=sum~/count;
  return avg;
}
void main()
{
  List <int> a=[1,8,3,4,8,100,6];
  secondSmallest(a);

}