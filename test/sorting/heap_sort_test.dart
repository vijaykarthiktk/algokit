import 'package:test/test.dart';
import 'package:algokit/algokit.dart';

void main() {
  group('Heap Sort', () {
    test('should sort list in ascending order', () {
      final list = [64, 34, 25, 12, 22, 11, 90];
      final sorted = heapSort<num>(list);
      expect(sorted, equals([11, 12, 22, 25, 34, 64, 90]));
    });

    test('should handle already sorted list', () {
      final list = [1, 2, 3, 4, 5];
      final sorted = heapSort<num>(list);
      expect(sorted, equals([1, 2, 3, 4, 5]));
    });

    test('should handle reverse sorted list', () {
      final list = [5, 4, 3, 2, 1];
      final sorted = heapSort<num>(list);
      expect(sorted, equals([1, 2, 3, 4, 5]));
    });

    test('should handle empty list', () {
      final list = <int>[];
      final sorted = heapSort<num>(list);
      expect(sorted, isEmpty);
    });

    test('should handle single element list', () {
      final list = [1];
      final sorted = heapSort<num>(list);
      expect(sorted, equals([1]));
    });

    test('should handle list with duplicate elements', () {
      final list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5];
      final sorted = heapSort<num>(list);
      expect(sorted, equals([1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]));
    });

    test('should handle list with negative numbers', () {
      final list = [-5, 3, -1, 0, 7, -9, 4];
      final sorted = heapSort<num>(list);
      expect(sorted, equals([-9, -5, -1, 0, 3, 4, 7]));
    });

    test('should sort strings', () {
      final list = ['banana', 'apple', 'orange', 'grape'];
      final sorted = heapSort(list);
      expect(sorted, equals(['apple', 'banana', 'grape', 'orange']));
    });
  });
}
