class WordSplitter
  attr_accessor :string

  def each
    string.split(" ").each do |word|
      yield word
    end
  end
  splitter = WordSplitter.new
  splitter.string = "One Two Three Four"

  splitter.each do |word|
    puts word
  end
end