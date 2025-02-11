/// Implementation of Heap Sort algorithm
/// Time Complexity: O(n log n)
/// Space Complexity: O(1)
List<T> heapSort<T extends Comparable<T>>(List<T> list) {
  final result = List<T>.from(list);
  int n = result.length;

  // Build heap (rearrange array)
  for (int i = n ~/ 2 - 1; i >= 0; i--) {
    heapify(result, n, i);
  }

  // One by one extract an element from heap
  for (int i = n - 1; i > 0; i--) {
    // Move current root to end
    var temp = result[0];
    result[0] = result[i];
    result[i] = temp;

    // call max heapify on the reduced heap
    heapify(result, i, 0);
  }

  return result;
}

/// Helper function to heapify a subtree rooted with node i which is
/// an index in list[]. n is size of heap
void heapify<T extends Comparable<T>>(List<T> list, int n, int i) {
  int largest = i; // Initialize largest as root
  int left = 2 * i + 1; // left = 2*i + 1
  int right = 2 * i + 2; // right = 2*i + 2

  // If left child is larger than root
  if (left < n && list[left].compareTo(list[largest]) > 0) {
    largest = left;
  }

  // If right child is larger than largest so far
  if (right < n && list[right].compareTo(list[largest]) > 0) {
    largest = right;
  }

  // If largest is not root
  if (largest != i) {
    var swap = list[i];
    list[i] = list[largest];
    list[largest] = swap;

    // Recursively heapify the affected sub-tree
    heapify(list, n, largest);
  }
}
