module UrlsHelper
  def generate_short_url(url)
    "#{request.base_url}/#{url.code}"
  end

  def generate_facebook_share_url(url)
    "https://www.facebook.com/sharer/sharer.php?u=#{generate_short_url(url)}"
  end

  def generate_twitter_share_url(url)
    "https://twitter.com/intent/tweet?text=#{generate_short_url(url)}"
  end

  def generate_googleplus_share_url(url)
    "https://plus.google.com/share?url=#{generate_short_url(url)}"
  end
end
