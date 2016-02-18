class Post < ActiveRecord::Base
  has_many :memberships
  has_many :users, :through => :memberships
  has_many :post_upvotes

  include PgSearch
  pg_search_scope :search, against: [:front, :back],
  using: {tsearch: {dictionary: 'english'}},
  associated_against: {users: :name}

  def self.text_search(query)
    search(query)
  end

end
