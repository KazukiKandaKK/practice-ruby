class Node
    attr_accessor :next

    def initialize(next_node=nil)
        @next = next_node
    end
end

def fake_allocate(p, free)
    if free == nil then
        p = Node.new
    else
        p = free
        free.next
    end
    # debug
    puts "p: #{p}"
    puts "free: #{free}"
end

fake_allocate(nil, Node.new(Node.new(Node.new)))
