require "set"

class GraphNode
  attr_accessor :value, :neighbors

  def initialize(value)
    self.value = value
    self.neighbors = []
  end

  def inspect
    value
  end
  
  
end

def bfs(node, target)
    visted = Set.new()
    queue = []
    queue << node
    until queue.empty?
        el = queue.shift
        visted.add(el.value)
        if el.value == target     
            return el.value
        else
            el.neighbors.each {|children| queue << children if !visted.include?(children.value)}
        end
    end
end
