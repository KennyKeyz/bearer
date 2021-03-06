class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  skip_before_action :authenticate_user!, :only => [:searchengine]

  # GET /items
  # GET /items.json
  def index
    #@items = Item.all.order("created_at DESC")

    @items = Item.where(user_id: current_user.id).order("created_at DESC")

 #   if params[:search]
  #  @items = Item.where('name LIKE ?', "%#{params[:search]}%")
#  else
#    @items = Item.all
 # end


  end


  def searchengine
    if params[:search]
      @items = Item.where('tracking_number LIKE ?', "%#{params[:search]}%")
    else
      @items = Item.all
    end

  end  

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @item.user = current_user

    @item.code = rand(050..900)

    @item.tracking_number = @item.name[0,3] + @item.code;

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :status, :search)
    end
end
