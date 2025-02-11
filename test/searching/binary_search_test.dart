import 'package:algokit/algokit.dart';
import 'package:test/test.dart';

void main() {
  group('Binary Search', () {
    test('finds elements in sorted list', () {
      final sortedNumbers = [1, 3, 4, 6, 8, 9, 11, 13, 14, 15, 17, 18, 19, 20];
      expect(binarySearch<num>(sortedNumbers, 13), 7);
      expect(binarySearch<num>(sortedNumbers, 1), 0);
      expect(binarySearch<num>(sortedNumbers, 20), 13);
    });

    test('returns -1 for non-existent elements', () {
      final sortedNumbers = [1, 3, 4, 6, 8, 9, 11, 13, 14, 15, 17, 18, 19, 20];
      expect(binarySearch<num>(sortedNumbers, 10), -1);
      expect(binarySearch<num>(sortedNumbers, 0), -1);
      expect(binarySearch<num>(sortedNumbers, 21), -1);
    });

    test('handles edge cases', () {
      expect(binarySearch<num>([], 5), -1);
      expect(binarySearch<num>([1], 1), 0);
      expect(binarySearch<num>([1], 2), -1);
    });
  });
}
