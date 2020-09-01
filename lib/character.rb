class Character
attr_reader :details, :name, :actor, :salary
  def initialize(details)
    @details = details
    @name = @details[:name]
    @actor = @details[:actor]
    @salary = @details[:salary]
  end


end
