require './lib/linked_list'

class JungleBeat

  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(words)
    # binding.pry
    appended = words.split.each do |word|
      @list.append(word)
    end
    final = appended.join(" ")
  end

  def count
    @list.count
  end

  def play
    `say -r 500 -v Boing #{@list.to_string}`
  end

end
