# == Schema Information
#
# Table name: products
#
#  id            :integer          not null, primary key
#  type          :integer          not null
#  title         :string           not null
#  description   :text             not null
#  year_produced :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Product < ApplicationRecord
  enum type: [:anime, :movie]

  validates :title, uniqueness: true
end
