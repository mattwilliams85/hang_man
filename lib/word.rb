class Word
  def generate
    word_index = Random.new
    wordArray = ["mazda","chevrolet","honda","ford","toyota","kia","jaguar","ferrari","bmw"]
    word = wordArray[word_index.rand(9)]
  end
end



