# frozen_string_literal: true

# Single nodes in this list
class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

# node1 = Node.new(10)
# node2 = Node.new(15)
# p node1
# p node2
