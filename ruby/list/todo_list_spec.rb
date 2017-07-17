


require_relative 'todo_list' #<-- refers to todo_list.rb

describe List do
  let(:list) { List.new }  

  it "stores the list items given on initialization" do
   expect(list.get_items("do the dishes", "mow the lawn")).to eq ["do the dishes", "mow the lawn"]
  end
  


  it "adds an item to the list" do
    #list.add_item("mop")
    list.get_items("do the dishes", "mow the lawn")
    expect(list.add_item('mop')).to eq ["do the dishes", "mow the lawn", "mop"]
  end

end







#describe TodoList do
  #let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  #it "stores the list items given on initialization" do
   # expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  #end