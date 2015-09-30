class User < ActiveRecord::Base
    has_secure_password
    :email
    validates_uniqueness_of :email
end

