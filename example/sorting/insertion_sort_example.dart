import 'package:algokit/algokit.dart';

void main() {
  print('Insertion Sort Examples\n');

  // Example with numbers
  final numbers = [64, 34, 25, 12, 22, 11, 90];
  print('Numbers before sorting: $numbers');
  print('Numbers after sorting: ${insertionSort<num>(numbers.toList())}');

  // Example with strings
  final strings = ['banana', 'apple', 'orange', 'grape', 'kiwi'];
  print('\nStrings before sorting: $strings');
  print('Strings after sorting: ${insertionSort<String>(strings.toList())}');

  // Example with edge cases
  final emptyList = <int>[];
  final singleElement = [42];
  final twoElements = [2, 1];

  print('\nEdge Cases:');
  print('Empty list sorted: ${insertionSort<num>(emptyList)}');
  print('Single element sorted: ${insertionSort<num>(singleElement)}');
  print('Two elements sorted: ${insertionSort<num>(twoElements)}');

  // Example with duplicate elements
  final duplicates = [5, 2, 8, 5, 1, 9, 2, 8, 1, 3];
  print('\nList with duplicates before sorting: $duplicates');
  print(
      'List with duplicates after sorting: ${insertionSort<num>(duplicates)}');
}
