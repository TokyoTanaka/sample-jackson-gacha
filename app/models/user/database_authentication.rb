# frozen_string_literal: true

# == Schema Information
#
# Table name: user_database_authentications
#
#  email              :string(255)      not null
#  encrypted_password :string(255)      not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :bigint           not null, primary key
#
# Indexes
#
#  index_user_database_authentications_on_email  (email) UNIQUE
#
class User::DatabaseAuthentication < ApplicationRecord
  devise :database_authenticatable, :validatable

  belongs_to :user
end
