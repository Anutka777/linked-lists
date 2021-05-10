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

  def head
    @head.value
  end

  def tail
    pointer = @head
    pointer = pointer.next_node until pointer.next_node.nil?
    pointer.value
  end

  def at(index)
    pointer = @head
    index.times do
      pointer = pointer.next_node
    end
    pointer.value
  end

  def pop
    pointer = @head
    pointer = pointer.next_node until pointer.next_node.next_node.nil?
    pointer.next_node = nil
  end

  def contains?(value)
    contains = false
    pointer = @head
    contains = true if pointer.value == value

    until pointer.next_node.nil?
      pointer = pointer.next_node
      break contains = true if pointer.value == value

    end
    contains
  end
end
