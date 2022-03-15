class Band < ApplicationRecord

    validates :name, uniqueness: true

    has_many :albums,
        primary_key: :id,
        foreign_key: :band_id,
        class_name: :Album
end
