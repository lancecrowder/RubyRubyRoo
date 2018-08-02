class ListWithCommas
  attr_accessor :items
  def join
    last_item = "and #{items.last}"
    other_items = items.slice(0, items.length - 1).join(", ")
    "#{other_items} #{last_item}"
  end

  two_subjects = ListWithCommas.new
  two_subjects.items = ["my parents", "a rodeo clown"]
  puts "A photo of #{two_subjects.join}"

  three_subject = ListWithCommas.new
  three_subject.items = ["my parents", "a rodeo clown", "a prize bull"]
  puts "A photo of #{three_subject.join}"
end