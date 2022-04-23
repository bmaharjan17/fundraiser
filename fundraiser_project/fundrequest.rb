require_relative 'project'

class FundRequest

    attr_reader :title

    def initialize(title)
        @title = title
        @projects =[]
    end

    def add_project(a_project)
        @projects << a_project
    end

    def request_funding
        puts "There are #{@projects.size} projects available!!"
        @projects.each do |p|
            puts p
        end

        puts "\n****"
        puts "Here are the target funds for each project: "
        @projects.each do |p|
            puts p.target_fund
        end

        puts "\n****"
        puts "Lets go through the rounds of funds allocation: "
        @projects.each do |p|
            p.add_fund
            p.add_fund
            p.lost_fund
            puts p
        end

    end
end