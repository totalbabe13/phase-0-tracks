

class List
	
   attr_accessor :todo

    def initialize
    	@todo = []
    end	

	def get_items(task1,task2)  
       
       @todo.push(task1,task2)
       p @todo
    end
    #- - - - - - - - - - - - - - - - - - - - - 
   
    def add_item(task)
    	@todo.push(task)
    	p @todo
    end
 end   

#list_test = List.new 

#list_test.get_items('job1','Job2')
#list_test.add_item('mop') => 
 