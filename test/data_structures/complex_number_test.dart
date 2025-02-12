import 'package:algokit/algokit.dart';
import 'package:test/test.dart';

void main() {
  group('ComplexNumber -', () {
    test('constructor creates complex number with real and imaginary parts',
        () {
      final z = ComplexNumber(3, 4);
      expect(z.real, equals(3));
      expect(z.imaginary, equals(4));
    });

    test('fromReal creates complex number with zero imaginary part', () {
      final z = ComplexNumber.fromReal(5);
      expect(z.real, equals(5));
      expect(z.imaginary, equals(0));
    });

    test('fromImaginary creates complex number with zero real part', () {
      final z = ComplexNumber.fromImaginary(3);
      expect(z.real, equals(0));
      expect(z.imaginary, equals(3));
    });

    group('arithmetic operations -', () {
      final z1 = ComplexNumber(3, 4);
      final z2 = ComplexNumber(1, -2);

      test('addition', () {
        final sum = z1 + z2;
        expect(sum.real, equals(4));
        expect(sum.imaginary, equals(2));
      });

      test('subtraction', () {
        final difference = z1 - z2;
        expect(difference.real, equals(2));
        expect(difference.imaginary, equals(6));
      });

      test('multiplication', () {
        final product = z1 * z2;
        expect(product.real, equals(11));
        expect(product.imaginary, equals(-2));
      });

      test('division', () {
        final quotient = z1 / z2;
        expect(quotient.real, equals(-1.0));
        expect(quotient.imaginary, equals(2.0));
      });
    });

    test('conjugate returns complex number with negated imaginary part', () {
      final z = ComplexNumber(3, 4);
      final conjugate = z.conjugate();
      expect(conjugate.real, equals(3));
      expect(conjugate.imaginary, equals(-4));
    });

    test('magnitude returns absolute value', () {
      final z = ComplexNumber(3, 4);
      expect(z.magnitude(), equals(5));
    });

    group('toString -', () {
      test('formats pure real number', () {
        final z = ComplexNumber(5, 0);
        expect(z.toString(), equals('5.0'));
      });

      test('formats pure imaginary number', () {
        final z = ComplexNumber(0, 7);
        expect(z.toString(), equals('7.0i'));
      });

      test('formats complex number with positive imaginary part', () {
        final z = ComplexNumber(2, 3);
        expect(z.toString(), equals('2.0 + 3.0i'));
      });

      test('formats complex number with negative imaginary part', () {
        final z = ComplexNumber(2, -3);
        expect(z.toString(), equals('2.0 - 3.0i'));
      });
    });

    group('edge cases -', () {
      test('division by zero throws ArgumentError', () {
        final z1 = ComplexNumber(3, 4);
        final zero = ComplexNumber(0, 0);
        expect(() => z1 / zero, throwsArgumentError);
      });

      test('equality', () {
        final z1 = ComplexNumber(3, 4);
        final z2 = ComplexNumber(3, 4);
        final z3 = ComplexNumber(3, 5);

        expect(z1, equals(z2));
        expect(z1, isNot(equals(z3)));
      });

      test('hashCode is consistent', () {
        final z1 = ComplexNumber(3, 4);
        final z2 = ComplexNumber(3, 4);

        expect(z1.hashCode, equals(z2.hashCode));
      });
    });
  });
}
