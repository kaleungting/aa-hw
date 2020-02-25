class Person < ApplicationRecord

    validates :name, :house

    belongs_to :home
        primary_key: :id,
        foreign_key: :house_id,
        class_name: :House
end