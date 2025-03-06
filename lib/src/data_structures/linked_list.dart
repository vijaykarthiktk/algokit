/// Internal node class for LinkedList
class _Node<T> {
  T data;
  _Node<T>? next;

  _Node(this.data);
}

/// A generic LinkedList implementation that provides basic list operations.
class LinkedList<T> {
  _Node<T>? _head;
  int _length = 0;

  /// Returns true if the list is empty, false otherwise.
  bool get isEmpty => _head == null;

  /// Returns the number of nodes in the list.
  int get length => _length;

  /// Adds an item to the end of the list.
  void add(T item) {
    insert(_length, item);
  }

  /// Adds an item to the beginning of the list.
  void addFirst(T item) {
    insert(0, item);
  }

  /// Adds an item at the specified index.
  /// Throws [RangeError] if the index is out of bounds.
  void insert(int index, T item) {
    if (index < 0 || index > _length) {
      throw RangeError('Index out of bounds');
    }

    if (index == 0) {
      final newNode = _Node<T>(item);
      newNode.next = _head;
      _head = newNode;
      _length++;
      return;
    }

    final newNode = _Node<T>(item);
    var current = _head;
    for (var i = 0; i < index - 1; i++) {
      current = current?.next;
    }
    newNode.next = current?.next;
    current?.next = newNode;
    _length++;
  }

  /// Removes and returns the first item in the list.
  /// Throws [StateError] if the list is empty.
  T removeFirst() {
    return removeAt(0);
  }

  /// Removes and returns the last item in the list.
  /// Throws [StateError] if the list is empty.
  T removeLast() {
    return removeAt(_length - 1);
  }

  /// Removes and returns the item at the specified index.
  /// Throws [RangeError] if the index is out of bounds.
  /// Throws [StateError] if the list is empty.
  T removeAt(int index) {
    if (isEmpty) {
      throw StateError('Cannot remove from empty list');
    }
    if (index < 0 || index >= _length) {
      throw RangeError('Index out of bounds');
    }

    if (index == 0) {
      final removedItem = _head!.data;
      _head = _head?.next;
      _length--;
      return removedItem;
    }

    var current = _head;
    for (var i = 0; i < index - 1; i++) {
      current = current?.next;
    }
    final removedItem = current!.next!.data;
    current.next = current.next?.next;
    _length--;
    return removedItem;
  }

  /// Removes the first occurrence of the specified item from the list.
  /// Returns true if the item was found and removed, false otherwise.
  bool remove(T item) {
    if (isEmpty) return false;

    if (_head?.data == item) {
      removeFirst();
      return true;
    }

    var current = _head;
    while (current?.next != null) {
      if (current!.next!.data == item) {
        current.next = current.next?.next;
        _length--;
        return true;
      }
      current = current.next;
    }
    return false;
  }

  /// Returns the item at the specified index without removing it.
  /// Throws [RangeError] if the index is out of bounds.
  T elementAt(int index) {
    if (index < 0) {
      throw RangeError('Index out of bounds');
    }

    if (isEmpty) {
      throw StateError('Cannot get element from empty list');
    }

    var current = _head;
    for (var i = 0; i < index; i++) {
      current = current?.next;
    }
    return current!.data;
  }

  /// Applies the given function to each element in the list.
  void forEach(void Function(T element) action) {
    var current = _head;
    while (current != null) {
      action(current.data);
      current = current.next;
    }
  }

  /// Creates a new LinkedList with elements that are transformed by the given function.
  LinkedList<R> map<R>(R Function(T element) transform) {
    final result = LinkedList<R>();
    var current = _head;
    while (current != null) {
      result.add(transform(current.data));
      current = current.next;
    }
    return result;
  }

  /// Converts the LinkedList to a standard Dart List.
  List<T> toList() {
    final result = <T>[];
    var current = _head;
    while (current != null) {
      result.add(current.data);
      current = current.next;
    }
    return result;
  }

  /// Removes all items from the list.
  void clear() {
    _head = null;
    _length = 0;
  }

  @override
  String toString() {
    if (isEmpty) return '[]';

    final buffer = StringBuffer('[');
    var current = _head;
    while (current != null) {
      buffer.write(current.data);
      current = current.next;
      if (current != null) {
        buffer.write(', ');
      }
    }
    buffer.write(']');
    return buffer.toString();
  }

  /// Searches for an element in the list and returns its index.
  /// Returns -1 if the element is not found.
  int indexOf(T element) {
    var current = _head;
    var index = 0;
    while (current != null) {
      if (current.data == element) {
        return index;
      }
      current = current.next;
      index++;
    }
    return -1;
  }

