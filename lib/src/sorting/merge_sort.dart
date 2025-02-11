/// Implements the Merge Sort algorithm
/// Time Complexity: O(n log n)
/// Space Complexity: O(n)
List<T> mergeSort<T extends Comparable<T>>(List<T> list) {
  if (list.length <= 1) return list;

  final middle = list.length ~/ 2;
  final left = list.sublist(0, middle);
  final right = list.sublist(middle);

  return merge(mergeSort(left), mergeSort(right));
}

/// Helper function for mergeSort
List<T> merge<T extends Comparable<T>>(List<T> left, List<T> right) {
  final result = <T>[];
  var leftIndex = 0;
  var rightIndex = 0;

  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex].compareTo(right[rightIndex]) <= 0) {
      result.add(left[leftIndex]);
      leftIndex++;
    } else {
      result.add(right[rightIndex]);
      rightIndex++;
    }
  }

  result.addAll(left.sublist(leftIndex));
  result.addAll(right.sublist(rightIndex));
  return result;
}
