 class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def read
    @contents
  end

  def scramble(method_name)
    @contents = method_name.scramble(@contents)
  end

  def unscramble(method_name)
    @contents = method_name.unscramble(@contents)
  end
end
#
class Advance

  def initialize(steps)
    @steps = steps
  end

   def scramble(contents)
      plain_chars = contents.chars
      scrambled_chars = plain_chars.map do |char|
        (char.ord + @steps).chr
      end
      scrambled_chars.join
   end

   def unscramble(contents)
     scrambled_chars = contents.chars
     plain_chars = scrambled_chars.map do |char|
      (char.ord - @steps).chr
    end
    plain_chars.join
   end

end

class Reverse

  def scramble(contents)
    contents.reverse
  end

  def unscramble(contents)
    contents.reverse
  end
end

diary = ScrambledDiary.new("This is a difficult day")
puts "#{diary.read}"
r = Reverse.new
diary.scramble(r)
puts "after Reverse and scramble #{diary.read}'"
diary.unscramble(r)
puts "after Reverse again and unscramble #{diary.read}"
advance = Advance.new(3)
diary.scramble(advance)
puts "after advance by 3 scramles #{diary.read}"
diary.unscramble(advance)
puts "after advance by 3 unscramles #{diary.read}"
