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
    if index >= size || index.negative?
      puts "There's no node at such index"
    else
      index.times do
        pointer = pointer.next_node
      end
      pointer.value
    end
  end

  def pop
    pointer = @head
    if pointer.next_node.nil?
      puts 'There is no element to pop.'
    else
      pointer = pointer.next_node until pointer.next_node.next_node.nil?
      pointer.next_node = nil
    end
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

  def find(value)
    index = 0
    pointer = @head
    return index if pointer.value == value

    until pointer.next_node.nil?
      pointer = pointer.next_node
      index += 1
      break index if pointer.value == value

    end
  end

  def to_s
    pointer = @head
    print "(#{pointer.value})"
    until pointer.next_node.nil?
      pointer = pointer.next_node
      print " -> (#{pointer.value})"
    end
    puts ' -> nil'
  end

  def insert_at(value, index)
    pointer = @head
    if index <= 0
      prepend(value)
    elsif index > size
      append(value)
    else
      (index - 1).times { pointer = pointer.next_node }
      pointer.next_node = Node.new(value, pointer.next_node)
    end
  end

  def remove_at(index)
    pointer = @head
    if index <= 0
      @head = pointer.next_node
    elsif index >= size
      puts "There's no node at such index."
    else
      (index - 1).times { pointer = pointer.next_node }
      pointer.next_node = pointer.next_node.next_node
    end
  end
end
