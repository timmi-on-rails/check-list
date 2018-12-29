class CheckListsController < ApplicationController
  before_action :set_check_list, only: [:show, :manifest, :app, :service_worker]

  def new
    @check_list = CheckList.new
  end

  def create
    @check_list = CheckList.new(check_list_params)
    @check_list.token = Array.new(16) { [*'a'..'z', *'A'..'Z', *'0'..'9'].sample }.join 

    if @check_list.save
      redirect_to @check_list
    else
      render 'new'
    end
  end

  def show
    @items = @check_list.items.order(created_at: :desc).to_a   # call to_a, because we want the dummy item not be part of the collection
    @item = @check_list.items.new
  end
  
  private

  def check_list_params
    params.require(:check_list).permit(:title)
  end

  def set_check_list
    @check_list = CheckList.find_by_token(params[:token])
  end
end
