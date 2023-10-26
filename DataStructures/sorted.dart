class Node {
  int data;
  Node? next;

  Node(this.data);
}

Node? bubbleSort() {
Node? head;
  if (head == null || head.next == null) 
  return head;


  Node? current;
  
   while(current!.next!=null)
   {
    Node? temp=current.next;
    
   }
}

void display(Node? head) {
  Node? current = head;
  while (current != null) {
    print(current.data);
    current = current.next;
  }
}


void main() {
  Node head = Node(3);
  Node node1 = Node(1);
  Node node2 = Node(4);
  Node node3 = Node(1);
  Node node4 = Node(5);

  head.next = node1;
  node1.next = node2;
  node2.next = node3;
  node3.next = node4;

  Node? sortedList = bubbleSort();

  display(sortedList);
}
