import 'package:algokit/algokit.dart';

void main() {
  // Create a new LinkedList
  final list = LinkedList<int>();

  // Demonstrate basic operations
  print('\n=== Basic Operations ===');

  // Using add()
  list.add(1);
  list.add(2);
  print('After adding elements: $list');

  // Using addFirst()
  list.addFirst(0);
  print('After using addFirst elements: $list');

  // Using insert()
  list.insert(2, 5);
  print('After inserting 5 at index 2: $list');

  // Using removeFirst()
  final firstElement = list.removeFirst();
  print('Removed first element: $firstElement');
  print('After removing first element: $list');

  // Using removeLast()
  final lastElement = list.removeLast();
  print('Removed last element: $lastElement');
  print('After removing last element: $list');

  // Using removeAt()
  final removedElement = list.removeAt(1);
  print('Removed element at index 1: $removedElement');
  print('After removing element at index 1: $list');

  // Using remove()
  final removed = list.remove(5);
  print('Removed element 5: $removed');
  print('After removing element 5: $list');

  // Using elementAt()
  print('Element at index 0: ${list.elementAt(0)}');
  print('Index of element 5: ${list.indexOf(1)}');

  // List traversal
  print('\n=== List Traversal ===');

  // Using forEach
  print('Doubling each element:');
  final doubled = <int>[];
  list.forEach((element) => doubled.add(element * 2));
  print('Doubled elements: $doubled');

  // Using map
  final tripled = list.map((e) => e * 3).toList();
  print('Tripled elements: $tripled');

  // Using toList
  final listAsArray = list.toList();
  print('List converted to array: $listAsArray');

  // Using clear()
  list.clear();
  print('After clearing the list: $list');

  // Using toString
  list.clear();
  list.add(1);
  list.add(2);
  list.add(3);
  print('List as string: $list');
  print('Direct toString call: ${list.toString()}');

  // Demonstrate advanced operations
  print('\n=== Advanced Operations ===');

  // Prepare list with more elements
  list.clear();
  list.add(5);
  list.add(2);
  list.add(8);
  list.add(1);
  list.add(9);
  list.add(2);
  list.add(3);
  print('Initial list: $list');

  // Using findMin()
  print('Minimum value: ${list.findMin()}');

  // Using findMax()
  print('Maximum value: ${list.findMax()}');

  // Using sort()
  list.sort();
  print('After sorting: $list');

  // Using reverse()
  list.reverse();
  print('After reversing: $list');

  // Using removeDuplicates()
  list.removeDuplicates();
  print('After removing duplicates: $list');

  // Using split()
  final splitList = list.split(3);
  print('First part after splitting: $list');
  print('Second part after splitting: $splitList');

  // Using merge()
  final otherList = LinkedList<int>();
  otherList.add(4);
  otherList.add(6);
  list.merge(otherList);
  print('After merging with [4, 6]: $list');

  // Using clone()
  final clonedList = list.clone();
  print('Cloned list: $clonedList');

  // Demonstrate error handling
  print('\n=== Error Handling ===');

  try {
    list.elementAt(-1);
  } catch (e) {
    print('Accessing negative index: $e');
  }

  try {
    list.insert(-1, 10);
  } catch (e) {
    print('Inserting at negative index: $e');
  }

  list.clear();
  try {
    list.removeFirst();
  } catch (e) {
    print('Removing from empty list: $e');
  }
}
