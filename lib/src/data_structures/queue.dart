/// A generic Queue implementation that follows First-In-First-Out (FIFO) principle.
class Queue<T> {
  final List<T> _items = [];
  final int? _capacity;

  /// Creates a new queue with an optional capacity.
  /// If capacity is provided, the queue will be limited to that size.
  Queue([this._capacity]);

  /// Returns true if the queue is empty, false otherwise.
  bool get isEmpty => _items.isEmpty;

  /// Returns true if the queue has reached its capacity, false otherwise.
  /// Always returns false if no capacity was set.
  bool get isFull => _capacity != null && _items.length >= _capacity;

  /// Returns the number of items in the queue.
  int get length => _items.length;

  /// Alias for length - returns the current size of the queue.
  int get size => length;

  /// Adds an item to the end of the queue.
  /// Throws [StateError] if the queue is full and has a capacity set.
  void enqueue(T item) {
    if (isFull) {
      throw StateError('Cannot enqueue to a full queue');
    }
    _items.add(item);
  }

  /// Removes and returns the first item from the queue.
  /// Throws [StateError] if the queue is empty.
  T dequeue() {
    if (isEmpty) {
      throw StateError('Cannot dequeue from an empty queue');
    }
    return _items.removeAt(0);
  }

  /// Returns the first item in the queue without removing it.
  /// Throws [StateError] if the queue is empty.
  T peek() {
    if (isEmpty) {
      throw StateError('Cannot peek an empty queue');
    }
    return _items.first;
  }

  /// Inserts the specified element into this queue if it is possible to do
  /// so immediately without violating capacity restrictions.
  /// Returns true if the element was added to this queue, false otherwise.
  bool offer(T item) {
    if (isFull) {
      return false;
    }
    _items.add(item);
    return true;
  }

  /// Returns a list containing all items in the queue.
  List<T> toList() {
    return List<T>.from(_items);
  }

  /// Checks if the queue contains a specific item.
  /// Returns true if the item is found, false otherwise.
  bool contains(T item) {
    return _items.contains(item);
  }

  /// Reverses the order of elements in the queue.
  void reverse() {
    int start = 0;
    int end = _items.length - 1;

    while (start < end) {
      T temp = _items[start];
      _items[start] = _items[end];
      _items[end] = temp;
      start++;
      end--;
    }
  }

  /// Returns an array containing all items in the queue.
  /// Alias for toList() method.
  List<T> toArray() {
    return toList();
  }

  /// Removes all items from the queue.
  void clear() {
    _items.clear();
  }

  @override
  String toString() {
    return _items.toString();
  }
}
