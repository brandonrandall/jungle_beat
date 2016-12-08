require './lib/node'
require 'pry'

class LinkedList

  attr_accessor :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(word)
    @count += 1
    if @head == nil
      @head = Node.new(word)
      @initial = word
    else
      @appended = @head.append(word)
    end
  end

  def prepend(word)
    @count += 1
    temp_node = Node.new(word)
    temp_node.next_node = @head
    @head = temp_node
  end

  def insert(index, word)
    @count = 1
    temp_node = Node.new(word)
    current_node = @head
    temp_remainder = current_node.next_node
    until @count == index
      current_node = temp_remainder
      @count += 1
    end
    temp_node.next_node = temp_remainder
    current_node.next_node = temp_node
  end

  def to_string
    string = ""
    current = @head
    while current
      string << current.data << " "
      current = current.next_node
    end
    string.strip
  end


  def find(index, return_amount)
    # binding.pry
    sum_of_i_and_r = index + return_amount
    to_string.split[index...sum_of_i_and_r].join(" ")
  end

  def includes?(word)
    refutation = false
    to_string.split.each do |string_word|
      if string_word == word
        refutation = true
      else
        refutation
      end
      return refutation
    end
  end
  # ***to_string.include?(word)
# end
  def pop
    # traverse - store data of node im removing
    # if the current.next_node.next_node is nil
    current_node = @head
    removed_data = ""
    until current_node.next_node.next_node == nil
      current_node = current_node.next_node
    end
    removed_data = current_node.next_node.data
    current_node.next_node = nil
    removed_data
    # popped = to_string.split
    # popped.delete_if { |x| x[-1] }
  end
end








# class LinkedList
#
#   attr_accessor :head, :count
#
#   def initialize
#     @head = nil
#     @count = 0
#   end
#
#   def append(word)
#     # until @head.next_node == nil
#     @count += 1
#     if @head == nil
#       @head = Node.new(word)
#       current_word = word
#     else
#       @head.append(word)
#     end
#   end
#
#   def to_string
#     string = ""
#     string << @head.data
#   end
#
# end
# ******
# class LinkedList
#
#   attr_accessor :head, :count
#
#   def initialize
#     @head = nil
#     @count = 0
#     # @string = nil
#   end
#
#   def append(word)
#     if !@head
#       @head = Node.new(word)
#     else # head already exists
#       @head.next_node = Node.new(word)
#     end
#
#     @count += 1
#
#     if !@string
#       @string = word
#     else
#       @string = @string + " " + word
#     end
#   end
#
#   def to_string
#     @string
#   end
#
# end
