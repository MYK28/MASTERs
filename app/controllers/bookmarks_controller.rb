class BookmarksController < ApplicationController
  before_action :authenticate_staff!

  def index
    @bookmarks = Bookmark.where(staff_id: current_staff.id)
  end

  def create
    @information = Information.find(params[:information_id])
    bookmark = @information.bookmarks.new(staff_id: current_staff.id)
    if bookmark.save
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  end

  def destroy
    @information = Information.find(params[:information_id])
    bookmark = @information.bookmarks.find_by(staff_id: current_staff.id)
    if bookmark.present?
      bookmark.destroy
      # bookmark.save
      redirect_to request.referer
    else
      redirect_to request.referer
    end
  end
end
