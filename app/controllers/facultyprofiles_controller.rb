class FacultyprofilesController < ApplicationController
  # GET /facultyprofiles
  # GET /facultyprofiles.xml
  def index
    @facultyprofiles = Facultyprofile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @facultyprofiles }
    end
  end

  # GET /facultyprofiles/1
  # GET /facultyprofiles/1.xml
  def show
    @facultyprofile = Facultyprofile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @facultyprofile }
    end
  end

  # GET /facultyprofiles/new
  # GET /facultyprofiles/new.xml
  def new
    @facultyprofile = Facultyprofile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @facultyprofile }
    end
  end

  # GET /facultyprofiles/1/edit
  def edit
    @facultyprofile = Facultyprofile.find(params[:id])
  end

  # POST /facultyprofiles
  # POST /facultyprofiles.xml
  def create
    @facultyprofile = Facultyprofile.new(params[:facultyprofile])

    respond_to do |format|
      if @facultyprofile.save
        format.html { redirect_to(@facultyprofile, :notice => 'Facultyprofile was successfully created.') }
        format.xml  { render :xml => @facultyprofile, :status => :created, :location => @facultyprofile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @facultyprofile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /facultyprofiles/1
  # PUT /facultyprofiles/1.xml
  def update
    @facultyprofile = Facultyprofile.find(params[:id])

    respond_to do |format|
      if @facultyprofile.update_attributes(params[:facultyprofile])
        format.html { redirect_to(@facultyprofile, :notice => 'Facultyprofile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @facultyprofile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /facultyprofiles/1
  # DELETE /facultyprofiles/1.xml
  def destroy
    @facultyprofile = Facultyprofile.find(params[:id])
    @facultyprofile.destroy

    respond_to do |format|
      format.html { redirect_to(facultyprofiles_url) }
      format.xml  { head :ok }
    end
  end
end
