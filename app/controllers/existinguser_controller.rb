class ExistinguserController < ApplicationController
def index
  @blackflag = Blackflag.find(params[:EmpID])
end

def edit
@blackflag=Blackflag.find(params[:EmpID])
end
def new
 
end

	
def create
 #@blackflag = Blackflag.find_by_sql("SELECT * FROM blackflags WHERE blackflags.EmpID=83555")
 @blackflag = Blackflag.find(params[:ID])
   if @blackflag.find
   render 'show'
   else
   render 'msg'
   end
end
  
  
def show
   @blackflag = Blackflag.all
end

end