  /// Returns the minimum value in the list.
  /// Throws [StateError] if the list is empty.
  /// If [compare] is not provided, the type T must be comparable.
  T findMin([int Function(T a, T b)? compare]) {
    if (isEmpty) {
      throw StateError('Cannot find minimum in empty list');
    }

    compare ??= (a, b) {
      if (a is Comparable && b is Comparable) {
        return (a as Comparable).compareTo(b);
      }
      throw StateError('Type must be comparable or provide a compare function');
    };

    var min = _head!.data;
    var current = _head?.next;
    while (current != null) {
      if (compare(current.data, min) < 0) {
        min = current.data;
      }
      current = current.next;
    }
    return min;
  }

  /// Returns the maximum value in the list.
  /// Throws [StateError] if the list is empty.
  /// If [compare] is not provided, the type T must be comparable.
  T findMax([int Function(T a, T b)? compare]) {
    if (isEmpty) {
      throw StateError('Cannot find maximum in empty list');
    }

    compare ??= (a, b) {
      if (a is Comparable && b is Comparable) {
        return (a as Comparable).compareTo(b);
      }
      throw StateError('Type must be comparable or provide a compare function');
    };

    var max = _head!.data;
    var current = _head?.next;
    while (current != null) {
      if (compare(current.data, max) > 0) {
        max = current.data;
      }
      current = current.next;
    }
    return max;
  }

  /// Reverses the list in-place.
  void reverse() {
    if (_length <= 1) return;

    _Node<T>? prev;
    var current = _head;
    while (current != null) {
      final next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    _head = prev;
  }

  /// Sorts the list using merge sort algorithm.
  /// If [compare] is not provided, the type T must be comparable.
  void sort([int Function(T a, T b)? compare]) {
    if (_length <= 1) return;

    compare ??= (a, b) {
      if (a is Comparable && b is Comparable) {
        return (a as Comparable).compareTo(b);
      }
      throw StateError('Type must be comparable or provide a compare function');
    };

    _head = _mergeSort(_head, compare);
  }

  _Node<T>? _mergeSort(_Node<T>? head, int Function(T a, T b) compare) {
    if (head?.next == null) return head;

    // Find middle
    var slow = head;
    var fast = head?.next;
    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }

    final middle = slow?.next;
    if (slow != null) slow.next = null;

    var left = _mergeSort(head, compare);
    var right = _mergeSort(middle, compare);

    return _merge(left, right, compare);
  }

  _Node<T>? _merge(
      _Node<T>? left, _Node<T>? right, int Function(T a, T b) compare) {
    if (left == null) return right;
    if (right == null) return left;

    _Node<T>? result;
    if (compare(left.data, right.data) <= 0) {
      result = left;
      result.next = _merge(left.next, right, compare);
    } else {
      result = right;
      result.next = _merge(left, right.next, compare);
    }

    return result;
  }

  /// Merges another list into this one.
  /// The other list remains unchanged.
  void merge(LinkedList<T> other) {
    var current = other._head;
    while (current != null) {
      add(current.data);
      current = current.next;
    }
  }

  /// Splits the list into two parts at the specified index.
  /// Returns a new list containing elements from the specified index onwards.
  /// Throws [RangeError] if the index is out of bounds.
  LinkedList<T> split(int index) {
    if (index < 0 || index >= _length) {
      throw RangeError('Index out of bounds');
    }

    final newList = LinkedList<T>();
    if (index == 0) {
      newList._head = _head;
      newList._length = _length;
      _head = null;
      _length = 0;
      return newList;
    }

    var current = _head;
    for (var i = 0; i < index - 1; i++) {
      current = current?.next;
    }

    newList._head = current?.next;
    current?.next = null;
    newList._length = _length - index;
    _length = index;

    return newList;
  }

  /// Removes duplicate elements from the list.
  /// For unsorted lists, this operation is O(n²).
  void removeDuplicates() {
    if (_length <= 1) return;

    // Using a Set to track seen values - O(n) time complexity
    final seen = <T>{};
    var current = _head;
    _Node<T>? prev;

    while (current != null) {
      if (seen.contains(current.data)) {
        // Remove duplicate node
        prev?.next = current.next;
        _length--;
      } else {
        // Add new value to seen set
        seen.add(current.data);
        prev = current;
      }
      current = current.next;
    }
  }

  /// Creates a deep copy of the list.
  LinkedList<T> clone() {
    final newList = LinkedList<T>();
    var current = _head;
    while (current != null) {
      newList.add(current.data);
      current = current.next;
    }
    return newList;
  }
}
