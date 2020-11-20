class Project
   
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        a = ProjectBacker.all.select {|project_backer| project_backer.project == self} #returns array of ProjectBacker instances
        a.collect {|p| p.backer} #goes down a level to get the Backer instances and collect them into an array
    end
            
end
