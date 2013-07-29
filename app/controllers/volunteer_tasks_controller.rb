class VolunteerTasksController < ApplicationController
  # GET /volunteer_tasks
  # GET /volunteer_tasks.json
  def index
    @volunteer_tasks = VolunteerTask.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @volunteer_tasks }
    end
  end

  # GET /volunteer_tasks/1
  # GET /volunteer_tasks/1.json
  def show
    @volunteer_task = VolunteerTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @volunteer_task }
    end
  end

  # GET /volunteer_tasks/new
  # GET /volunteer_tasks/new.json
  def new
    @volunteer_task = VolunteerTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @volunteer_task }
    end
  end

  # GET /volunteer_tasks/1/edit
  def edit
    @volunteer_task = VolunteerTask.find(params[:id])
  end

  # POST /volunteer_tasks
  # POST /volunteer_tasks.json
  def create
    @volunteer_task = VolunteerTask.new(params[:volunteer_task])

    respond_to do |format|
      if @volunteer_task.save
        format.html { redirect_to @volunteer_task, notice: 'Volunteer task was successfully created.' }
        format.json { render json: @volunteer_task, status: :created, location: @volunteer_task }
      else
        format.html { render action: "new" }
        format.json { render json: @volunteer_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /volunteer_tasks/1
  # PUT /volunteer_tasks/1.json
  def update
    @volunteer_task = VolunteerTask.find(params[:id])

    respond_to do |format|
      if @volunteer_task.update_attributes(params[:volunteer_task])
        format.html { redirect_to @volunteer_task, notice: 'Volunteer task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @volunteer_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /volunteer_tasks/1
  # DELETE /volunteer_tasks/1.json
  def destroy
    @volunteer_task = VolunteerTask.find(params[:id])
    @volunteer_task.destroy

    respond_to do |format|
      format.html { redirect_to volunteer_tasks_url }
      format.json { head :no_content }
    end
  end
end
