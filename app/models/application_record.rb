class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # if user_signed_in?
  def already_favorited?(item)
    favorites.exists?(item_id: item.id)
    # end
  end
end
