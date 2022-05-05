class Course < ApplicationRecord
    validates :course, presence: true, length: {minimum: 8, maximum: 9}
end