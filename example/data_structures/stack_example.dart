import 'package:algokit/algokit.dart';

void main() {
  // Create a new stack of integers
  final stack = Stack<int>();

  // Push some items onto the stack
  print('Pushing items: 1, 2, 3');
  stack.push(1);
  stack.push(2);
  stack.push(3);
  print('Stack: $stack');
  print('Stack size: ${stack.length}');

  // Peek at the top item
  print('\nTop item (peek): ${stack.peek()}');
  print('Stack after peek: $stack');

  // Pop items from the stack
  print('\nPopping items:');
  while (!stack.isEmpty) {
    print('Popped: ${stack.pop()}');
    print('Stack: $stack');
  }

  // Demonstrate error handling
  print('\nTrying to pop from empty stack:');
  try {
    stack.pop();
  } catch (e) {
    print('Error: $e');
  }

  // Clear demonstration
  print('\nPushing items again: 4, 5');
  stack.push(4);
  stack.push(5);
  print('Stack before clear: $stack');
  stack.clear();
  print('Stack after clear: $stack');
}
