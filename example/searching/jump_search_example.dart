import 'package:algokit/algokit.dart';

void main() {
  print('Jump Search Examples\n');

  // Example with numbers
  final numbers = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20];
  final targetNumber = 14;
  print('Numbers array: $numbers');
  print('Searching for: $targetNumber');
  print('Found at index: ${jumpSearch<num>(numbers, targetNumber)}');

  // Example with strings
  final strings = ['apple', 'banana', 'grape', 'kiwi', 'orange'];
  final targetString = 'kiwi';
  print('\nStrings array: $strings');
  print('Searching for: $targetString');
  print('Found at index: ${jumpSearch<String>(strings, targetString)}');

  // Example with edge cases
  final emptyList = <int>[];
  final singleElement = [42];
  final notFound = 999;

  print('\nEdge Cases:');
  print('Search in empty list: ${jumpSearch<num>(emptyList, 1)}');
  print('Search in single element list: ${jumpSearch<num>(singleElement, 42)}');
  print(
      'Search for non-existent element: ${jumpSearch<num>(numbers, notFound)}');
}
