# frozen_string_literal: true

require_relative 'node'

## The whole linked list
class LinkedList
  def initialize(value)
    @head = Node.new(value, nil)
  end

  def append(value)
    pointer = @head
    pointer = pointer.next_node until pointer.next_node.nil?
    pointer.next_node = Node.new(value, nil)
  end

  def prepend(value)
    pointer = Node.new(value, @head)
    @head = pointer
  end

  def size
    pointer = @head
    node_counter = 1
    until pointer.next_node.nil?
      pointer = pointer.next_node
      node_counter += 1
    end
    node_counter
  end
end

# list = LinkedList.new(0)
# list.append(10)
# list.append(20)
# list.prepend(-10)
# list.append(30)
# p list
# p list.size
