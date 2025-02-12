import 'dart:math';

/// A class representing complex numbers and their operations.
class ComplexNumber {
  /// The real part of the complex number
  final double real;

  /// The imaginary part of the complex number
  final double imaginary;

  /// Creates a complex number with the given [real] and [imaginary] parts.
  const ComplexNumber(this.real, this.imaginary);

  /// Creates a complex number from a real number (imaginary part is 0).
  factory ComplexNumber.fromReal(double real) => ComplexNumber(real, 0);

  /// Creates a complex number from an imaginary number (real part is 0).
  factory ComplexNumber.fromImaginary(double imaginary) =>
      ComplexNumber(0, imaginary);

  /// Adds two complex numbers.
  ComplexNumber operator +(ComplexNumber other) {
    return ComplexNumber(
      real + other.real,
      imaginary + other.imaginary,
    );
  }

  /// Subtracts two complex numbers.
  ComplexNumber operator -(ComplexNumber other) {
    return ComplexNumber(
      real - other.real,
      imaginary - other.imaginary,
    );
  }

  /// Multiplies two complex numbers.
  ComplexNumber operator *(ComplexNumber other) {
    return ComplexNumber(
      real * other.real - imaginary * other.imaginary,
      real * other.imaginary + imaginary * other.real,
    );
  }

  /// Divides two complex numbers.
  ComplexNumber operator /(ComplexNumber other) {
    final denominator =
        other.real * other.real + other.imaginary * other.imaginary;
    if (denominator == 0) {
      throw ArgumentError('Division by zero');
    }
    return ComplexNumber(
      (real * other.real + imaginary * other.imaginary) / denominator,
      (imaginary * other.real - real * other.imaginary) / denominator,
    );
  }

  /// Returns the conjugate of this complex number.
  ComplexNumber conjugate() => ComplexNumber(real, -imaginary);

  /// Returns the magnitude (absolute value) of this complex number.
  double magnitude() => sqrt(real * real + imaginary * imaginary);

  @override
  String toString() {
    if (imaginary == 0) return real.toString();
    if (real == 0) return '${imaginary}i';
    final sign = imaginary < 0 ? '-' : '+';
    return '$real $sign ${imaginary.abs()}i';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ComplexNumber &&
        other.real == real &&
        other.imaginary == imaginary;
  }

  @override
  int get hashCode => real.hashCode ^ imaginary.hashCode;
}
