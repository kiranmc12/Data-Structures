class Node {
  int data;
  Node? next;

  Node(this.data);
}

int findSumOfMiddleThree(Node head) {
  if (head == null || head.next == null || head.next!.next == null) {
    return 0;
  }

  Node slowPtr = head;
  Node fastPtr = head;

  while (fastPtr != null && fastPtr.next != null && fastPtr.next!.next != null) {
    fastPtr = fastPtr.next!.next!;
    slowPtr = slowPtr.next!;
  }

  int sum = 0;
  Node current = slowPtr;
  for (int i = 0; i < 3; i++) {
    sum += current.data;
    current = current.next!;
  }

  return sum;
}

void main() {
  Node head = Node(1);
  head.next = Node(2);
  head.next.next = Node(3);
  head.next!.next.next = Node(4);
  head.next.next.next.next = Node(5);

  int sum = findSumOfMiddleThree(head);
  print('Sum of middle three elements: $sum');
}
