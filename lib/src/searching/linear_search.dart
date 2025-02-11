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
