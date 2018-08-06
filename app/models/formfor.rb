class Formfor < ActiveRecord::Base
     has_many :comment2s, dependent: :destroy
end
