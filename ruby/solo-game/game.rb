class WordGame
  attr_reader :guess_count
  attr_reader :is_over
  attr_reader :word_letters
  attr_reader :blank_arr

  def initialize
    @word_letters = []
    @guess_count = 0
    @is_over = false
  end

  def enter(word)
    @word = word
    lets = @word.split('')
    lets.each do |search|
      @word_letters << search
    end
  end

  def blank_arr
    @blank_arr = @word_letters.clone
    @blank_arr.each do |this|
      this.replace('_')
    end
    status = @blank_arr.join(' ')
    @status = status
    p status
  end

  def search(letter)
    @guess_count += 1
    if @guess_count == @word_letters.count
      @is_over = true
    end
    if @word_letters.include?(letter)
      puts "You got a letter"

    else
      puts "Sorry, guess again"

    end
  end

end