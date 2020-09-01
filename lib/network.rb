class Network
attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
  all_characters = @shows.map do |show|
      show.characters
    end
  all_characters = all_characters.flatten
  main_characters = all_characters.find_all do |character|
      character.salary > 500_000 && character.name == character.name.upcase
    end
  end
end
