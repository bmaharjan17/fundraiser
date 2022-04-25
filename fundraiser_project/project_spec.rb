require_relative 'project'

describe Project do 

    before do
        $stdout = StringIO.new
        @initial_fund = 1000
        @project = Project.new("test project", 5000, @initial_fund)
    end

    it "has an initial target funding amount" do
        expect(@project.target_fund).to eq(5000)
    end

    it "computes the total funding outstanding as the target funding amount minus the funding amount" do
        expect(@project.fund_needed).to eq(5000 - 1000)
    end

    it "increases funds by 25 when funds are added" do
        @project.add_fund
        expect(@project.fund).to eq(1000+25)
    end

    it "decreases funds by 15 when funds are removed" do
        @project.lost_fund
        expect(@project.fund).to eq(1000-15)
    end

    context "created project without funding amount" do
        before do
            @project = Project.new("Test2", 5000)
        end

        it "has a default value of 0 for funding amount" do
            expect(@project.fund).to eq(0)
        end
    end
end
