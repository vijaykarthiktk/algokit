import 'package:algokit/algokit.dart';

void main() {
  // Create a new queue with capacity of 3
  final queue = Queue<int>(3);

  // Demonstrate capacity-restricted enqueue operation
  print('Enqueueing items to capacity-restricted queue (capacity: 3)');
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  print('Queue: $queue');
  print('Queue is full: ${queue.isFull}');

  // Demonstrate enqueue to full queue
  print('\nTrying to enqueue to full queue:');
  try {
    queue.enqueue(4);
  } catch (e) {
    print('Error: $e');
  }

  // Demonstrate offer operation
  print('\nTrying to offer item to full queue:');
  final offerResult = queue.offer(4);
  print('Offer successful: $offerResult');
  print('Queue after offer attempt: $queue');

  // Demonstrate contains operation
  print('\nChecking if queue contains items:');
  print('Contains 2: ${queue.contains(2)}');
  print('Contains 5: ${queue.contains(5)}');

  // Demonstrate reverse operation
  print('\nReversing the queue:');
  queue.reverse();
  print('Queue after reverse: $queue');

  // Demonstrate toArray operation
  print('\nConverting queue to array:');
  final array = queue.toArray();
  print('Array representation: $array');

  // Demonstrate dequeue operation
  print('\nDequeuing items:');
  while (!queue.isEmpty) {
    print('Dequeued: ${queue.dequeue()}');
    print('Queue: $queue');
  }

  // Demonstrate operations on empty queue
  print('\nQueue is empty: ${queue.isEmpty}');

  // Demonstrate peek on empty queue
  print('\nTrying to peek empty queue:');
  try {
    queue.peek();
  } catch (e) {
    print('Error: $e');
  }

  // Demonstrate successful offer to empty queue
  print('\nOffering items to empty queue:');
  print('Offer 5 successful: ${queue.offer(5)}');
  print('Queue after offer: $queue');

  // Demonstrate clear operation
  print('\nClearing the queue:');
  queue.clear();
  print('Queue after clear: $queue');
}
