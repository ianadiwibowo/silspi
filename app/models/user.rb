class User < ApplicationRecord
  enum gender: %i[male female]
end
