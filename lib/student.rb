class Student < User
    attr_reader :knowledge
  
    def initialize(first_name, last_name)
      super(first_name, last_name)
      @knowledge = []
    end
  
    def learn(string)
      @knowledge << string
    end
  end