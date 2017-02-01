def echo(arg)
  arg
end

def shout(arg)
  arg.upcase
end

def start_of_word(word, chars)
  word[0..chars-1]
end

def repeat(word, num=2)
  [word] * num * " "
end

def first_word(string)
  string.split(" ")[0]
end

def titleize(string)
  non_capitals = %w{a an and but for nor of or over the}
  string.split.each_with_index.map {|x, index| non_capitals.include?(x) && index > 0  ? x : x.capitalize}.join(" ")
end
