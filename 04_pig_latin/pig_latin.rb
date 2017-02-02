def translate(string)
  alphabet = ('A'..'z').to_a
  capitals = ('A'..'Z').to_a
  vowels = %w{a e i o u A E I O U}
  consonants = alphabet - vowels
  special = %{qu}
  translated = []

  string.split(" ").each do |substr|
    if capitals.include?(substr[0])
      if vowels.include?(substr[0])
        translated.push(substr + "ay")
      elsif special.include?(substr[1..2])
        translated.push(substr[3].upcase + substr[4..-1] + substr[0].downcase + substr[1..2] + "ay")
      elsif consonants.include?(substr[0]) && consonants.include?(substr[1]) && consonants.include?(substr[2])
        translated.push(substr[3].upcase + substr[4..-1] + substr[0].downcase + substr[1..2] + "ay")
      elsif consonants.include?(substr[0]) && consonants.include?(substr[1]) || special.include?(substr[0..1])
        translated.push(substr[2].upcase + substr[3..-1] + substr[0].downcase + substr[1] + "ay")
      elsif consonants.include?(substr[0]) && consonants.include?(substr[1]) && consonants.include?(substr[2])
        translated.push(substr[3].upcase + substr[4..-1] + substr[0].downcase + substr[1..2] + "ay")
      elsif consonants.include?(substr[0])
        translated.push(substr[1].upcase + substr[2..-1] + substr[0].downcase + "ay")
      end
      
    else

      if vowels.include?(substr[0])
        translated.push(substr + "ay")
      elsif special.include?(substr[1..2])
        translated.push(substr[3..-1] + substr[0..2] + "ay")
      elsif consonants.include?(substr[0]) && consonants.include?(substr[1]) && consonants.include?(substr[2])
        translated.push(substr[3..-1] + substr[0..2] + "ay")
      elsif consonants.include?(substr[0]) && consonants.include?(substr[1]) || special.include?(substr[0..1])
        translated.push(substr[2..-1] + substr[0..1] + "ay")
      elsif consonants.include?(substr[0]) && consonants.include?(substr[1]) && consonants.include?(substr[2])
        translated.push(substr[3..-1] + substr[0..2] + "ay")
      elsif consonants.include?(substr[0])
        translated.push(substr[1..-1] + substr[0] + "ay")
      end

    end
  end
  translated.join(" ")
end
