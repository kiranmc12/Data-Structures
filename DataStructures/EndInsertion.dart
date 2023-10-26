class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void end(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      Node? temp = head;
      while (temp!.next != null) {
        temp = temp.next;
      }
      temp.next = newNode;
    }
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

  linkedList.end(10);
  linkedList.end(20);
  linkedList.end(30);

  linkedList.display();
}
