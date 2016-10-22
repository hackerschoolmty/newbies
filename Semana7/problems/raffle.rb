# Raffle
people = %w{Chema Daniel Dave Edgar Katya Carlos}

class Contestant

  attr_reader :winner
  attr_reader :name

  def initialize(name)
    @name = name
    @winner = false
  end

  def win
    @winner = true
  end
end

class Raffle

  attr_reader :contestants

  def initialize(names)
    @contestants = []
    names.each do |name|
      @contestants << Contestant.new(name)
    end
  end

  def not_winners
    result = []
    @contestants.each do |contestant|
      if contestant.winner == false
        result << contestant
      end
    end
    result
  end

  def pick_winner
    random = rand(not_winners.length)
    contestant = not_winners[random]
    contestant.win
    contestant
  end

end

class RaffleUI

  def initialize(people)
    @raffle = Raffle.new(people)
  end

  def start
    while(@raffle.not_winners.size > 0)
      display_contestants(@raffle.not_winners)
      puts "Para elegir un ganador presiona cualquier tecla"
      gets()
      winner = @raffle.pick_winner
      puts "Gano #{winner.name}!"
    end
  end

  def display_contestants(contestants)
    puts "Todos los participantes: "
    contestants.each do |contestant|
      puts contestant.name
    end
  end
end

RaffleUI.new(people).start
