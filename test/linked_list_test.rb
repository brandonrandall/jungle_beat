require 'minitest/autorun'
require 'minitest/emoji'
require './lib/linked_list'
# ***1
class LinkedListTest < Minitest::Test

  def test_head_exists
    list = LinkedList.new
    assert_equal nil, list.head
  end

  def test_can_add_words_to_the_back
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_has_all_need_components
    list = LinkedList.new
    list.append('doop')
    # binding.pry
    assert_instance_of LinkedList, list
    assert_instance_of Node, list.head
    assert_equal "doop", list.head.data
    assert_equal nil, list.head.next_node
  end

  def test_can_count_data
    list = LinkedList.new
    assert_equal 0, list.count
    list.append("whatever")
    assert_equal 1, list.count
  end

  def test_next_node_starts_as_nil
    list = LinkedList.new
    list.append("something")
    assert_equal nil, list.head.next_node
  end

  def test_can_change_input_to_string
    list = LinkedList.new
    list.append("Wefonkin")
    assert_equal "Wefonkin", list.to_string
  end

  def test_can_append_more_than_one_node
    # skip
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.data
    list.append("deep")
    # binding.pry
    assert_equal "deep", list.head.next_node.data
    assert_equal "doop deep", list.to_string
  end

  def test_can_add_words_to_the_front
    list = LinkedList.new
    list.append("plop")
    assert_equal "plop", list.to_string
    list.append("suu")
    list.prepend("dop")
    assert_equal "dop plop suu", list.to_string
  end

  def test_can_insert_a_word_anywhere
    # skip
    list = LinkedList.new
    list.append("dop")
    list.append("plop")
    list.append("suu")
    assert_equal "dop plop suu", list.to_string
    list.insert(1, "woo")
    assert_equal "dop woo plop suu", list.to_string
  end

  def test_can_find_specific_words
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "deep woo shi shu blop", list.to_string
    assert_equal "shi", list.find(2,1)
    assert_equal "woo shi shu", list.find(1,3)
  end

  def test_can_verify_if_includes_word
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert list.includes?("deep")
    refute list.includes?("dep")
  end

  def test_can_remove_a_word_from_the_end
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "blop", list.pop
    assert_equal "shu", list.pop
    assert_equal "deep woo shi", list.to_string
  end



end














# class LinkedListTest < Minitest::Test
#
#   def test_list_has_a_head_node
#     list = LinkedList.new
#     assert_equal nil, list.head
#   end
#
#   def test_list_appends_a_word
#     list = LinkedList.new
#     assert_equal "doop", list.append("doop")
#   end
#
#   def test_list_has_a_next_node
#     list = LinkedList.new
#     list.append("doop")
#     assert_equal 1, list.count
#     assert_equal nil, list.head.next_node
#   end
#
#   def test_list_has_count_and_to_string
#     list = LinkedList.new
#     list.append("doop")
#     assert_equal 1, list.count
#     assert_equal "doop", list.to_string
#     # binding.pry
#   end
#
#   def test_list_can_append_multiple_nodes
#     list = LinkedList.new
#     list.append("doop")
#     assert_equal "doop", list.head.data
#     assert_equal 1, list.count
#     list.append("deep")
#     # binding.pry
#     assert_equal "deep", list.head.next_node
#     assert_equal 2, list.count
#   end
#
# end

# class LinkedListTest < Minitest::Test
#
#   def test_head_exists
#     list = LinkedList.new
#     assert_equal nil, list.head
#   end
#
#   def test_
#
# end
