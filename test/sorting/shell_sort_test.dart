import 'package:test/test.dart';
import 'package:algokit/algokit.dart';

void main() {
  group('Shell Sort', () {
    test('sorts list of integers in ascending order', () {
      final list = [64, 34, 25, 12, 22, 11, 90];
      final sorted = shellSort<num>(list);
      expect(sorted, [11, 12, 22, 25, 34, 64, 90]);
      expect(list, [64, 34, 25, 12, 22, 11, 90]); // Original list unchanged
    });

    test('sorts list of strings in ascending order', () {
      final list = ['banana', 'apple', 'orange', 'grape'];
      final sorted = shellSort(list);
      expect(sorted, ['apple', 'banana', 'grape', 'orange']);
      expect(list,
          ['banana', 'apple', 'orange', 'grape']); // Original list unchanged
    });

    test('handles empty list', () {
      final list = <int>[];
      final sorted = shellSort<num>(list);
      expect(sorted, []);
    });

    test('handles single element list', () {
      final list = [1];
      final sorted = shellSort<num>(list);
      expect(sorted, [1]);
    });

    test('handles already sorted list', () {
      final list = [1, 2, 3, 4, 5];
      final sorted = shellSort<num>(list);
      expect(sorted, [1, 2, 3, 4, 5]);
    });

    test('handles reverse sorted list', () {
      final list = [5, 4, 3, 2, 1];
      final sorted = shellSort<num>(list);
      expect(sorted, [1, 2, 3, 4, 5]);
    });
  });
}
