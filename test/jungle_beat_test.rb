require 'minitest/autorun'
require 'minitest/emoji'
require './lib/jungle_beat'
require 'pry'

class JungleBeatTest < Minitest::Test


  # def test_has_all_need_components
  #   list = LinkedList.new
  #   list.append('doop')
  #   # binding.pry
  #   assert_instance_of LinkedList, list
  #   assert_instance_of Node, list.head
  #   assert_equal "doop", list.head.data
  #   assert_equal nil, list.head.next_node
  # end

  def test_jb_has_list
    jb = JungleBeat.new
    assert_instance_of LinkedList, jb.list
    assert_equal nil, jb.list.head
  end

  def test_jb_can_append
    jb = JungleBeat.new
    assert_equal "deep doo ditt", jb.append("deep doo ditt")
  end

  def test_can_find_head_data
    # skip
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    # binding.pry
    assert_equal "deep", jb.list.head.data
  end

  def test_can_read_nex_node_data
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    assert_equal "doo", jb.list.head.next_node.data
  end

  def test_can_append_more_than_one_node
    jb = JungleBeat.new
    assert_equal "woo hoo shu", jb.append("woo hoo shu")
  end

  def test_can_count_appended_words
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    assert_equal 6, jb.count
  end

  def test_can_play_sounds
    jb = JungleBeat.new
    assert_equal "deep doo ditt woo hoo shu",
    jb.append("deep doo ditt woo hoo shu")
    assert_equal 6, jb.list.count
    jb.play
  end

end
