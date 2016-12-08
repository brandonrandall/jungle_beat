# class Node
#
#   attr_accessor :data, :next_node
#
#   def initialize(word)
#     @data = word
#     @next_node = nil
#   end
#
# end



















# ***1
class Node

  attr_accessor :data, :next_node

  def initialize(data)
    @data = data
    @next_node = nil
  end

  def append(word)
    if @data == nil
      @data = word
    elsif @next_node == nil
      @next_node = Node.new(word)
    else
      @next_node.append(word)
    end
    word
  end



end





















# class Node
#
#   attr_accessor :data, :next_node
#
#   def initialize(word)
#     @data = word
#     @next_node = nil
#   end
#
# end
