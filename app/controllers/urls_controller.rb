class UrlsController < ApplicationController

  # devise helper
  # makes sure user is logged in before index/delete action
  before_action :authenticate_user!, only: [:index, :destroy]

  # create action
  # adds new url to database
  def create
    # create url object from post parameters
    @url = Url.new(url_params)
    # validate
    if @url.valid?
      # add url to database if not found
      @url = Url.find_or_create_by(path: @url.path) do | url |
        # generate short code before saving
        url.generate_code
      end
      # if user is signed in
      if user_signed_in?
        # associate user with url
        @url.users << current_user
        # re-save with association
        @url.save
      end
    end
    # render new view
    render 'new', layout: 'layouts/cover'
  end

  # destroy action
  # removes user association with url
  def destroy
    # delete user/url association
    current_user.urls.delete(Url.select(:id).find_by(code: params[:code]))
    # set flash message
    flash[:notice] = t('div.text4')
    # redirect to index action
    redirect_to(urls_path)
  end

  # index action
  def index
  end

  # new action
  def new
    # use the cover layout
    render layout: 'layouts/cover'
  end

  # show action
  # redirects user to url using short code
  def show
    # find url by short code parameter
    url = Url.find_by(code: params[:code])
    # if url is found
    # redirect to full path
    if url.present?
      redirect_to(url.path)
    else
      # set flash message and redirect to root path
      flash[:notice] = t('div.text5')
      redirect_to(root_url)
    end
  end

  # whitelists url params for mass assignment
  def url_params
    params.require(:url).permit(:path)
  end
end
