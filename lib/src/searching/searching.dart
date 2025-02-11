/// Searching algorithms implementation
library algorithms.searching;

import 'dart:math';

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

/// Implements the Linear Search algorithm
/// Time Complexity: O(n)
/// Space Complexity: O(1)
int linearSearch<T>(List<T> list, T target) {
  for (var i = 0; i < list.length; i++) {
    if (list[i] == target) {
      return i;
    }
  }
  return -1; // Element not found
}

/// Implements Jump Search algorithm
/// Time Complexity: O(√n)
/// Space Complexity: O(1)
/// Note: List must be sorted in ascending order
int jumpSearch<T extends Comparable<T>>(List<T> list, T target) {
  final n = list.length;
  if (n == 0) return -1;

  // Finding the optimal jump step size
  final step = sqrt(n.toDouble()).floor();

  // Finding the block where element is present (if it is present)
  var prev = 0;
  while (prev < n && list[prev].compareTo(target) < 0) {
    prev = min(prev + step, n);
    if (prev >= n) break;
  }

  // Doing a linear search for target in block beginning with prev
  prev = max(0, prev - step);
  while (prev < n) {
    if (list[prev].compareTo(target) == 0) {
      return prev;
    }
    prev++;
  }

  return -1; // Element not found
}
