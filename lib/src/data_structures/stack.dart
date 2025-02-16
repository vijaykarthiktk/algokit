/// A generic Stack implementation that follows Last-In-First-Out (LIFO) principle.
class Stack<T> {
  final List<T> _items = [];

  /// Returns true if the stack is empty, false otherwise.
  bool get isEmpty => _items.isEmpty;

  /// Returns the number of items in the stack.
  int get length => _items.length;

  /// Adds an item to the top of the stack.
  void push(T item) {
    _items.add(item);
  }

  /// Removes and returns the top item from the stack.
  /// Throws [StateError] if the stack is empty.
  T pop() {
    if (isEmpty) {
      throw StateError('Cannot pop from an empty stack');
    }
    return _items.removeLast();
  }

  /// Returns the top item from the stack without removing it.
  /// Throws [StateError] if the stack is empty.
  T peek() {
    if (isEmpty) {
      throw StateError('Cannot peek an empty stack');
    }
    return _items.last;
  }

  /// Removes all items from the stack.
  void clear() {
    _items.clear();
  }

  @override
  String toString() {
    return _items.toString();
  }
}
