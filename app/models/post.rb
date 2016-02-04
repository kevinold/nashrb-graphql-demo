class Post < ActiveRecord::Base
  has_one :author
end
