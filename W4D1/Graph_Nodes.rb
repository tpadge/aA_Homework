class GraphNode

  attr_accessor :val, :neighbors

  def initialize(val)
    self.val = val
    self.neighbors = []
  end

  def add_neighbor(node)
    self.neighbors << node
  end

  def bfs(starting_node, target_node)
    queue = [starting_node]
    visited = Set.new()

    until queue.empty?
      node = queue.shift
      unless vistied.include?(node)
      return node.val if node.value == target_node
      visited.add(node)
      queue.concat(queue.neighbors)
    end
  end

  return nil


end
a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]
