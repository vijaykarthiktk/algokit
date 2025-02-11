import 'package:algokit/algokit.dart';
import 'package:test/test.dart';

void main() {
  group('Linear Search', () {
    test('finds elements in list', () {
      final numbers = [45, 23, 11, 89, 77, 98, 4, 28, 65, 43];
      expect(linearSearch<num>(numbers, 77), 4);
      expect(linearSearch<num>(numbers, 45), 0);
      expect(linearSearch<num>(numbers, 43), 9);
    });

    test('returns -1 for non-existent elements', () {
      final numbers = [45, 23, 11, 89, 77, 98, 4, 28, 65, 43];
      expect(linearSearch<num>(numbers, 100), -1);
      expect(linearSearch<num>(numbers, 0), -1);
      expect(linearSearch<num>(numbers, 50), -1);
    });

    test('handles edge cases', () {
      expect(linearSearch<num>([], 5), -1);
      expect(linearSearch<num>([1], 1), 0);
      expect(linearSearch<num>([1], 2), -1);
    });
  });
}
