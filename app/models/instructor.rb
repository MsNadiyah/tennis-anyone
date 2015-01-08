class Instructor
  include Mongoid::Document
  field :name, type: String
  field :zip, type: Integer
  field :gender, type: String
  field :email, type: String
  field :password, type: String
  field :password_confirmation, type: String
  field :password_digest, type: String
  field :highest_level, type: String
  field :blurb, type: String #blurb
  field :lesson_type, type: String
  field :lesson_ages, type: String
  field :lesson_speciality, type: String
  field :rate_hourly, type: Integer
  field :rate_clinic, type: Integer
  field :pro_availability, type: String
end
