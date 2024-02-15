import "package:fun_dsa_app/data_structures/node.dart";
import 'dart:math';

class Stack<T extends Object> {
  Node<T>? head;
  late num length;

  Stack() {
    this.head = null;
    this.length = 0;
  }

  void push(T item) {
    var node = item as Node<T>;
    if (this.head == null) {
      this.head = node;
      return;
    }
    node.next = this.head;
    this.head = node;
  }

  T pop() {
    this.length = max(0, this.length - 1);
    if (this.length == 0) {
      var _head = this.head;
      this.head = null;
      return _head!.value;
    }
    var head = this.head;
    this.head = head!.next;
    return head.value;
  }

  T peek() {
    return this.head!.value;
  }
}
