class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList<T> {
  Node? head;

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

    Node? current = head;
    while (current?.next != null) {
      if (current!.next!.data == target) {
        newNode.next = current.next;
        current.next = newNode;
        return;
      }
      current = current.next;
    }
  }
  
  void insertafter(int data, int target) {
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

    Node? current = head;
    while (current != null) {
      if (current.data == target) {
        newNode.next = current.next;
        current.next = newNode;
        return;
      }
      current = current.next;
    }
  }
  void insertAtBeginning(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void display() {
    if (head == null) { 
      print("Linked list is empty.");
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
  LinkedList<int> linkedList = LinkedList<int>();
  linkedList.insertAtBeginning(10);
  linkedList.insertAtBeginning(20);
    linkedList.insertAtBeginning(30);
    print('list before');
    linkedList.display();


  linkedList.insertafter(5, 10); 
  print("list after");// Insert 5 before 10
  // linkedList.insertBefore(15, 20); // Insert 15 before 20

  linkedList.display();
}
