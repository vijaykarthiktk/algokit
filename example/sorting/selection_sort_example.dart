import 'package:algokit/algokit.dart';

void main() {
  print('Selection Sort Examples\n');

  // Example with numbers
  final numbers = [64, 34, 25, 12, 22, 11, 90];
  print('Numbers before sorting: $numbers');
  print('Numbers after sorting: ${selectionSort<num>(numbers.toList())}');

  // Example with strings
  final strings = ['banana', 'apple', 'orange', 'grape', 'kiwi'];
  print('\nStrings before sorting: $strings');
  print('Strings after sorting: ${selectionSort<String>(strings.toList())}');

  // Example with edge cases
  final emptyList = <int>[];
  final singleElement = [42];
  final twoElements = [2, 1];

  print('\nEdge Cases:');
  print('Empty list sorted: ${selectionSort<num>(emptyList)}');
  print('Single element sorted: ${selectionSort<num>(singleElement)}');
  print('Two elements sorted: ${selectionSort<num>(twoElements)}');
}
