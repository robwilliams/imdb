module FilmsHelper

  def genres_for_select
    Genre.all.collect {|g| [g.title, g.id]}
  end
end
