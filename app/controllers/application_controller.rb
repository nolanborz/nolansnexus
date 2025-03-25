class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  before_action :set_sidebar_cache_key

  private

  def set_sidebar_cache_key
    @sidebar_cache_key = "sidebar/articles/#{Article.maximum(:updated_at)&.to_i}"
  end
end
