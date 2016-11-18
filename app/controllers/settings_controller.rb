class SettingsController < ApplicationController

  before_action :authenticate_admin_user!
  before_action :set_setting, only: [:show, :edit, :update, :destroy]

  def index
    redirect_to '/settings/1/edit'
  end

  def edit
  end

  def new
    @setting = Setting.new
  end

  def create
    @setting = Setting.new(setting_params)
    respond_to do |format|
      if @setting.save
        format.html { redirect_to '/manage', notice: 'Settings were successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /parts/1
  def update
    respond_to do |format|
      if @setting.update(setting_params)
        format.html { redirect_to '/manage', notice: 'Settings were successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  private

    def set_setting
      @setting = Setting.find(params[:id])
    end

    def setting_params
      params.require(:setting).permit(:title, :subtitle, :description, :section_title, :projects_title, :main_image_url)
    end
end


