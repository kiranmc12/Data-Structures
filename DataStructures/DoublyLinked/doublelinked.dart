class Node {
  int data;
  Node? previous;
  Node? next;

  Node(this.data);
}

class DoublyLinkedList {
  Node? head;

  void insertAtBeginning(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      newNode.next = head;
      head!.previous = newNode;
      head = newNode;
    }
  }

  void insertAtEnd(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      Node? current = head;
      while (current!.next != null) {
        current = current.next;
      }
      current.next = newNode;
      newNode.previous = current;
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
      newNode.previous = null;
      head = newNode;
      return;
    }

    Node? current = head;
    while (current != null) {
      if (current.data == target) {
        newNode.next = current.next;
        newNode.previous = current;
        current.next = newNode;
        current.next!.previous = newNode;
        return;
      }
      current = current.next;
    }
  }

  void insertbefore(int data, int target) {
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
    while (current!.next != null) {
      if (current.next!.data == target) {
        newNode.next = current.next;
        newNode.previous = current;
        current.next = newNode;
        current.next!.previous = newNode;
        return;
      }
      current = current.next;
    }
  }

  void traverseBackward() {
    if (head == null) {
      print("Doubly linked list is empty.");
      return;
    }

    Node? current = head;
           
    while (current != null) {
      print(current.data);
      current = current.previous;
    }
  }

  void deleteAtBeginning() {
    if (head == null) {
      print("Doubly linked list is empty. Nothing to delete.");
      return;
    }

    head = head!.next;
    head!.previous = null;
  }

  void deleteAtEnd() {
    if (head == null) {
      print("Doubly linked list is empty. Nothing to delete.");
      return;
    }
    Node? current = head;
    while (current!.next == null) {
      current = current.next;
    }
    current.previous?.next = null;
  }

  void deleteany(int value) {
    if (head == null) {
      print("Doubly linked list is empty. Nothing to delete.");
      return;
    }

    if (head!.data == value) {
      head = head!.next;
      head!.previous = null;
      return;
    }

    Node? current = head;
    while (current != null && current.data != value) {
      current = current.next;
    }

    if (current == null) {
      print("Node with value $value not found.");
      return;
    }

    if (current.previous != null) {
      current.previous!.next = current.next;
    }
  }
}

void main() {
  DoublyLinkedList obj = DoublyLinkedList();
  obj.insertAtEnd(1);
  obj.insertAtEnd(3);
  obj.insertAtEnd(4);
  print("Reversed List ");

  obj.traverseBackward();
}
