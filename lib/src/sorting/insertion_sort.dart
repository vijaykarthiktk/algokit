/// Implementation of Insertion Sort algorithm
/// Time Complexity: O(n²)
/// Space Complexity: O(1)
List<T> insertionSort<T extends Comparable<T>>(List<T> list) {
  final result = List<T>.from(list);

  for (var i = 1; i < result.length; i++) {
    var key = result[i];
    var j = i - 1;

    while (j >= 0 && result[j].compareTo(key) > 0) {
      result[j + 1] = result[j];
      j--;
    }
    result[j + 1] = key;
  }

  return result;
}
