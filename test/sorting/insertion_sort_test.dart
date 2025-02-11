import 'package:test/test.dart';
import 'package:algokit/algokit.dart';

void main() {
  group('Insertion Sort', () {
    test('returns sorted list in ascending order', () {
      final list = [64, 34, 25, 12, 22, 11, 90];
      final originalList = List.from(list);
      final sortedList = insertionSort<num>(list);
      expect(sortedList, equals([11, 12, 22, 25, 34, 64, 90]));
      expect(list, equals(originalList),
          reason: 'Original list should remain unchanged');
    });

    test('handles already sorted list', () {
      final list = [1, 2, 3, 4, 5];
      final originalList = List.from(list);
      final sortedList = insertionSort<num>(list);
      expect(sortedList, equals([1, 2, 3, 4, 5]));
      expect(list, equals(originalList),
          reason: 'Original list should remain unchanged');
    });

    test('handles reverse sorted list', () {
      final list = [5, 4, 3, 2, 1];
      final originalList = List.from(list);
      final sortedList = insertionSort<num>(list);
      expect(sortedList, equals([1, 2, 3, 4, 5]));
      expect(list, equals(originalList),
          reason: 'Original list should remain unchanged');
    });

    test('handles empty list', () {
      final list = <int>[];
      final sortedList = insertionSort<num>(list);
      expect(sortedList, isEmpty);
      expect(list, isEmpty, reason: 'Original list should remain unchanged');
    });

    test('handles single element list', () {
      final list = [1];
      final originalList = List.from(list);
      final sortedList = insertionSort<num>(list);
      expect(sortedList, equals([1]));
      expect(list, equals(originalList),
          reason: 'Original list should remain unchanged');
    });

    test('handles list with duplicate elements', () {
      final list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];
      final originalList = List.from(list);
      final sortedList = insertionSort<num>(list);
      expect(sortedList, equals([1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]));
      expect(list, equals(originalList),
          reason: 'Original list should remain unchanged');
    });

    test('handles list with negative numbers', () {
      final list = [-5, 3, -1, 0, 7, -9, 4];
      final originalList = List.from(list);
      final sortedList = insertionSort<num>(list);
      expect(sortedList, equals([-9, -5, -1, 0, 3, 4, 7]));
      expect(list, equals(originalList),
          reason: 'Original list should remain unchanged');
    });

    test('sorts strings in alphabetical order', () {
      final list = ['banana', 'apple', 'orange', 'grape'];
      final originalList = List.from(list);
      final sortedList = insertionSort<String>(list);
      expect(sortedList, equals(['apple', 'banana', 'grape', 'orange']));
      expect(list, equals(originalList),
          reason: 'Original list should remain unchanged');
    });
  });
}
