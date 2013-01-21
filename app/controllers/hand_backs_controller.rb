class HandBacksController < ApplicationController
  # GET /hand_backs
  # GET /hand_backs.json
  def index
    @hand_backs = HandBack.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hand_backs }
    end
  end

  # GET /hand_backs/1
  # GET /hand_backs/1.json
  def show
    @hand_back = HandBack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hand_back }
    end
  end

  # GET /hand_backs/new
  # GET /hand_backs/new.json
  def new
    @hand_back = HandBack.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @hand_back }
    end
  end

  # GET /hand_backs/1/edit
  def edit
    @hand_back = HandBack.find(params[:id])
  end

  # POST /hand_backs
  # POST /hand_backs.json
  def create
    @hand_back = HandBack.new(params[:hand_back])

    respond_to do |format|
      if @hand_back.save
        format.html { redirect_to @hand_back, notice: 'Hand back was successfully created.' }
        format.json { render json: @hand_back, status: :created, location: @hand_back }
      else
        format.html { render action: "new" }
        format.json { render json: @hand_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /hand_backs/1
  # PUT /hand_backs/1.json
  def update
    @hand_back = HandBack.find(params[:id])

    respond_to do |format|
      if @hand_back.update_attributes(params[:hand_back])
        format.html { redirect_to @hand_back, notice: 'Hand back was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @hand_back.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hand_backs/1
  # DELETE /hand_backs/1.json
  def destroy
    @hand_back = HandBack.find(params[:id])
    @hand_back.destroy

    respond_to do |format|
      format.html { redirect_to hand_backs_url }
      format.json { head :no_content }
    end
  end
end
