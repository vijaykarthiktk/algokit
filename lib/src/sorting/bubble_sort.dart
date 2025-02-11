/// Implements the Bubble Sort algorithm
/// Time Complexity: O(n²)
/// Space Complexity: O(1)
List<T> bubbleSort<T extends Comparable<T>>(List<T> list) {
  final length = list.length;

  for (var i = 0; i < length - 1; i++) {
    for (var j = 0; j < length - i - 1; j++) {
      if (list[j].compareTo(list[j + 1]) > 0) {
        // Swap elements
        final temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }

  return list;
}
