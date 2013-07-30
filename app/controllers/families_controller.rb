class FamiliesController < ApplicationController
  # GET /families
  # GET /families.json
  def index
    flash[:notice] = "Your Transaction is #{params[:st]} for amount of $#{params[:amt]}. Thank You for shopping." if params[:st]
    @families = Family.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @families }
    end
  end

  # GET /families/1
  # GET /families/1.json
  def show
    flash[:notice] = "Your Transaction is #{params[:st]} for amount of $#{params[:amt]}. Thank You for shopping." if params[:st]
    @family = Family.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @family }
    end
  end

  # GET /families/new
  # GET /families/new.json
  def new
    @family = Family.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @family }
    end
  end

  # GET /families/1/edit
  def edit
    @family = Family.find(params[:id])
  end

  # POST /families
  # POST /families.json
  def create
    if params[:family][:contribution][0] == "$"
      params[:family][:contribution] = params[:family][:contribution].tr("$","")
    end
      
    @family = Family.new(params[:family])
    
    respond_to do |format|
      if @family.save
        unless @family.email.nil?
          UserMailer.confirmation_email(@family).deliver
        end
        format.html { redirect_to @family, notice: 'Family was successfully created.' }
        format.json { render json: @family, status: :created, location: @family }
      else
        format.html { render action: "new" }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /families/1
  # PUT /families/1.json
  def update
    if params[:family][:contribution][0] == "$"
      params[:family][:contribution] = params[:family][:contribution].tr("$","")
    end
    
    @family = Family.find(params[:id])

    respond_to do |format|
      if @family.update_attributes(params[:family])
        format.html { redirect_to @family, notice: 'Family was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @family.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /families/1
  # DELETE /families/1.json
  def destroy
    @family = Family.find(params[:id])
    @family.destroy

    respond_to do |format|
      format.html { redirect_to families_url }
      format.json { head :no_content }
    end
  end
  
  def paid 
    Family.update_all(["paid=?", 1], :id => params[:family_ids])
    redirect_to registrar_url
  end
end
