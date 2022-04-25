class Project

    attr_accessor :name
    attr_reader :fund, :target_fund

    def initialize(name, target_fund=1000, fund=0)
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

#test code

if __FILE__ == $0
    project = Project.new("ABC Project")
    project.add_fund
    project.add_fund
    puts project.name
end