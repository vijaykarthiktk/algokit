import 'package:algorithms/algorithms.dart';

void main() {
  print('Quick Sort Examples\n');

  // Example with numbers
  final numbers = [38, 27, 43, 3, 9, 82, 10];
  print('Numbers before sorting: $numbers');
  print('Numbers after sorting: ${quickSort<num>(numbers.toList())}');

  // Example with strings
  final strings = ['mango', 'pear', 'apple', 'orange', 'kiwi'];
  print('\nStrings before sorting: $strings');
  print('Strings after sorting: ${quickSort<String>(strings.toList())}');

  // Example with edge cases
  final emptyList = <int>[];
  final singleElement = [42];
  final twoElements = [2, 1];

  print('\nEdge Cases:');
  print('Empty list sorted: ${quickSort<num>(emptyList)}');
  print('Single element sorted: ${quickSort<num>(singleElement)}');
  print('Two elements sorted: ${quickSort<num>(twoElements)}');
}
