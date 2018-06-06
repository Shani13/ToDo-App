class Todo2ItemsController < ApplicationController
  before_action :set_todo2_item, only: [:show, :edit, :update, :destroy]

  # GET /todo2_items
  # GET /todo2_items.json
  def index
    @todo2_items = Todo2Item.all
  end

  # GET /todo2_items/1
  # GET /todo2_items/1.json
  def show
  end

  # GET /todo2_items/new
  def new
    @todo2_item = Todo2Item.new
  end

  # GET /todo2_items/1/edit
  def edit
  end

  # POST /todo2_items
  # POST /todo2_items.json
  def create
    @todo2_item = Todo2Item.new(todo2_item_params)

    respond_to do |format|
      if @todo2_item.save
        format.html { redirect_to @todo2_item, notice: 'Todo2 item was successfully created.' }
        format.json { render :show, status: :created, location: @todo2_item }
      else
        format.html { render :new }
        format.json { render json: @todo2_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todo2_items/1
  # PATCH/PUT /todo2_items/1.json
  def update
    respond_to do |format|
      if @todo2_item.update(todo2_item_params)
        format.html { redirect_to @todo2_item, notice: 'Todo2 item was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo2_item }
      else
        format.html { render :edit }
        format.json { render json: @todo2_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todo2_items/1
  # DELETE /todo2_items/1.json
  def destroy
    @todo2_item.destroy
    respond_to do |format|
      format.html { redirect_to todo2_items_url, notice: 'Todo2 item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo2_item
      @todo2_item = Todo2Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo2_item_params
      params.require(:todo2_item).permit(:description)
    end
end
