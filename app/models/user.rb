class User < ApplicationRecord
    before_save { email.downcase! }

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  
    # Validate name: chỉ kiểm tra độ dài và sự hiện diện
    validates :name, presence: true, length: { maximum: 50 }
  
    # Validate email: kiểm tra định dạng + không trùng lặp
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: true
  
    has_secure_password
  
    validates :password, presence: true, length: { minimum: 6 }
end
