class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @hygiene = 8
    @happiness = 8
  end
    
  def happiness=(new_happiness_points)
    if new_happiness_points > 10
      @happiness = 10
    elsif new_happiness_points < 0
      @happiness = 0
    else
      @happiness = new_happiness_points
    end
    # maybe optimize with hygeine method
  end
  
    
  def hygiene=(new_hygiene_points)
    if new_hygiene_points > 10
      @hygiene = 10
    elsif new_hygiene_points < 0
      @hygiene = 0
    else
      @hygiene = new_hygiene_points
    end
  end
  
  def happy?
    @happiness > 7 ? true : false
    # test-expression ? if-true-expression : if-false-expression

  end
  
  def clean?
    @hygiene > 7 ? true : false
  end
  
  def get_paid(salary)
    @bank_account += salary.to_i
    return 'all about the benjamins'
  end
  
  def take_bath
    self.hygiene=(self.hygiene() + 4)
  
  
    return '♪ Rub-a-dub just relaxing in the tub ♫'
  end
  
  def work_out
    self.hygiene=(self.hygiene() - 3)
    self.happiness=(self.happiness() + 2)
    '♪ another one bites the dust ♫'
  end
  
  def call_friend(friend)
    self.happiness=(self.happiness + 3)
    friend.happiness=(friend.happiness + 3)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(person, topic)
    case topic
      when "politics"
        self.happiness=(self.happiness() - 2)
        person.happiness=(person.happiness() - 2)
        return "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness=(self.happiness() + 1)
        person.happiness=(person.happiness() + 1)
        return "blah blah sun blah rain"
      else
        return "blah blah blah blah blah"
    end
  end
end























