class StudentController < ApplicationController
  def edit
  @studentprofile = Studentprofile.find(params[:id])
  end

   def new
  @studentprofile = Studentprofile.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @studentprofile }
    end
  end

  def show
  @studentprofile = Studentprofile.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @studentprofile }
    end
  end

  def index
  @studentprofiles = Studentprofile.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @studentprofiles }
    end
  end
def create
    @studentprofile = Studentprofile.new(params[:studentprofile])

    respond_to do |format|
      if @studentprofile.save
        format.html { redirect_to(@studentprofile, :notice => 'Studentprofile was successfully created.') }
        format.xml  { render :xml => @studentprofile, :status => :created, :location => @studentprofile }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @studentprofile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /studentprofiles/1
  # PUT /studentprofiles/1.xml
  def update
    @studentprofile = Studentprofile.find(params[:id])

    respond_to do |format|
      if @studentprofile.update_attributes(params[:studentprofile])
        format.html { redirect_to(@studentprofile, :notice => 'Studentprofile was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @studentprofile.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /studentprofiles/1
  # DELETE /studentprofiles/1.xml
  def destroy
    @studentprofile = Studentprofile.find(params[:id])
    @studentprofile.destroy

    respond_to do |format|
      format.html { redirect_to(studentprofiles_url) }
      format.xml  { head :ok }
    end
  end
end
