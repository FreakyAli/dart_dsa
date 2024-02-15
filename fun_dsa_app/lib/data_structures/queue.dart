import 'package:fun_dsa_app/data_structures/node.dart';

class Queue<T extends Object> {
  late num length;
  Node<T>? head;
  Node<T>? tail;

  Queue() {
    this.head = this.tail = null;
    this.length = 0;
  }

  void enQueue(T value) {
    var node = value as Node<T>;
    if (this.length == 0) {
      this.tail = null;
    }
    this.length++;
    if (this.tail == null) {
      this.tail = this.head = node;
    }
    this.tail?.next = node;
    this.tail = node;
  }

  T? deQue() {
    if (this.head == null) {
      return null;
    }
    this.length--;
    var _head = this.head;
    this.head = this.head?.next;
    return _head?.value;
  }

  T? peek() {
    return this.head?.value;
  }
}
