class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :rol
  #has_many :pacientes
  #accepts_nested_attributes_for :pacientes, reject_if: :all_blank, allow_destroy: true
end
