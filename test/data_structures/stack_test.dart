import 'package:algokit/algokit.dart';
import 'package:test/test.dart';

void main() {
  group('Stack -', () {
    late Stack<int> stack;

    setUp(() {
      stack = Stack<int>();
    });

    test('is initially empty', () {
      expect(stack.isEmpty, isTrue);
      expect(stack.length, equals(0));
    });

    test('push adds items to the stack', () {
      stack.push(1);
      expect(stack.isEmpty, isFalse);
      expect(stack.length, equals(1));
      expect(stack.peek(), equals(1));
    });

    test('pop removes and returns the top item', () {
      stack.push(1);
      stack.push(2);
      expect(stack.pop(), equals(2));
      expect(stack.length, equals(1));
      expect(stack.pop(), equals(1));
      expect(stack.isEmpty, isTrue);
    });

    test('peek returns the top item without removing it', () {
      stack.push(1);
      stack.push(2);
      expect(stack.peek(), equals(2));
      expect(stack.length, equals(2));
    });

    test('clear removes all items', () {
      stack.push(1);
      stack.push(2);
      stack.clear();
      expect(stack.isEmpty, isTrue);
      expect(stack.length, equals(0));
    });

    test('toString returns string representation', () {
      stack.push(1);
      stack.push(2);
      expect(stack.toString(), equals('[1, 2]'));
    });

    group('error handling -', () {
      test('pop throws StateError when empty', () {
        expect(() => stack.pop(), throwsStateError);
      });

      test('peek throws StateError when empty', () {
        expect(() => stack.peek(), throwsStateError);
      });
    });
  });
}
