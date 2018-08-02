module AcceptsComments
  # def comments
  #   if @comments
  #     @comments
  #   else
  #     @comments = []
  #   end
  # Above is = to below
  # def comments
  # @comments ? @comments : @comments = []
  # end
  # Above is = to below
  # def comments
  #   @comments = @comments || []
  # end
  # Above is = to below
  def comments
    @comments ||= []
  end

  def add_comment(comment)
    comments << comment
  end
end

class Clip
  include AcceptsComments

  def play
    puts "Playing #{object_id}"
  end
end

class Video < Clip
  attr_accessor :resolution
end

class Song < Clip
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptsComments

  def show
    puts "Displaying Photo: #{object_id}"
  end
end

video = Video.new
video.add_comment("Cool SloMo!!!")
video.add_comment("Odd Ending")

song = Song.new
song.add_comment("Awesome beats!!!")

p video.comments, song.comments

video.play
song.play

photo = Photo.new
photo.add_comment("Great Composition!!!")
p photo.comments
photo.show