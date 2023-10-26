class Node {
int data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  void fromArray(List array) {
    for (var i = 0; i < array.length; i++) {
      insertAtEnd(array[i]);
    }
  }

  void insertAtEnd(int data) {
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
  List array = [1, 2, 3, 4, 5];

  LinkedList linkedList = LinkedList();
  linkedList.fromArray(array);
  print("The linkedlist");
 linkedList.display();
}
