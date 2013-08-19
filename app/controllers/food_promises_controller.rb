class FoodPromisesController < ApplicationController
  # GET /food_promises
  # GET /food_promises.json
  def index
    @food_promises = FoodPromise.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @food_promises }
    end
  end

  # GET /food_promises/1
  # GET /food_promises/1.json
  def show
    @food_promise = FoodPromise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @food_promise }
    end
  end

  # GET /food_promises/new
  # GET /food_promises/new.json
  def new
    @food_promise = FoodPromise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @food_promise }
    end
  end

  # GET /food_promises/1/edit
  def edit
    @food_promise = FoodPromise.find(params[:id])
  end

  # POST /food_promises
  # POST /food_promises.json
  def create
    @food_promise = FoodPromise.new(params[:food_promise])

    respond_to do |format|
      if @food_promise.save
        format.html { redirect_to @food_promise, notice: 'Food item was successfully created.' }
        format.json { render json: @food_promise, status: :created, location: @food_promise }
      else
        format.html { render action: "new" }
        format.json { render json: @food_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /food_promises/1
  # PUT /food_promises/1.json
  def update
    @food_promise = FoodPromise.find(params[:id])

    respond_to do |format|
      if @food_promise.update_attributes(params[:food_promise])
        format.html { redirect_to @food_promise, notice: 'Food item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @food_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_promises/1
  # DELETE /food_promises/1.json
  def destroy
    @food_promise = FoodPromise.find(params[:id])
    @food_promise.destroy

    respond_to do |format|
      format.html { redirect_to food_promises_url }
      format.json { head :no_content }
    end
  end
end
