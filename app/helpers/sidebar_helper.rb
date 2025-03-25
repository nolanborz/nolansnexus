module SidebarHelper
  def sidebar_articles
    Rails.cache.fetch(@sidebar_cache_key, expires_in: 1.hour) do
      Article.order(created_at: :desc).limit(5)
      # once I get a published column on the article model I can implement this
      # Article.where(published: true)
      #     .order(published_at: :desc)
      # .limit(5)
    end
  end
end
