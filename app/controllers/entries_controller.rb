class EntriesController < ApplicationController
  # GET /entries
  # GET /entries.json
respond_to :html, :js
  def index
    @entries = Entry.all
    @entry = Entry.new


  end

  # GET /entries/1
  # GET /entries/1.json
#  def show
#    @entry = Entry.find(params[:id])
#
#    respond_to do |format|
#      format.html # show.html.erb
#      format.json { render json: @entry }
#    end
#  end
#
#  # GET /entries/new
#  # GET /entries/new.json
#  def new
#    @entry = Entry.new
#
#    respond_to do |format|
#      format.html # new.html.erb
#      format.json { render json: @entry }
#    end
#  end
#
#  # GET /entries/1/edit
#  def edit
#    @entry = Entry.find(params[:id])
#  end
#
#  # POST /entries
#  # POST /entries.json
  def create
    @entry = Entry.new(params[:entry])

      if @entry.save
            respond_with @entry, :location => entries_url
      end
  end
#
#  # PUT /entries/1
#  # PUT /entries/1.json
#  def update
#    @entry = Entry.find(params[:id])
#
#    respond_to do |format|
#      if @entry.update_attributes(params[:entry])
#        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
#        format.json { head :ok }
#      else
#        format.html { render action: "edit" }
#        format.json { render json: @entry.errors, status: :unprocessable_entity }
#      end
#    end
#  end

  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
      respond_with @entry, :location => entries_url
   
  end
end
