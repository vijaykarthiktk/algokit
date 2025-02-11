/// Implements the Quick Sort algorithm
/// Time Complexity: O(n log n) average case
/// Space Complexity: O(log n)
List<T> quickSort<T extends Comparable<T>>(List<T> list) {
  if (list.length <= 1) return list;

  final pivot = list[list.length ~/ 2];
  final less = list.where((element) => element.compareTo(pivot) < 0).toList();
  final equal = list.where((element) => element.compareTo(pivot) == 0).toList();
  final greater =
      list.where((element) => element.compareTo(pivot) > 0).toList();

  return [...quickSort(less), ...equal, ...quickSort(greater)];
}
