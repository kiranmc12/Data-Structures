import 'dart:io';

class Node {
  int? data;
  Node? next;

  Node(this.data);
}
class LinkedList {
  Node? head;
  Node? tail;

  void insertfront(int data) {
    Node newnode = Node(data);

    if (head == null) {
      head = newnode;
      return;
    } else {
      newnode.next = head;
      head = newnode;
    }
  }
 Node? middle()
  {
    if(head==null)
    {
      return null; 
    }
      Node? a=head;
      Node? b=head;

      while(b!.next!=null&&b.next!.next!=null)
      {
        a=a!.next;
        b=b.next!.next;
      }
      return a;
  }
bool isPrime(int number) {
  int flag=0;
  for(int i=2;i<number;i++)
  {
    if(number%i==0)
    {
      flag=1;
      break;
    }
  }
  if(flag==0)
  {
    return true;
  }
  return false;
  }

  int? largest()
  {
   int? max=head!.data;
   Node? current=head!.next;
   

   while(current!=null){
    if(current.data!>max!)
    {
      max=current.data;
    }
    current=current.next;


   }
   return max;
  }

  int? secondlargest()
  {
    
  
  int? m1=head!.data;
   int? m2=head!.next!.data;
   Node? current=head!.next;

     while(current!=null)
     {
      if(current.data!>m1!)
      {
        m2=m1;
        m1=current.data;
      }
      else if(current.data!<m1 && current.data!>m2!)
      {
        m2=current.data;
      }
      current=current.next;

     }
     return m2;
    
  }


  void deleteany(int target)
  {
    if(head==null)
    {
      print("Empty linked list");
      return;
    }
    if(head!.data==target)
    {
      head!.next=head;
      return;
    }
    Node? current=head;
    while(current!.next!=null)
    {
      if(current.next!.data==target)
      {
        current.next=current.next!.next;
        return;
      }
      current=current.next;  
    }
  }
   void display() {
    if (head == null) {
      print("Empty");
      return;
    }
    Node? current = head;
    while (current != null) {
      if(isPrime(current.data!))
      {
         print(current.data);

      }
      current = current.next;
    }
  }
}
void main() {
  LinkedList obj = LinkedList();
  obj.insertfront(105);
  obj.insertfront(200);
  obj.insertfront(8);
  obj.insertfront(7);
  obj.insertfront(9);
  obj.insertfront(72);
  obj.insertfront(10);
  obj.insertfront(100);

  int? a=obj.secondlargest();
  print(a);
 

 
}
