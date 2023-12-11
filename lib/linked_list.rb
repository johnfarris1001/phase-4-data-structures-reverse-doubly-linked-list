require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    if head.nil? || head == tail
      return
    end

    curr = head
    self.tail = curr
    curr = curr.next_node
    while curr.next_node
      n = curr.next_node
      curr.next_node = curr.prev_node
      curr.prev_node = n
      curr = n
    end
    curr.prev_node = nil
    self.head = curr
    curr.next_node = curr.prev_node
    curr.prev_node = nil
    self.tail.next_node = nil
  end
end
