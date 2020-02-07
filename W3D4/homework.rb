 class Stack
    attr_reader :array
    def initialize(array)
      @array = array
    end

    def push(el)
      array << el
    end

    def pop
      return array[0...-1]
    end

    def peek
      return array[-1]
    end
  end

class Queue
    attr_reader :array
    def initialize(array)
        @array = array
    end

    def enqueue(el)
        array << el
    end
        
    def dequeue
        array.shift 
        array  
    end
            
    def peek
        array[0]
    end
end

class Map

    attr_reader :array
    def initialize(array = [])
        @array = array
    end

    def set(key,value)
        keys = []
        (0...array.length).each do |i|
            keys << array[i][0]
        end
        if !keys.include?(key)
            array << [key,value]
        else
            (0...array.length).each do |i|
                if array[i][0] == key
                    array[i][1] = value
                    return array
                end
            end
        end
    end

    def get(key)
        (0...array.length).each do |i|
            if array[i][0] == key
                return array[i]
            end
        end
    end

    def delete(key)
        array.reject! { |subs| subs[0] == key}
    end

    def show
        array
    end


end