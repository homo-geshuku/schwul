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

FactoryBot.define do
  factory :product do
    type 1
    title "MyString"
    description "MyText"
    year_produced 1
  end
end
