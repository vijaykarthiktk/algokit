import 'package:test/test.dart';
import 'package:algokit/algokit.dart';

void main() {
  group('Interpolation Search -', () {
    test('should find element in sorted list', () {
      final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      expect(interpolationSearch(list, 5), equals(4));
      expect(interpolationSearch(list, 1), equals(0));
      expect(interpolationSearch(list, 10), equals(9));
    });

    test('should handle element not in list', () {
      final list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      expect(interpolationSearch(list, 11), equals(-1));
      expect(interpolationSearch(list, 0), equals(-1));
    });

    test('should handle empty list', () {
      final list = <int>[];
      expect(interpolationSearch(list, 1), equals(-1));
    });

    test('should handle single element list', () {
      final list = [1];
      expect(interpolationSearch(list, 1), equals(0));
      expect(interpolationSearch(list, 2), equals(-1));
    });

    test('should work with large uniformly distributed list', () {
      final list =
          List.generate(1000, (i) => i * 2); // Even numbers from 0 to 1998
      expect(interpolationSearch(list, 500), equals(250));
      expect(interpolationSearch(list, 1998), equals(999));
      expect(interpolationSearch(list, 1999), equals(-1));
    });

    test('should handle list with duplicate elements', () {
      final list = [1, 2, 2, 2, 3, 4, 5, 5, 6];
      // Should return the position of any matching element
      final result = interpolationSearch(list, 2);
      expect(result >= 1 && result <= 3, isTrue);
    });
  });
}
