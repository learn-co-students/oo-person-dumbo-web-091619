
class Person 
  
    attr_reader :name, :happiness, :hygiene
    attr_writer
    attr_accessor :bank_account
    
    def initialize(name)
      @name = name 
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end 
    
    def incriment_happiness
      @happiness += 1
      if @happiness >= 10 
        @happiness = 10 
    end 
  end 
  
  def decriment_happiness
      @happiness -= 1
      if @happiness <= 0
        @happiness = 0 
    end 
  end 
  
  def happiness=(happiness_level)
    @happiness = happiness_level
    if @happiness >= 10 
      @happiness = 10 
      
    else if @happiness <= 0
      @happiness = 0
      
    else 
      @happiness = happiness_level
    end 
  end 
  return @happiness
end 

  def hygiene=(hygiene_level)
    @hygiene = hygiene_level
    if @hygiene >= 10 
      @hygiene = 10 
      
    else if @hygiene <= 0
      @hygiene = 0
      
    else 
      @hygiene = hygiene_level
    end 
  end 
  return @hygiene
end

    def incriment_hygiene
      @hygiene += 1
      if @hygiene >= 10 
        @hygiene = 10 
    end 
  end 
  
  def decriment_hygiene
      @hygiene -= 1
      if @hygiene <= 0
        @hygiene = 0 
    end 
  end



    def clean?
      if @hygiene > 7
        true 
      else 
        false
      end 
      
    end 
    
    def happy?
      if @happiness > 7
        true 
      else 
        false
      end 
    end 
    
    def get_paid(salary)
      @bank_account += salary 
      return "all about the benjamins"
    end 

    def take_bath

        self.hygiene=(self.hygiene() + 4)


      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    

    def work_out 

        #incriment happiness by 2
        self.happiness=(@happiness + 2)


        #decriment hygiene by 3
        self.hygiene=(@hygiene - 3)
       

     return "♪ another one bites the dust ♫"
    end 



   def call_friend(friend) 

    self.happiness=(self.happiness + 3)
    friend.happiness=(friend.happiness + 3)

     return "Hi #{friend.name}! It's #{self.name}. How are you?"
   end 


   def start_conversation(friend, topic)

    case topic 

    when "politics"
    self.happiness=(self.happiness - 2)
    friend.happiness=(friend.happiness - 2)
        return "blah blah partisan blah lobbyist"
    when "weather"
    self.happiness=(self.happiness + 1)
    friend.happiness=(friend.happiness + 1)

        return "blah blah sun blah rain"
    else 
      return "blah blah blah blah blah"

    end 



   end 


    
  end 