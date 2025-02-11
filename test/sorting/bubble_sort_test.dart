import 'package:algokit/algokit.dart';
import 'package:test/test.dart';

void main() {
  group('Bubble Sort', () {
    test('sorts numbers in ascending order', () {
      final numbers = [64, 34, 25, 12, 22, 11, 90];
      final sorted = bubbleSort<num>(numbers.toList());
      expect(sorted, [11, 12, 22, 25, 34, 64, 90]);
    });

    test('sorts strings in alphabetical order', () {
      final strings = ['banana', 'apple', 'orange', 'grape'];
      final sortedStrings = bubbleSort<String>(strings.toList());
      expect(sortedStrings, ['apple', 'banana', 'grape', 'orange']);
    });

    test('handles edge cases', () {
      // ignore: inference_failure_on_collection_literal
      expect(bubbleSort<num>([]), []);
      expect(bubbleSort<num>([1]), [1]);
      expect(bubbleSort<num>([2, 1]), [1, 2]);
    });
  });
}
