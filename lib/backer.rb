class Backer 

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        a = ProjectBacker.all.select {|project_backer| project_backer.backer == self} #returns array of ProjectBacker instances
        a.collect {|p| p.project} #goes down a level to get the Project instances and collect them into an array
    end
    
end