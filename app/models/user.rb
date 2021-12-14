class User < ApplicationRecord
  # has_and_belongs_to_many :tests
  has_many :tests_users, dependent: :destroy
  has_many :tests, through: :tests_users, dependent: :destroy
  has_many :author_tests, class_name: 'Test', foreign_key: :author_id, dependent: :destroy

  def finished_tests(level)
    tests.where(level: level)
  end
end
