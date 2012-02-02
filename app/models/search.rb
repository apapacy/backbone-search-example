class Search < ActiveRecord::Base

  def people
    PersonSearch.new(self).people
  end
end

class PersonSearch
  def initialize(search)
    @search = search
  end

  def q
    @search.q
  end

  def people
    if q.present?
      Person.name_like(q)
    else
      Person
    end
  end
end
