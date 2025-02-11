import 'package:algorithms/algorithms.dart';

void main() {
  print('Binary Search Examples\n');

  // Example with numbers
  final numbers = [1, 3, 4, 6, 8, 9, 11, 13, 14, 15, 17, 18, 19, 20];
  final targetNumber = 13;
  print('Numbers array: $numbers');
  print('Searching for: $targetNumber');
  print('Found at index: ${binarySearch<num>(numbers, targetNumber)}');

  // Example with strings
  final strings = ['apple', 'banana', 'grape', 'kiwi', 'orange'];
  final targetString = 'kiwi';
  print('\nStrings array: $strings');
  print('Searching for: $targetString');
  print('Found at index: ${binarySearch<String>(strings, targetString)}');

  // Example with edge cases
  final emptyList = <int>[];
  final singleElement = [42];
  final notFound = 999;

  print('\nEdge Cases:');
  print('Search in empty list: ${binarySearch<num>(emptyList, 1)}');
  print(
      'Search in single element list: ${binarySearch<num>(singleElement, 42)}');
  print(
      'Search for non-existent element: ${binarySearch<num>(numbers, notFound)}');
}
