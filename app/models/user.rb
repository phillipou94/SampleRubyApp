class User < ActiveRecord::Base
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   before_save { self.email.downcase! } #downcase all characters in email
   #self is also optional on the right hand side of expression
   validates(:name, presence: true, length: {maximum:50}) #overwrites valid? method
   validates(:email, presence: true, length: {maximum:255}, format: {with:VALID_EMAIL_REGEX}, uniqueness:{ case_sensitive: false })
   #case-sensitive:false means we turn off case-sensitive. capitalization doesn't matter
   #capitalized letters and uncapitalized are the same
   validates(:password, length: { minimum: 6 })

   has_secure_password
end
