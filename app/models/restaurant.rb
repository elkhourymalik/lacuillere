class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: {in: CATEGORIES}, presence: true

  def image_background
    case self.category
    when "chinese"
      "http://chinateachingexperience.com/wp-content/uploads/2014/07/great_wall_china.jpg"
    when "italian"
      "http://kickfeed.co/wp-content/uploads/2015/09/italia-1.jpg"
    when "japanese"
      "http://insight.japantoday.com/wp-content/uploads/2015/08/Japan-Landing_banner_3.jpg.1600x565_q85.jpg"
    when "french"
      "https://i.ytimg.com/vi/_FYKIhJZdaI/maxresdefault.jpg"
    when "belgian"
      "https://networks.nokia.com/sites/default/files/belgium.jpg"
    end
  end
end
