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
end

list = LinkedList.new(0)
list.append(10)
list.append(20)
p list
