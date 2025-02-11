/// Implementation of Shell Sort algorithm
/// Time Complexity: O(n log n) in best case, O(n^2) in worst case
/// Space Complexity: O(1)
List<T> shellSort<T extends Comparable<T>>(List<T> list) {
  final result = List<T>.from(list);
  final n = result.length;

  // Start with a large gap, then reduce the gap
  for (var gap = n ~/ 2; gap > 0; gap ~/= 2) {
    // Do a gapped insertion sort for this gap size
    for (var i = gap; i < n; i++) {
      var temp = result[i];
      var j = i;

      // Shift earlier gap-sorted elements up until the correct location for temp is found
      while (j >= gap && result[j - gap].compareTo(temp) > 0) {
        result[j] = result[j - gap];
        j -= gap;
      }

      // Put temp in its correct location
      result[j] = temp;
    }
  }

  return result;
}
