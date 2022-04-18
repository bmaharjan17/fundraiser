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

movie1 = Movie.new("goonies", 100)
movie2 = Movie.new("dune", 90)
movie3 = Movie.new("batman")

movies = [movie1, movie2, movie3]

puts movies

movies.each do |m|
    m.thumbs_up
    puts m
end

