class Album < ApplicationRecord

    validates :title, :band_id, :year, :live, presence: true

    belongs_to :band,
        primary_key: :id,
        foreign_key: :band_id,
        class_name: :Band
end
