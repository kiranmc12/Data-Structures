class Node {
  int data;
  Node? next;

  Node(this.data);
}

class Linkedlist {
  Node? head;

  void insert(int data) {
    Node newnode = Node(data);
    newnode.next = head;
    head = newnode;
  }

  void insertback(int data) {
    Node newnode = Node(data);
    if (head == null) {
      head = newnode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newnode;
    }
  }

  void insertbefore(int data, int target) {
    Node newnode = Node(data);

    if (head == null) {
      head = newnode;
      return;
    }
    Node? current = head;
    while (current!.next != null) {
      if (current.next!.data == target) {
        newnode.next = current.next;
        current.next = newnode;
        return;
      }
      current = current.next;
    }
  }

  void after(int data, int target) {
    Node newnode = Node(data);

    if (head == null) {
      head = newnode;
      return;
    }
    Node? current = head;
    while (current != null) {
      if (current.data == target) {
        newnode.next = current.next;
        current.next = newnode;
        return;
      }
      current = current.next;
    }
  }

  void delfront() {
    head = head!.next;
  }

  void delback() {
    if (head == null) {
      return null;
    } else {
      Node? current = head;
      while (current!.next!.next != null) {
        current = current.next;
      }
      current.next = null;
    }
  }

  void delany(int target){
    if(head==null)
    return null;

    if(head!.data==target){
      head=head!.next;
      return;
    }
      Node? current=head;
      while(current!.next!=null){
        if(current.next!.data==target){
          current.next=current.next!.next;
          return;
        }
        current=current.next;
      }
  }


  void display() {
    if (head == null) {
      return null;
    }
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  Linkedlist l = Linkedlist();
  for (int i = 0; i <= 5; i++) {
    l.insertback(i);
  }
  l.display();
  print("------------------------------");
  l.delany(4);
  l.display();
}
