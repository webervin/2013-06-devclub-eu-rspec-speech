class RSpecFramework
  def best_framework_ever?
    true
  end

  def best_syntax_provider?
    true
  end

  def presentation
    slides = Object.new
    def slides.given_by? speaker
      speaker == :ervin
    end

    def slides.presented_at? location
      location == :devclub
    end
    slides
  end

end