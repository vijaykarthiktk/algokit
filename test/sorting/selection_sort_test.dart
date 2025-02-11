import 'package:test/test.dart';
import 'package:algokit/algokit.dart';

void main() {
  group('Selection Sort', () {
    test('sorts list of numbers in ascending order', () {
      final list = [64, 34, 25, 12, 22, 11, 90];
      final sorted = selectionSort<num>(list);
      expect(sorted, [11, 12, 22, 25, 34, 64, 90]);
    });

    test('sorts list of strings in alphabetical order', () {
      final list = ['banana', 'apple', 'orange', 'grape', 'kiwi'];
      final sorted = selectionSort<String>(list);
      expect(sorted, ['apple', 'banana', 'grape', 'kiwi', 'orange']);
    });

    test('handles empty list', () {
      final list = <int>[];
      final sorted = selectionSort<num>(list);
      expect(sorted, []);
    });

    test('handles single element list', () {
      final list = [42];
      final sorted = selectionSort<num>(list);
      expect(sorted, [42]);
    });

    test('handles two element list', () {
      final list = [2, 1];
      final sorted = selectionSort<num>(list);
      expect(sorted, [1, 2]);
    });

    test('original list remains unchanged', () {
      final original = [3, 1, 4, 1, 5];
      final originalCopy = List<int>.from(original);
      selectionSort<num>(original);
      expect(original, originalCopy);
    });
  });
}
