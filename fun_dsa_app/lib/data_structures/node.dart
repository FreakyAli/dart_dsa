class Node<T extends Object> {
  late T value;
  late Node<T>? next;

  Node({required this.next, required this.value});
}
