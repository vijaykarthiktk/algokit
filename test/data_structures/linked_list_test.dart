import 'package:algokit/algokit.dart';
import 'package:test/test.dart';

void main() {
  group('LinkedList -', () {
    late LinkedList<int> list;

    setUp(() {
      list = LinkedList<int>();
    });

    test('is initially empty', () {
      expect(list.isEmpty, isTrue);
      expect(list.length, equals(0));
    });

    group('basic operations -', () {
      test('add appends items to the list', () {
        list.add(1);
        expect(list.isEmpty, isFalse);
        expect(list.length, equals(1));
        expect(list.elementAt(0), equals(1));

        list.add(2);
        expect(list.length, equals(2));
        expect(list.elementAt(1), equals(2));
      });

      test('addFirst adds items to the beginning of the list', () {
        list.addFirst(1);
        expect(list.isEmpty, isFalse);
        expect(list.length, equals(1));
        expect(list.elementAt(0), equals(1));

        list.addFirst(2);
        expect(list.length, equals(2));
        expect(list.elementAt(0), equals(2));
        expect(list.elementAt(1), equals(1));
      });
      test('insert adds items at specific position', () {
        list.add(1);
        list.add(2);
        list.insert(1, 3);
        expect(list.length, equals(3));
        expect(list.elementAt(0), equals(1));
        expect(list.elementAt(1), equals(3));
        expect(list.elementAt(2), equals(2));
      });

      test('removeFirst removes and returns the first item', () {
        list.add(1);
        list.add(2);
        expect(list.removeFirst(), equals(1));
        expect(list.length, equals(1));
        expect(list.elementAt(0), equals(2));
      });

      test('removeLast removes and returns the last item', () {
        list.add(1);
        list.add(2);
        list.add(3);
        expect(list.removeLast(), equals(3));
        expect(list.length, equals(2));
        expect(list.elementAt(0), equals(1));
        expect(list.elementAt(1), equals(2));
      });
      test('removeAt removes and returns correct item', () {
        list.add(1);
        list.add(2);
        list.add(3);
        final removed = list.removeAt(1);
        expect(removed, equals(2));
        expect(list.length, equals(2));
        expect(list.elementAt(0), equals(1));
        expect(list.elementAt(1), equals(3));
      });

      test('remove removes the first occurrence of an item', () {
        list.add(1);
        list.add(2);
        list.add(2);
        list.add(3);
        expect(list.remove(2), isTrue);
        expect(list.length, equals(3));
        expect(list.elementAt(0), equals(1));
        expect(list.elementAt(1), equals(2));
        expect(list.elementAt(2), equals(3));
        expect(list.remove(4), isFalse);
      });

      test('elementAt returns correct elements', () {
        list.add(1);
        list.add(2);
        list.add(3);
        expect(list.elementAt(0), equals(1));
        expect(list.elementAt(1), equals(2));
        expect(list.elementAt(2), equals(3));
      });

      test('forEach applies function to all elements', () {
        list.add(1);
        list.add(2);
        list.add(3);
        final result = <int>[];
        list.forEach((element) => result.add(element * 2));
        expect(result, equals([2, 4, 6]));
      });

      test('map transforms elements correctly', () {
        list.add(1);
        list.add(2);
        list.add(3);
        final mapped = list.map((e) => e * 2);
        expect(mapped.toList(), equals([2, 4, 6]));
      });

      test('toList converts to standard list', () {
        list.add(1);
        list.add(2);
        list.add(3);
        expect(list.toList(), equals([1, 2, 3]));
      });

      test('clear removes all items', () {
        list.add(1);
        list.add(2);
        list.clear();
        expect(list.isEmpty, isTrue);
        expect(list.length, equals(0));
      });

      test('toString returns correct string representation', () {
        list.add(1);
        list.add(2);
        list.add(3);
        expect(list.toString(), equals('[1, 2, 3]'));
      });

      test('indexOf returns correct indices', () {
        list.add(1);
        list.add(2);
        list.add(3);
        list.add(2);
        expect(list.indexOf(1), equals(0));
        expect(list.indexOf(2), equals(1));
        expect(list.indexOf(4), equals(-1));
      });
    });

    group('advanced operations -', () {
      setUp(() {
        list.add(5);
        list.add(2);
        list.add(8);
        list.add(1);
        list.add(9);
        list.add(2);
        list.add(3);
      });

      test('findMin returns minimum value', () {
        expect(list.findMin(), equals(1));
      });

      test('findMax returns maximum value', () {
        expect(list.findMax(), equals(9));
      });

      test('reverse changes element order', () {
        list.reverse();
        expect(list.toString(), equals('[3, 2, 9, 1, 8, 2, 5]'));
      });

      test('sort arranges elements in ascending order', () {
        list.sort();
        expect(list.toString(), equals('[1, 2, 2, 3, 5, 8, 9]'));
      });

      test('merge combines two lists', () {
        final other = LinkedList<int>();
        other.add(4);
        other.add(6);
        list.merge(other);
        expect(list.toString(), equals('[5, 2, 8, 1, 9, 2, 3, 4, 6]'));
      });
      test('split divides list into two parts', () {
        final splitList = list.split(3);
        expect(list.toString(), equals('[5, 2, 8]'));
        expect(splitList.toString(), equals('[1, 9, 2, 3]'));
      });

      test('removeDuplicates removes duplicate elements', () {
        list.removeDuplicates();
        expect(list.toString(), equals('[5, 2, 8, 1, 9, 3]'));
      });

      test('clone creates independent copy', () {
        final cloned = list.clone();
        expect(cloned.toString(), equals(list.toString()));
        list.add(10);
        expect(cloned.toString(), isNot(equals(list.toString())));
      });
    });

    group('error handling -', () {
      test('insert throws RangeError for invalid index', () {
        expect(() => list.insert(-1, 1), throwsRangeError);
        expect(() => list.insert(1, 1), throwsRangeError);
      });

      test('removeAt throws StateError when empty', () {
        expect(() => list.removeAt(0), throwsStateError);
      });

      test('elementAt throws RangeError for invalid index', () {
        expect(() => list.elementAt(-1), throwsRangeError);
        expect(() => list.elementAt(0), throwsStateError);
      });
    });
  });
}
