import 'dart:io';
class Node {
  int data;
  Node? next;
  Node(this.data);
}
class Linkedlist {
  Node? head;
  Node ? tail;

  //insert front
  void insertfront(int data) {
    Node newnode = Node(data);
    newnode.next = head;
    head = newnode;
  }
   //insert back
  void insertback(int data) {
    Node newnode = Node(data);

    if (head == null) {
      head = newnode;
    } else {
      Node? temp = head;
      while (temp!.next != null) {
        temp = temp.next;
      }
      temp.next = newnode;
    }
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

  //largest


  int findlargest()
  {
      if (head == null) {
      print("Empty Linked List");
    }

    int largest = head!.data;
    Node? current = head!.next;

    while (current != null) {
      if (current.data > largest) {
        largest = current.data;
      }
      current = current.next;
    }

    return largest;
  
}

  


 
  //insert before

  void insertBefore(int data, int target) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
      return;
    }

    if (head!.data == target) {
      newNode.next = head;
      head = newNode;
      return;
    }

    Node? temp = head;
    while (temp!.next != null) {
      if (temp.next?.data == target) {
        newNode.next = temp.next;
        temp.next = newNode;
        return;
      }
      temp = temp.next;
    }
  }
  //insert after

  void insertafter(int data, int target) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
      return;
    }

  
    Node? temp = head;
    while (temp!.data != null) {
      if (temp.data == target) {
        newNode.next = temp.next;
        temp.next = newNode;
        return;
      }
      temp = temp.next;
    }
  }
//del front
  void deletefront() {
    if (head == null) {
      print("The Linkedlist is empty");
    } else {
      head = head!.next;
    }
  }

  //middle

Node? findMiddleElement() {
    

  if (head == null) {
    return null; // Empty linked list
  }

  Node? slowPointer = head;
  Node? fastPointer = head;
  

  while (fastPointer != null && fastPointer.next != null) {
   
    slowPointer = slowPointer!.next;
    fastPointer = fastPointer.next!.next;
  }
 
  return slowPointer;
}

int sumofmiddle()
{
  if(head==null)
  {
   print("Empty element");
  }
  Node?a=head;
  Node? b=head;
  Node? prev;

  while(a!.next!=null&&b!.next!=null)
  {
     prev=a;
     a=a.next;
     b=b.next!.next;
  }
    var sum=prev!.data+a.data+a.next!.data;
    return sum;

}
//revrese

void reverse()
{
  Node? prev=null;
  Node? current=head;
  Node? next;

  while(current!=null)
  {
    next=current.next;
    current.next=prev;
    prev=current;
    current=next;

  }
  head=prev;
}


  //delback

  void deleteback() {
    if (head == null) {
      print("The Linkedlist is empty");
      return;
    }
    if (head!.next == null) {
      head = null;
      return;
    }
        Node? current = head;
        Node? prev;

    while (current!.next!.next != null)
     {
    
      current=current.next;
    }
    current.next=null;
  }

  //del ANY VALUE

  void delAny(int value) {
    if (head == null) {
      print("The Linkedlist is empty");
      return;
    }
    if (head!.data == value) {
      head!.next = head;
      return;
    }
    Node? current = head;

    while (current!.next != null) {
      if (current.next!.data == value) {
        current.next = current.next!.next;
        return;
      } 
      current = current.next;
    }
  }
  void sorting()
  {
    if(head==null||head!.next==null)
    return null;

    Node? current=head;
    while(current!.next!=null)
    {
      Node? temp=current.next;
      while(temp!=null)
      {
        if(current.data>temp.data)

        {
          int tmp=current.data;
          current.data=temp.data;
          temp.data=tmp;
        }
        temp=temp.next;
        
      }
      current=current.next;
    }
  }

  void duplicate()
  {
    if(head==null)
    {
      print("Empty");
    }
    Node? current=head;
    while(current!=null)
    {
      Node? temp=current;
      while(temp!.next!=null)
      {
        if(current.data==temp.next!.data)
        {
          temp.next=temp.next!.next;
        }
        else{
          temp=temp.next;
        }
      }
      current=current.next;
    }
  }



  //DISPLAY

  void display() {
    if (head == null) {
      print("Empty Linked List");
    }
    Node? temp = head;
    while (temp != null) {
       
        print(temp.data);
      
      temp = temp.next;
    }
  }
}

void main() {
  Linkedlist obj = Linkedlist();
  for(int i=10;i>1;i--)
  {
    obj.insertback(i);
  }
  obj.insertback(6);
    obj.insertback(1);

  obj.insertback(3);
  obj.duplicate();


  obj.display();

}
