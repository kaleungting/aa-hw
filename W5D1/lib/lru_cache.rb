class LRUCache
    
    attr_reader :cache, :max
    def initialize(cache_size)
        @cache = []
        @max = cache_size
    end

    def count
      @cache.length
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache << el
        else
            if full?
                @cache.shift
                @cache << el
            else
                @cache << el
            end
        end
    end

    def show
      @cache
    end

    private
    
    def full?
        count == @max
    end
end 


  
  
  
  
  
 