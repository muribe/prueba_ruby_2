class T 
    def method1()
        rand(-100..100)
    end
end
class Q < T
    attr_accessor :number
    def initialize()    
        @number = method1
    end
    def method1
        super
    end

end



