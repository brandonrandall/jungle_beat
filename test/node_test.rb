require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

  def test_node_exists
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node_exists
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end
  
end














# class NodeTest < Minitest::Test
#
#   def test_node_exists
#     node = Node.new("plop")
#     assert_equal "plop", node.data
#   end
#
#   def test_has_next_node
#     node = Node.new("funny")
#     assert_equal nil, node.next_node
#   end



# end



























# class NodeTest < Minitest::Test
#
#   def test_node_holds_data
#     node = Node.new("Wefonkin")
#     assert_equal "Wefonkin", node.data
#   end
#
#   def test_has_next_node
#     node = Node.new("Wefonkintodeath")
#     assert_equal nil, node.next_node
#   end
#
# end
