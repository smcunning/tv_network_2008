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

  def actors_by_show
    result = Hash.new([])
      @shows.each do |show|
        result[show] = show.actors
      end
      result
    end

  def shows_by_actor
    result = Hash.new([])
      @shows.each do |show|
        result[show.actors.pop] = show
      end
      result
  end

  def prolific_actors
    result = []
    @shows.each do |show|
      if show.shows_by_actor.values.count > 1
        show.actors << result
      end
    end
    result
  end
end
