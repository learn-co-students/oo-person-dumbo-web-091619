class Person
    
    attr_reader :name,:happiness
    attr_accessor :bank_account,:hygiene
    def initialize(name)
        @name=name
        @bank_account=25
        @happiness=8
        @hygiene=8
    end
    
    def happiness=(number)
      @happiness=number
     if @happiness > 10
        @happiness=10
     elsif @happiness< 1
        @happiness = 0
     end 
    end

    def hygiene=(hygiene)
        @hygiene=hygiene
        if @hygiene > 10
            @hygiene=10
         elsif @hygiene< 1
            @hygiene=0
          hygiene
        end
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
      @bank_account+=salary
      return "all about the benjamins"
    end

    def take_bath
        self.hygiene+=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene-=3
        self.happiness+=2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness+=3   
        friend.happiness+=3
          "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        top=topic
        case top
        when 'politics'
        self.happiness-=2
        friend.happiness -=2
        "blah blah partisan blah lobbyist"
        when 'weather'
            self.happiness+=1
            friend.happiness+=1
           "blah blah sun blah rain"
        when 'programming'
        "blah blah blah blah blah"
        end
    end

end
p1=Person.new("Stella")
 
 






















# def take_bath
    #     @hygiene+=4
    #     # "♪ Rub-a-dub just relaxing in the tub ♫"
    #     if @hygiene > 10
    #         @hygiene=10
    #     elsif @hygiene < 0
    #         @hygiene=0
    #     end
    #     # @hygiene=(hygiene)
    #     "♪ Rub-a-dub just relaxing in the tub ♫"
        
    # end
    
    # def hygiene=(hygiene)
    #     @hygiene=hygiene
    #     if @hygiene >13
    #         @hygiene-=3
    #     end
    # end
