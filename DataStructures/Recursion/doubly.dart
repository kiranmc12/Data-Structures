class Node {
  int? data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class Doubly {
  Node? head;

  void insertfront(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      newnode.next = head;
      head!.prev = null;
      head = newnode;
    }
  }

  void insertback(int data) {
    Node newnode = Node(data);
    if (head == null) {
      newnode.next = head;
      head!.prev = null;
      head = newnode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newnode;
      newnode.prev = current;
    }
  }

  void before(int data,int target)
  {
    Node newnode=Node(data);
    if(head==null)
    {
      newnode.next = head;
      head!.prev = null;
      head = newnode;
      return;
    }
    Node? current=head;
    while(current!.next!=null)
    {
      if(current.next!.data==target)
      {
        newnode.next=current.next;
        newnode.prev=current;
        current.next=newnode;
        current.next!.prev=newnode;
        return;
      }
      current=current.next;
    }
  }
  void after(int data,int target)
  {
    Node newnode=Node(data);
    if(head==null)
    {
      newnode.next = head;
      head!.prev = null;
      head = newnode;
      return;
    }
    Node? current=head;
    while(current!=null)
    {
      if(current.data==target)
      {
        newnode.next=current.next;
        newnode.prev=current;
        current.next=newnode;
        current.next!.prev=newnode;
        return;
      }
      current=current.next;
    }
  }
 

  void display() {
    if (head == null) {
      print("Doubly linked list is empty.");
    } else {
      Node? current = head;
      while (current != null) {
        print(current.data);
        current = current.next;
      }
    }
  }
}

void main() {
  Doubly obj = Doubly();

  obj.insertfront(1);
  obj.insertback(4);
  obj.insertback(6);
  obj.insertback(7);
  obj.insertback(8);
  obj.insertback(15);
  obj.display();
  print("after");
  obj.after(9, 8);
    obj.display();

}
