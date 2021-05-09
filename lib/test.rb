# frozen_string_literal: true

require_relative 'linked_list'

# node1 = Node.new(10)
# node2 = Node.new(15)
# p node1
# p node2

list = LinkedList.new(0)
list.append(10)
list.append(20)
list.prepend(-10)
# list.append(30)
p list
# p list.size
# p list.head
# p list.tail
p list.at(2)
