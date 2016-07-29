# your code goes here
require 'pry'

class Person

  attr_reader :name
  attr_accessor :bank_account

  def happiness
    @happiness
  end

  def happiness=(happiness)
    @happiness = [[10, happiness].min, 0].max
    # if happiness > 10
    #   @happiness = 10
    # elsif happiness < 0
    #   @happiness = 0
    # end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(hygiene)
    @hygiene = [[10, hygiene].min, 0].max
    # if hygiene > 10
    #   @hygiene = 10
    # elsif hygiene < 0
    #   @hygiene = 0
    # end
  end

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    if salary == 100
      @bank_account = @bank_account + salary
      return "all about the benjamins"
    else
      @bank_account = @bank_account + salary
    end
  end

  def take_bath
    @hygiene += 4#= @hygiene + 4
    self.hygiene=(hygiene)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @hygiene -= 3
    self.hygiene=(@hygiene)
    @happiness += 2
    self.happiness=(@happiness)
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    #binding.pry
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    elsif topic == "programming"
      #self.happiness += 1
      #person.happiness += 1
      "blah blah blah blah blah"
    end
  end

end
