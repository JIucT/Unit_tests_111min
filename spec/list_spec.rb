  require 'spec_helper.rb'

  describe List do
    before :each do
    @node = ListNode.new("gaeg")
    @list = List.new(@node)
    end
	describe "#initialize" do
	  it "should make exception if was given no parameters" do
	    lambda {List.new()}.should raise_exception ArgumentError
	  end
	  it "should return a new List object" do
	    @list.should  be_an_instance_of List
	  end  
	end

	describe "#add" do
	  it "should return a ListNode object" do
	    @list.add(@node).should eql (@node)
	  end  
	  it "should make last node == @node" do
	    @a = List.new(ListNode.new("qqw"))             #.count
	    @a.add(@node)
	    @a.showlast.should eql (@node) 
	  end
	  it "should increase length for 1" do
	    @a = List.new(ListNode.new("qqw"))
	    @c = @a.count
	    @a.add(@node)
	    (@a.count - @c).should == 1 
	  end
	end
	 
	describe "#count" do
	  it "should be 1" do
	    @list.count.should == 1
	  end
	end 
	describe "#shownext" do
	  it "should return a ListNodeobject" do
	    @list.add(@node)
	    @list.shownext.should be_an_instance_of ListNode
	  end
	end  
  end
