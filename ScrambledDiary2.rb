class ScrambledDiary
 def initialize(contents)
   @contents = contents
 end

 def read
   @contents
 end

 def scramble(scribbler)
   @contents = scribbler.scramble(@contents)
 end

 def unscramble(scribbler)
    @contents = scribbler.unscramble(@contents)
end

end

class Advance
end
