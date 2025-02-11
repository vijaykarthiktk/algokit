/// Implementation of Interpolation Search algorithm
/// Time Complexity: O(log log n) for uniformly distributed data
/// Space Complexity: O(1)
int interpolationSearch<T extends num>(List<T> list, T target) {
  int low = 0;
  int high = list.length - 1;

  while (low <= high && target >= list[low] && target <= list[high]) {
    if (low == high) {
      if (list[low] == target) return low;
      return -1;
    }

    // Calculate probe position
    int pos =
        low + ((high - low) * (target - list[low]) ~/ (list[high] - list[low]));

    if (list[pos] == target) return pos;

    if (list[pos] < target) {
      low = pos + 1;
    } else {
      high = pos - 1;
    }
  }
  return -1;
}
