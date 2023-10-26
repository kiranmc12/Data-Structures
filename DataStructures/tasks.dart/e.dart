import 'dart:io';

class Node {
  int? data;
  Node? next;

  Node(this.data);
}

class Linke {
  Node? head;
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

  void insertafter(int data, int target) {
    Node newNode = Node(data);

    if (head == null) {
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

  void display() {
    if (head == null) {
      print("Empty");
      return;
    }
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  Linke obj = Linke();
  obj.insertfront(1);
  obj.insertfront(6);
  obj.insertfront(8);
  obj.insertfront(7);
  obj.insertfront(9);
  obj.insertfront(72);
  obj.insertfront(10);
  obj.display();
  print("fsdfsgyg");

  obj.insertafter(1, 72);
  obj.display();
}
