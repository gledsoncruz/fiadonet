class ConsumosController < ApplicationController
  # GET /consumos
  # GET /consumos.json
  def index
    @consumos = Consumo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @consumos }
    end
  end

  # GET /consumos/1
  # GET /consumos/1.json
  def show
    @consumo = Consumo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @consumo }
    end
  end

  # GET /consumos/new
  # GET /consumos/new.json
  def new
    @consumo = Consumo.new
    @consumo.cliente = Cliente.find(params[:cliente])
    #@cliente = params[:cliente] # "value1"
    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @consumo }
    end
  end

  # GET /consumos/1/edit
  def edit
    @consumo = Consumo.find(params[:id])
  end

  # POST /consumos
  # POST /consumos.json
  def create
    @consumo = Consumo.new(params[:consumo])

    respond_to do |format|
      if @consumo.save
        format.html { redirect_to @consumo.cliente, :notice => 'Consumo adicionado com sucesso.' }
        format.json { render :json => @consumo, :status => :created, :location => @consumo }
      else
        format.html { render :action => "new" }
        format.json { render :json => @consumo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consumos/1
  # PUT /consumos/1.json
  def update
    @consumo = Consumo.find(params[:id])

    respond_to do |format|
      if @consumo.update_attributes(params[:consumo])
        format.html { redirect_to @consumo, :notice => 'Consumo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @consumo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consumos/1
  # DELETE /consumos/1.json
  def destroy
    @consumo = Consumo.find(params[:id])
    @consumo.destroy

    respond_to do |format|
      format.html { redirect_to consumos_url }
      format.json { head :no_content }
    end
  end
end
