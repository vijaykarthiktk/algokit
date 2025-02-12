import 'package:algokit/algokit.dart';

void main() {
  print('Complex Number Examples\n');

  // Creating complex numbers
  final z1 = ComplexNumber(3, 4);
  final z2 = ComplexNumber(1, -2);
  final real = ComplexNumber.fromReal(5);
  final imaginary = ComplexNumber.fromImaginary(3);

  print('z1 = $z1');
  print('z2 = $z2');
  print('real = $real');
  print('imaginary = $imaginary\n');

  // Arithmetic operations
  print('Addition: ($z1) + ($z2) = ${z1 + z2}');
  print('Subtraction: ($z1) - ($z2) = ${z1 - z2}');
  print('Multiplication: ($z1) * ($z2) = ${z1 * z2}');
  print('Division: ($z1) / ($z2) = ${z1 / z2}\n');

  // Other operations
  print('Conjugate of $z1 = ${z1.conjugate()}');
  print('Magnitude of $z1 = ${z1.magnitude()}');

  // Edge cases
  final zero = ComplexNumber(0, 0);
  print('\nEdge cases:');
  print('Zero as string: $zero');
  print('Pure real number: ${ComplexNumber(5, 0)}');
  print('Pure imaginary number: ${ComplexNumber(0, 7)}');
  print('Negative imaginary number: ${ComplexNumber(2, -3)}');

  try {
    print('\nAttempting division by zero:');
    print(z1 / zero);
  } catch (e) {
    print('Error: $e');
  }
}
