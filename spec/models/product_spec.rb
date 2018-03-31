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

require "rails_helper"

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
