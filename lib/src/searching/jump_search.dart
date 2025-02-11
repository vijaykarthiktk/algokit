import 'dart:math';

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

  // Linear search for target in block beginning with prev
  var curr = prev;
  while (curr >= 0 && curr < n) {
    if (list[curr].compareTo(target) == 0) {
      return curr;
    }
    if (list[curr].compareTo(target) > 0) {
      break;
    }
    curr++;
  }

  return -1; // Element not found
}
