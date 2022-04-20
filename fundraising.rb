class Project

    attr_accessor :name
    attr_reader :fund, :target_fund

    def initialize(name, fund=0, target_fund)
        @name = name.capitalize
        @fund = fund
        @target_fund = target_fund
    end

    def add_fund
        @fund += 25
        puts "Project #{@name} got more funds!"
    end

    def lost_fund
        @fund -= 15
        puts "Project #{@name} lost some funds!"
    end

    def to_s
        "Project #{@name} has $#{@fund} in funding towards a goal of $#{@target_fund}."
    end

    def fund_needed
        @target_fund - @fund
    end

    def name=(new_name)
        @name = new_name.capitalize
    end


end

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

project1 = Project.new("Alpha",100,1000)
project2 = Project.new("beta", 500, 2000)
project3 = Project.new("gamma", 100, 3000)

projects = FundRequest.new("VC Startup Projects")
puts projects.title
projects.add_project(project1)
projects.add_project(project2)
projects.add_project(project3)
projects.request_funding

project4 = Project.new("sigma", 200, 5000)
project5 = Project.new("theta", 400, 2000)
project6 = Project.new("omega", 1300, 7000)

projects = FundRequest.new("Ask my parents for money")
puts projects.title
projects.add_project(project4)
projects.add_project(project5)
projects.add_project(project6)
projects.request_funding
