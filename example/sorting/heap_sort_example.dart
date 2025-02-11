import 'package:algokit/algokit.dart';

void main() {
  // Example with integers
  print('Sorting integers:');
  final numbers = [64, 34, 25, 12, 22, 11, 90];
  print('Original list: $numbers');
  final sortedNumbers = heapSort<num>(numbers);
  print('Sorted list: $sortedNumbers');
  print('');

  // Example with floating-point numbers
  print('Sorting floating-point numbers:');
  final doubles = [3.14, 1.41, 2.71, 0.58, 1.73, 2.24];
  print('Original list: $doubles');
  final sortedDoubles = heapSort<num>(doubles);
  print('Sorted list: $sortedDoubles');
  print('');

  // Example with strings
  print('Sorting strings:');
  final words = ['banana', 'apple', 'orange', 'grape', 'kiwi'];
  print('Original list: $words');
  final sortedWords = heapSort(words);
  print('Sorted list: $sortedWords');
  print('');

  // Example with large dataset
  print('Sorting large dataset:');
  final largeList = List.generate(20, (i) => (20 - i) * 3);
  print('Original list: $largeList');
  final sortedLargeList = heapSort<num>(largeList);
  print('Sorted list: $sortedLargeList');
  print('');

  // Example with duplicate elements
  print('Sorting list with duplicates:');
  final duplicates = [5, 2, 8, 5, 1, 9, 2, 8, 1, 3];
  print('Original list: $duplicates');
  final sortedDuplicates = heapSort<num>(duplicates);
  print('Sorted list: $sortedDuplicates');
}
