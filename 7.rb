class Car
    @@t_instances = 0
    @@q_instances = 0
    def initialize(name)
        (name == "T") ?  @@t_instances +=1 :  @@q_instances +=1
    end
    def self.get_number_of_instances(name)
        puts "La cantidad de instancias para #{name} son: #{(name == "T") ? @@t_instances : @@q_instances}\n"
    end
end

class T < Car
    def initialize()
        super(self.class.name)
    end
end

class Q < Car
    def initialize()
        super(self.class.name)
    end

end

q=[]
t=[]

20.times do |i|
    t << T.new() 
end

25.times do |i|
    q << Q.new()
end

Car.get_number_of_instances("T")
Car.get_number_of_instances("Q")