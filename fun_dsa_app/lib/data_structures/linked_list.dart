class LinkedList<T> {
  T? _nextNode;
  T? _prevNode;
  late T _headNode;
  late T _tailNode;

  LinkedList({required T head, required T tail}) {
    this._headNode = head;
    this._tailNode = tail;
  }

  T get headNode {
    return _headNode;
  }

  T? get prevNode {
    return _prevNode;
  }

  T? get nextNode {
    return _nextNode;
  }

  T get tailNode {
    return _tailNode;
  }
}
