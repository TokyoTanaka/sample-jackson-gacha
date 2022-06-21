# frozen_string_literal: true

# == Schema Information
#
# Table name: user_account_trackings
#
#  current_sign_in_at :datetime
#  current_sign_in_ip :string(255)
#  last_sign_in_at    :datetime
#  last_sign_in_ip    :string(255)
#  sign_in_count      :integer          default(0), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint           not null, primary key
#
class User::AccountTracking < ApplicationRecord
  devise :trackable

  belongs_to :user
end
