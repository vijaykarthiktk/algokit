import 'package:algokit/algokit.dart';

void main() {
  // Example list to be sorted
  final list = [64, 34, 25, 12, 22, 11, 90];

  print('Original list: $list');

  // Apply Shell Sort
  final sortedList = shellSort<num>(list);

  print('Sorted list: $sortedList');

  // Original list remains unchanged
  print('Original list is unchanged: $list');
}
