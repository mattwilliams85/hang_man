class Word
  def generate
    randomize = Random.new
    motorcycle = ["honda","buell","aprilia","ktm","yamaha","suzuki","kawasaki","harley","triumph","Motorcycles"]
    coding_languages = ["ruby","java","python","php","css","html","jquery","Coding Languages"]
    pc_games = ["starcraft","civilization","portal","diablo","minecraft","PC Games"]
    cheeses = ['brie','chedder','provolone','swiss','gorganzola','gouda','goat','american','gruyere',"Cheeses"]
    categories = [motorcycle,coding_languages,pc_games,cheeses]
    @category = categories[randomize.rand(categories.length - 2)]
    word = category[randomize.rand(category.length - 1)]
  end

  def category
    @category = @category
  end

end

# test_word = Word.new
# test_word.generate


