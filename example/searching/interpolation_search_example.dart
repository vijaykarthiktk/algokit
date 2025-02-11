import 'package:algokit/algokit.dart';

void main() {
  // Example with integers
  print('Example with integers:');
  final List<int> numbers = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20];
  print('Array: $numbers');

  // Successful search
  final target1 = 14;
  final result1 = interpolationSearch(numbers, target1);
  print('Searching for $target1: Found at index $result1');

  // Unsuccessful search
  final target2 = 15;
  final result2 = interpolationSearch(numbers, target2);
  print(
      'Searching for $target2: ${result2 == -1 ? "Not found" : "Found at index $result2"}');

  // Example with doubles
  print('\nExample with doubles:');
  final List<double> decimals = [1.5, 2.5, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5, 9.5];
  print('Array: $decimals');

  // Successful search
  final target3 = 6.5;
  final result3 = interpolationSearch(decimals, target3);
  print('Searching for $target3: Found at index $result3');

  // Unsuccessful search
  final target4 = 10.5;
  final result4 = interpolationSearch(decimals, target4);
  print(
      'Searching for $target4: ${result4 == -1 ? "Not found" : "Found at index $result4"}');
}
