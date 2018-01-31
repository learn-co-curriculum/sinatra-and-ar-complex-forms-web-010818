class Book < ActiveRecord::Base
  belongs_to :author

  def author_attributes=(author_name)
    
    if !author_name.empty?
      self.author_id = Author.create(name: author_name).id
    end
  end

end
