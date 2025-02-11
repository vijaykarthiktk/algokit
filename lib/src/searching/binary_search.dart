/// Implements the Binary Search algorithm
/// Time Complexity: O(log n)
/// Space Complexity: O(1)
/// Note: List must be sorted in ascending order
int binarySearch<T extends Comparable<T>>(List<T> list, T target) {
  var left = 0;
  var right = list.length - 1;

  while (left <= right) {
    final middle = left + ((right - left) ~/ 2);
    final comparison = list[middle].compareTo(target);

    if (comparison == 0) {
      return middle;
    } else if (comparison < 0) {
      left = middle + 1;
    } else {
      right = middle - 1;
    }
  }

  return -1; // Element not found
}
