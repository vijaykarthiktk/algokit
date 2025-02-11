import 'package:algokit/algokit.dart';

void main() {
  print('Merge Sort Examples\n');

  // Example with numbers
  final numbers = [15, 5, 24, 8, 1, 3, 16, 10, 20];
  print('Numbers before sorting: $numbers');
  print('Numbers after sorting: ${mergeSort<num>(numbers.toList())}');

  // Example with strings
  final strings = ['watermelon', 'strawberry', 'blueberry', 'raspberry'];
  print('\nStrings before sorting: $strings');
  print('Strings after sorting: ${mergeSort<String>(strings.toList())}');

  // Example with edge cases
  final emptyList = <int>[];
  final singleElement = [42];
  final twoElements = [2, 1];

  print('\nEdge Cases:');
  print('Empty list sorted: ${mergeSort<num>(emptyList)}');
  print('Single element sorted: ${mergeSort<num>(singleElement)}');
  print('Two elements sorted: ${mergeSort<num>(twoElements)}');
}
