class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void insertAtBeginning(int data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }
   void deleteFromBeginning() {
    if (head == null) {
      print("Linked list is empty. Nothing to delete.");
      return;
    }

    head = head!.next;
  }
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
    void reverse() {
    Node? previous = null;
    Node? current = head;                                           
    Node? next;

    while (current != null) {
      next = current.next;
      current.next = previous;
      previous = current;
      current = next;
    }

    head = previous;
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
  LinkedList linkedList = LinkedList();

  linkedList.insertAtBeginning(10);
  linkedList.insertAtBeginning(20);
  linkedList.insertAtBeginning(30);
  linkedList.insertAtBeginning(40);
  linkedList.insertAtBeginning(50);



  print("After deleting");
  linkedList.display();
  
  Node? middleNode = linkedList.findMiddleElement();
  if (middleNode != null) {
    print("Middle element: ${middleNode.data}");
  } else {
    print("The list is empty.");
  }
  
}
