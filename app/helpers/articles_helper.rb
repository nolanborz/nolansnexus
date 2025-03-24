module ArticlesHelper
  def reading_time(content)
    text = ActionView::Base.full_sanitizer.sanitize(content)

    all_the_words = text.split.size

    minutes = (all_the_words / 225.0).ceil

    # makes sure we don't have like less than a minute that'd be awkward
    ttr = [ 1, minutes ].max
    if ttr == 1
      return ttr.to_s + " minute"
    end
    ttr.to_s + " minutes"
  end
end
