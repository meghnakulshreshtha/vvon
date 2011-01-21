class FacultyController < ApplicationController
  def edit
  @facultyprofile = Facultyprofile.find(params[:id])
  end

  def new
  @facultyprofile = Facultyprofile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @facultyprofile }
    end
  end

  def show
  @facultyprofile = Facultyprofile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @facultyprofile }
    end
  end

  def index
  @facultyprofiles = Facultyprofile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @facultyprofiles }
    end
  end

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

  def destroy
  @facultyprofile = Facultyprofile.find(params[:id])
    @facultyprofile.destroy

    respond_to do |format|
      format.html { redirect_to(facultyprofiles_url) }
      format.xml  { head :ok }
    end
  end

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

end
