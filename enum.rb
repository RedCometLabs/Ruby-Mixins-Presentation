class Xmen
  include Enumerable

  attr_accessor :team

  def initialize(team_members)
    @team = team_members
  end

  def each &block
    @team.each{|xman| block.call(xman)}
    
  end
 end


  xmen = Xmen.new ["Wolverine", "Storm", "Rogue", "Gambit"]

  xmen.first
  xmen.sort
