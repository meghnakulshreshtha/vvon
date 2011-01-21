class AlumniController < ApplicationController
  def edit
  @alumniprofile = Alumniprofile.find(params[:id])
  end

  def new
  @alumniprofile = Alumniprofile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alumniprofile }
    end
  end

  def show
  @alumniprofile = Alumniprofile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alumniprofile }
    end
  end

  def index
  @alumniprofiles = Alumniprofile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alumniprofiles }
    end
  end

  def create
  @alumniprofile = Alumniprofile.new(params[:alumniprofile])

    respond_to do |format|
      if @alumniprofile.save
        format.html { redirect_to(@alumniprofile, :notice => 'Alumniprofile was successfully created.') }
        format.xml  { render :xml => @alumniprofile, :status => :created, :location => @alumniprofile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alumniprofile.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
  @alumniprofile = Alumniprofile.find(params[:id])
    @alumniprofile.destroy

    respond_to do |format|
      format.html { redirect_to(alumniprofiles_url) }
      format.xml  { head :ok }
    end
  end

  def update
   @alumniprofile = Alumniprofile.find(params[:id])

    respond_to do |format|
      if @alumniprofile.update_attributes(params[:alumniprofile])
        format.html { redirect_to(@alumniprofile, :notice => 'Alumniprofile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alumniprofile.errors, :status => :unprocessable_entity }
      end
    end
  end

end
