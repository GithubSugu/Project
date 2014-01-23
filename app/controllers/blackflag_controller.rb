class BlackflagController < ApplicationController
layout 'standard'
def index
  # @blackflag = Blackflag.all
  @blackflag=Blackflag.all
  
 
  end

def new
 @blackflag = Blackflag.new
end

def edit
  @blackflag = Blackflag.find(params[:id])
end

def update
  @blackflag = Blackflag.find(params[:id])

  if @blackflag.update(post_params)
    redirect_to action: :show, id: @blackflag.id
  else
      render 'edit'
  end
end

	
def create
@blackflag = Blackflag.new(params[:blackflag].permit(:EmpID, :Name,:ATTUID,:MailID,:GitHubID,:APIGEE_ID,:Foundry_ID,:ContactNum,:DOB))
  if @blackflag.save
  #  redirect_to @blackflag
	render 'msg'
	
  else
    render 'new'
  end
end
  
def show
  @blackflag = Blackflag.all
   respond_to do |format|
  format.html
  format.csv{send_data:@blackflag.to_csv}
  #format.xls{send_data:@blackflag.to_csv}
  end
end
end
