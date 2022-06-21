# frozen_string_literal: true

# == Schema Information
#
# Table name: user_password_reset_requests
#
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  user_id                :bigint           not null, primary key
#
# Indexes
#
#  index_user_password_reset_requests_on_reset_password_token  (reset_password_token) UNIQUE
#
class User::PasswordResetRequest < ApplicationRecord
  devise :recoverable

  belongs_to :user
end
