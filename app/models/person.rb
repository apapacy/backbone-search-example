class Person < ActiveRecord::Base
  def self.name_like(name)
    where('people.first_name like ?', "%#{name}%")
  end
end
