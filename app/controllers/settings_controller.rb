class SettingsController < ApplicationController

  before_action :authenticate_admin_user!
  before_action :set_setting, only: [:show, :edit, :edit_about, :edit_contact, :edit_swag_shop, :update, :destroy, :remove_home_image]

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

  def remove_home_image
    @setting.remove_home_image!
    @setting.save

    respond_to do |format|
      format.html { redirect_to edit_setting_path(@setting) }
      format.js { }
    end
  end

  private

    def set_setting
      @setting = Setting.find(params[:id])
    end

    def setting_params
      params.require(:setting).permit(:title, :subtitle, :description, :section_title, :projects_title,
        :main_image_url, :home_image, :remove_home_image, :contact_page_title, :contact_page_text,
        :about_page_title, :about_page_text, :shop_page_title, :shop_page_text )
    end
end


