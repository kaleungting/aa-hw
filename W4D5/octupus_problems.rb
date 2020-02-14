require "byebug"

fishies = ['fish', 'fiiish', "fiiiissshhhhhh",'fiiiiish' ,'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh',]

def sluggish_octopus(fishies)
    # debugger
    max = fishies[0]
    (0...fishies.length).each do |idx1|
        (idx1...fishies.length).each do |idx2|
            if idx2 > idx1
                if fishies[idx1].length > fishies[idx2].length
                    max = fishies[idx1] if max.length < fishies[idx1].length && fishies[idx2].length
                end
            end
        end
    end
    max
end

p sluggish_octopus(fishies)


class Array
    def merge_sort_dominant(&prc)
        return self if self.length <= 1
        mid = self.length/2
        left = self.take(mid)
        right = self.drop(mid)
        left_sorted = left.merge_sort_dominant(&prc)
        right_sorted = right.merge_sort_dominant(&prc)
        Array.merge(left_sorted,right_sorted,&prc)
    end

    def self.merge(left,right,&prc)
        prc || Proc.new {|a,b| a <=> b}
        merged = []
        until left.empty? || right.empty?
            if prc.call(left.first,right.first) <= 0
                merged << left.shift
            else
                merged << right.shift
            end
        end
        merged + left + right
    end
end


def merge_dominant_octopus(fishies)
    prc ||= Proc.new {|a,b| a.length <=> b.length}
    fishies.merge_sort_dominant(&prc).last
end

p merge_dominant_octopus(fishies)


def clever_octopus(fishies)
    max = fishies[0]
    (0...fishies.length-1).each do |i|
        if fishies[i+1].length > max.length
            max = fishies[i+1]
        end
    end
    max

end

p clever_octopus(fishies)

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(move,tiles_array)
    tiles_array.each_with_index do |tile,idx|
        return idx if tile == move
    end
end

p slow_dance("up",tiles_array)

tiles_hash = {
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7,
}

def constant_dance(direction,tiles_hash)
    tiles_hash[direction]
end    

p constant_dance("up",tiles_hash)
