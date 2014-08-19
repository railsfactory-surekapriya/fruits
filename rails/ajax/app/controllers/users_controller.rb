class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
 @user = user.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
   
    end
  end

  # GET /users/new
  def new
    @user = User.new
respond_to do |format|
format.html # new.html.erb
      format.json { render json: @user }
      format.js
end
  end

  # GET /users/1/edit
  def edit
 @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
      format.js
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
format.js
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
format.js
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
     format.js
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
 @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
format.js
    end
  end

 
end
