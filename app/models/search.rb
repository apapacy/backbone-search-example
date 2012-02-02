class Search < ActiveRecord::Base

  def people
    if q.present?
      Person.name_like(q)
    else
      Person
    end
  end
end
