class Movie

    attr_reader :rank #makes instance variable useable (getter method)
    attr_accessor :title
    #attr_writer :title #setter method

    def initialize(title, rank=0)
        @title = title.capitalize  #instance variables @
        @rank = rank
    end

    def normalized_rank
        @rank/10
    end

    #behavior expressed as instance method
    def thumbs_up
        @rank += 1
    end

    def thumbs_down
        @rank -= 1 
    end

    def to_s
        "#{@title} has a rank of #{@rank}"
    end  
end

class Playlist

    def initialize(name)
        @name = name
        @movies = []
    end

    def add_movie(movie)
        @movies << movie
    end

    def play
        puts "#{@name}'s playlist: "
        puts @movies

        @movies.each do |movie|
            movie.thumbs_up
            puts movie
        end

    end
end
movie1 = Movie.new("goonies", 10)
movie2 = Movie.new("dune", 9)
movie3 = Movie.new("batman")

playlist1 = Playlist.new("Jay")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)
playlist1.play

playlist2 = Playlist.new("Maddie")
playlist2.add_movie(movie3)

movie4 = Movie.new("Spiderman", 15)
playlist2.add_movie(movie4)
playlist2.play


