class Node {
  int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void deleteNode(int value) {
    if (head == null) {
      print("Linked list is empty. Nothing to delete.");
      return;
    }

    if (head!.data == value) {
      head = head!.next;
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

    print("Node with value $value not found in the linked list.");
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

  // Adding elements to the linked list
  linkedList.head = Node(10);
  Node second = Node(20);
  Node third = Node(30);

  linkedList.head!.next = second;
  second.next = third;
  linkedList.display(); 
  

  linkedList.deleteNode(20); // Delete node with value 20

  linkedList.display(); // Display the list after deletion
}
