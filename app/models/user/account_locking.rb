# frozen_string_literal: true

# == Schema Information
#
# Table name: user_account_lockings
#
#  failed_attempts :integer          default(0), not null
#  locked_at       :datetime
#  unlock_token    :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :bigint           not null, primary key
#
# Indexes
#
#  index_user_account_lockings_on_unlock_token  (unlock_token) UNIQUE
#
class User::AccountLocking < ApplicationRecord
  devise :lockable

  belongs_to :user
end
