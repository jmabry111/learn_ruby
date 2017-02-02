class Book
# write your code here
  def title
    @title
  end

  def title=(title)
    @title = titleize(title)
  end

  private
  def titleize(title)
    lowered_words = %w{and but or for the a an in of}
    title.capitalize.split.map{|w| lowered_words.include?(w) ? w : w.capitalize}.join(" ")
  end
end
