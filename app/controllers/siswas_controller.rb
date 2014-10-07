class SiswasController < ApplicationController
  # GET /siswas
  # GET /siswas.json
  def index
    @siswas = Siswa.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @siswas }
    end
  end

  # GET /siswas/1
  # GET /siswas/1.json
  def show
    @siswa = Siswa.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @siswa }
    end
  end

  # GET /siswas/new
  # GET /siswas/new.json
  def new
    @siswa = Siswa.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @siswa }
    end
  end

  # GET /siswas/1/edit
  def edit
    @siswa = Siswa.find(params[:id])
  end

  # POST /siswas
  # POST /siswas.json
  def create
    @siswa = Siswa.new(params[:siswa])

    respond_to do |format|
      if @siswa.save
        format.html { redirect_to @siswa, notice: 'Siswa was successfully created.' }
        format.json { render json: @siswa, status: :created, location: @siswa }
      else
        format.html { render action: "new" }
        format.json { render json: @siswa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /siswas/1
  # PUT /siswas/1.json
  def update
    @siswa = Siswa.find(params[:id])

    respond_to do |format|
      if @siswa.update_attributes(params[:siswa])
        format.html { redirect_to @siswa, notice: 'Siswa was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @siswa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /siswas/1
  # DELETE /siswas/1.json
  def destroy
    @siswa = Siswa.find(params[:id])
    @siswa.destroy

    respond_to do |format|
      format.html { redirect_to siswas_url }
      format.json { head :no_content }
    end
  end
end
