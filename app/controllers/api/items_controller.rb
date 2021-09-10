class Api::ItemsController < ApplicationController
before_action :find_category
before_action :find_item, only: [:show, :update, :destroy]


  def index
    items = @category.items.all
    render json: items
  end

  def show
    render json: @item
  end

  def create
    @item = @category.items.new(item_params)
    if @item.save
      render json: @item
    else
      render json: {errors: @item.errors}
    end
  end

  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: {errors: @item.errors}
    end
  end

  def destroy
    render json: @item.destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :contact, :category_id)
  end

  def find_item
    @item = @category.items.find(params[:id])
  end

  def find_category
    @category = Category.find(params[:category_id])
  end

end
