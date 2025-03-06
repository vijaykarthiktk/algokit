import 'package:algokit/algokit.dart';
import 'package:test/test.dart';

void main() {
  group('Queue -', () {
    late Queue<int> queue;
    late Queue<int> capacityQueue;

    setUp(() {
      queue = Queue<int>();
      capacityQueue = Queue<int>(3);
    });

    group('constructor -', () {
      test('creates empty queue without capacity', () {
        expect(queue.isEmpty, isTrue);
        expect(queue.isFull, isFalse);
        expect(queue.length, equals(0));
      });

      test('creates empty queue with capacity', () {
        expect(capacityQueue.isEmpty, isTrue);
        expect(capacityQueue.isFull, isFalse);
        expect(capacityQueue.length, equals(0));
      });
    });

    group('enqueue- ', () {
      test('adds items to queue without capacity', () {
        queue.enqueue(1);
        expect(queue.length, equals(1));
        expect(queue.peek(), equals(1));
      });

      test('adds items up to capacity', () {
        capacityQueue.enqueue(1);
        capacityQueue.enqueue(2);
        capacityQueue.enqueue(3);
        expect(capacityQueue.length, equals(3));
        expect(capacityQueue.isFull, isTrue);
      });

      test('throws error when enqueueing to full queue', () {
        capacityQueue.enqueue(1);
        capacityQueue.enqueue(2);
        capacityQueue.enqueue(3);
        expect(() => capacityQueue.enqueue(4), throwsStateError);
      });
    });

    group('dequeue -', () {
      test('removes and returns first item', () {
        queue.enqueue(1);
        queue.enqueue(2);
        expect(queue.dequeue(), equals(1));
        expect(queue.length, equals(1));
      });

      test('throws error when dequeuing from empty queue', () {
        expect(() => queue.dequeue(), throwsStateError);
      });

      test('maintains FIFO order', () {
        queue.enqueue(1);
        queue.enqueue(2);
        queue.enqueue(3);
        expect(queue.dequeue(), equals(1));
        expect(queue.dequeue(), equals(2));
        expect(queue.dequeue(), equals(3));
      });
    });

    group('peek -', () {
      test('returns first item without removing it', () {
        queue.enqueue(1);
        queue.enqueue(2);
        expect(queue.peek(), equals(1));
        expect(queue.length, equals(2));
      });

      test('throws error when peeking empty queue', () {
        expect(() => queue.peek(), throwsStateError);
      });
    });

    group('offer -', () {
      test('adds item when queue is not full', () {
        expect(capacityQueue.offer(1), isTrue);
        expect(capacityQueue.length, equals(1));
      });

      test('returns false when queue is full', () {
        capacityQueue.offer(1);
        capacityQueue.offer(2);
        capacityQueue.offer(3);
        expect(capacityQueue.offer(4), isFalse);
        expect(capacityQueue.length, equals(3));
      });
    });

    group('contains -', () {
      test('returns true for existing item', () {
        queue.enqueue(1);
        queue.enqueue(2);
        expect(queue.contains(1), isTrue);
        expect(queue.contains(2), isTrue);
      });

      test('returns false for non-existing item', () {
        queue.enqueue(1);
        queue.enqueue(2);
        expect(queue.contains(3), isFalse);
      });

      test('returns false for empty queue', () {
        expect(queue.contains(1), isFalse);
      });
    });

    group('reverse -', () {
      test('reverses order of elements', () {
        queue.enqueue(1);
        queue.enqueue(2);
        queue.enqueue(3);
        queue.reverse();
        expect(queue.dequeue(), equals(3));
        expect(queue.dequeue(), equals(2));
        expect(queue.dequeue(), equals(1));
      });

      test('handles empty queue', () {
        queue.reverse();
        expect(queue.isEmpty, isTrue);
      });

      test('handles single element', () {
        queue.enqueue(1);
        queue.reverse();
        expect(queue.peek(), equals(1));
      });
    });

    group('toList and toArray -', () {
      test('returns correct list representation', () {
        queue.enqueue(1);
        queue.enqueue(2);
        queue.enqueue(3);
        expect(queue.toList(), equals([1, 2, 3]));
        expect(queue.toArray(), equals([1, 2, 3]));
      });

      test('returns empty list for empty queue', () {
        expect(queue.toList(), isEmpty);
        expect(queue.toArray(), isEmpty);
      });

      test('returns new list instance', () {
        queue.enqueue(1);
        queue.enqueue(2);
        final list = queue.toList();
        list.add(3);
        expect(queue.length, equals(2));
      });
    });

    group('clear -', () {
      test('removes all elements', () {
        queue.enqueue(1);
        queue.enqueue(2);
        queue.clear();
        expect(queue.isEmpty, isTrue);
        expect(queue.length, equals(0));
      });

      test('works on empty queue', () {
        queue.clear();
        expect(queue.isEmpty, isTrue);
      });

      test('allows enqueue after clear', () {
        queue.enqueue(1);
        queue.clear();
        queue.enqueue(2);
        expect(queue.peek(), equals(2));
      });
    });

    group('size -', () {
      test('returns same value as length', () {
        queue.enqueue(1);
        queue.enqueue(2);
        expect(queue.size, equals(queue.length));
      });
    });
  });
}
