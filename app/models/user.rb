class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   GENDER_TYPES = [ ["Male","0"], [ "Female","1" ] ]
   validates_inclusion_of :is_female, in: [true, false]      
end
