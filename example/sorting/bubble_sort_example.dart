import 'package:algorithms/algorithms.dart';

void main() {
  print('Bubble Sort Examples\n');

  // Example with numbers
  final numbers = [64, 34, 25, 12, 22, 11, 90];
  print('Numbers before sorting: $numbers');
  print('Numbers after sorting: ${bubbleSort<num>(numbers.toList())}');

  // Example with strings
  final strings = ['banana', 'apple', 'orange', 'grape', 'kiwi'];
  print('\nStrings before sorting: $strings');
  print('Strings after sorting: ${bubbleSort<String>(strings.toList())}');

  // Example with edge cases
  final emptyList = <int>[];
  final singleElement = [42];
  final twoElements = [2, 1];

  print('\nEdge Cases:');
  print('Empty list sorted: ${bubbleSort<num>(emptyList)}');
  print('Single element sorted: ${bubbleSort<num>(singleElement)}');
  print('Two elements sorted: ${bubbleSort<num>(twoElements)}');
}
