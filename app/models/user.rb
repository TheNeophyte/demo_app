class User < ActiveRecord::Base
	has_many :microposts
	has_many :haikus
end
