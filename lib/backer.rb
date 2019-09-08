class Backer
  attr_accessor :name, :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    @backed_projects << project
    project.backers << self unless project.backers.include?(self) #checks to see if it's already there before shoveling into backers; we do this so you don't duplicate information; unless = if not; here the value of self is an instance of a project
  end
end