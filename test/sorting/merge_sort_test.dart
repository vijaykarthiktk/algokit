import 'package:algokit/algokit.dart';
import 'package:test/test.dart';

void main() {
  group('Merge Sort -', () {
    test('sorts numbers in ascending order', () {
      final numbers = [38, 27, 43, 3, 9, 82, 10];
      final sorted = mergeSort<num>(numbers.toList());
      expect(sorted, [3, 9, 10, 27, 38, 43, 82]);
    });

    test('sorts strings in alphabetical order', () {
      final strings = ['banana', 'apple', 'orange', 'grape'];
      final sortedStrings = mergeSort<String>(strings.toList());
      expect(sortedStrings, ['apple', 'banana', 'grape', 'orange']);
    });

    test('handles edge cases', () {
      // ignore: inference_failure_on_collection_literal
      expect(mergeSort<num>([]), []);
      expect(mergeSort<num>([1]), [1]);
      expect(mergeSort<num>([2, 1]), [1, 2]);
    });
  });
}
