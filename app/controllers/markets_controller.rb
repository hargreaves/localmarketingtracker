class MarketsController < ApplicationController

  def index
  	
    	@markets = Market.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @initiatives }
    end
  end

  def new
    @market = Market.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @market }
    end
  end


  def edit
    @market = Market.find(params[:id])
  end


  def create
    @market = Market.new(params[:initiative])

    respond_to do |format|
      if @market.save
        format.html { redirect_to @market, notice: 'Market was successfully created.' }
        format.json { render json: @market, status: :created, location: @market }
      else
        format.html { render action: "new" }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    @market = Market.find(params[:id])

    respond_to do |format|
      if @market.update_attributes(params[:market])
        format.html { redirect_to @market, notice: 'Market was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @market = Market.find(params[:id])
    @market.destroy

    respond_to do |format|
      format.html { redirect_to markets_url }
      format.json { head :no_content }
    end
  end
end

