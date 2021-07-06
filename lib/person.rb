# require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    
    def initialize(name,bank_account=25,happiness=8,hygiene=8)
        @name = name 
        @bank_account = bank_account
        @happiness = happiness
        @hygiene= hygiene
    end
    def happiness=(happiness)
       if happiness < 10 && happiness > 0
            @happiness = happiness
       elsif happiness < 0
            @happiness = 0
       else
            @happiness = 10
       end   
    end
    def hygiene=(hygiene)
        if hygiene < 10 && hygiene > 0
             @hygiene = hygiene
        elsif hygiene < 0
             @hygiene = 0
        else
             @hygiene = 10
        end   
     end
     def happy?
        if self.happiness > 7 
            return true
        else
            return false
        end
     end
     def clean?
        if self.hygiene > 7 
            return true
        else
            return false
        end
     end
     def get_paid(money)
        self.bank_account = self.bank_account + money
        return "all about the benjamins"
     end
     def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
     end
     def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
     end
     def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
     end
     def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        elsif topic == "programming"
            return "blah blah blah blah blah"
        end
    end
end 

