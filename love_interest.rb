class LoveInterest
  def request_date
    if @busy
      puts "Sorry, I'm busy"
    else
      puts "Sure, let's go!"
      @busy = true
    end
  end
end

betty = LoveInterest.new
candace = LoveInterest.new

betty.request_date
candace.request_date
p betty.object_id
p candace.object_id