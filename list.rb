require './listnode.rb'

  class List
    def initialize(node)
      @head = node
      @itr = @head
    end

    def add(node)
      while @itr.nextobj != nil do
        @itr = @itr.nextobj
      end
      @itr.nextobj = node
      @itr = @head
    end

    def count()
      @itr = @head
      @num = 0
      while @itr != nil do
        @num = @num + 1
        @itr = @itr.nextobj
      end   
      @itr = @head
      @num
    end 
      
    def showlist()
      @itr = @head
      while @itr != nil do
         puts(@itr.value)
         @itr = @itr.nextobj
      end
      @itr = @head
    end

    def shownext()   #show next node and move iterator to it
      @itr = @itr.nextobj 
      puts(@itr.value)
      @itr
    end  
    
    def showfirst()
      puts(@head.value)
    end  
    
    def showlast()
      while @itr.nextobj != nil do
         @itr = @itr.nextobj
      end
      @x = @itr
      puts(@itr.value)
      @itr = @head      
      @x
    end  
  end
  
  
c = ListNode.new("trololo")
a = List.new(c)
a.add(ListNode.new("1"))
a.add(ListNode.new("2"))
#a.add(ListNode.new("3"))
a.showlist
a.shownext
#a.shownext
#a.shownext
#a.showfirst
#a.showlast
