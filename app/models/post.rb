class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :clickbait    

    def clickbait
        if :title.to_s.include? "True" 
        else
            errors.add(:title, "must be clickbait")  
        end
    end
    


end
