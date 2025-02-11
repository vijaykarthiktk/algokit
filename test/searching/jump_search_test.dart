import 'package:algokit/algokit.dart';
import 'package:test/test.dart';

void main() {
  group('Jump Search', () {
    test('finds elements in sorted list', () {
      final sortedNumbers = [1, 3, 4, 6, 8, 9, 11, 13, 14, 15, 17, 18, 19, 20];
      expect(jumpSearch<num>(sortedNumbers, 13), 7);
      expect(jumpSearch<num>(sortedNumbers, 1), 0);
      expect(jumpSearch<num>(sortedNumbers, 20), 13);
    });

    test('returns -1 for non-existent elements', () {
      final sortedNumbers = [1, 3, 4, 6, 8, 9, 11, 13, 14, 15, 17, 18, 19, 20];
      expect(jumpSearch<num>(sortedNumbers, 10), -1);
      expect(jumpSearch<num>(sortedNumbers, 0), -1);
      expect(jumpSearch<num>(sortedNumbers, 21), -1);
    });

    test('handles edge cases', () {
      expect(jumpSearch<num>([], 5), -1);
      expect(jumpSearch<num>([1], 1), 0);
      expect(jumpSearch<num>([1], 2), -1);
    });
  });
}
