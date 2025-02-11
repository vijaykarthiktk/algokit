import 'package:algorithms/algorithms.dart';

void main() {
  print('Linear Search Examples\n');

  // Example with numbers
  final numbers = [45, 23, 11, 89, 77, 98, 4, 28, 65, 43];
  final targetNumber = 77;
  print('Numbers array: $numbers');
  print('Searching for: $targetNumber');
  print('Found at index: ${linearSearch<num>(numbers, targetNumber)}');

  // Example with strings
  final strings = ['apple', 'banana', 'orange', 'grape', 'kiwi'];
  final targetString = 'orange';
  print('\nStrings array: $strings');
  print('Searching for: $targetString');
  print('Found at index: ${linearSearch<String>(strings, targetString)}');

  // Example with edge cases
  final emptyList = <int>[];
  final singleElement = [42];
  final notFound = 999;

  print('\nEdge Cases:');
  print('Search in empty list: ${linearSearch<int>(emptyList, 1)}');
  print(
      'Search in single element list: ${linearSearch<int>(singleElement, 42)}');
  print(
      'Search for non-existent element: ${linearSearch<int>(numbers, notFound)}');
}
