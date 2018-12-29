class ItemsController < ApplicationController
  def create
    @check_list = CheckList.find_by_token(params[:check_list_token])
    @item = @check_list.items.new(item_params)
    @item.checked = false

    if @item.save
      redirect_to @check_list
    else
      render html: 'Fehler'
    end
  end

  def update
    @check_list = CheckList.find_by_token(params[:check_list_token])
    @item = @check_list.items.find(params[:id])

    if @item.update(item_params)
      head :ok
    else
      render html: 'Fehler'
    end
  end
  
  private

  def item_params
    params.require(:item).permit(:name, :checked)
  end
end
