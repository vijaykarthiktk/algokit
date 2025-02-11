/// Implementation of Selection Sort algorithm
/// Time Complexity: O(n²)
/// Space Complexity: O(1)
List<T> selectionSort<T extends Comparable<T>>(List<T> list) {
  final length = list.length;
  final result = List<T>.from(list);

  for (var i = 0; i < length - 1; i++) {
    var minIndex = i;

    for (var j = i + 1; j < length; j++) {
      if (result[j].compareTo(result[minIndex]) < 0) {
        minIndex = j;
      }
    }

    if (minIndex != i) {
      final temp = result[i];
      result[i] = result[minIndex];
      result[minIndex] = temp;
    }
  }

  return result;
}
