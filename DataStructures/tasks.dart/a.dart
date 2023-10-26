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


   

  void insertback(int data) {
    Node newnode = Node(data);

    if (head == null) {
      head = newnode;
      return;
    }
    Node? temp = head;
    while (temp!.next != null) {
      temp = temp.next;
    }
    temp.next = newnode;
  }


  void display() {
    if (head == null) {
      print("Empty Linkedlist");
    }
    Node? temp = head;
    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}

void main() {
  LinkedList l = LinkedList();
  l.insertback(10);
  l.insertback(88);
  l.insertback(70);
  l.insertback(1);
  l.insertback(2);

  
  l.display();
  print("before sorting");
  l.bubbleSort();
  l.display();
}
