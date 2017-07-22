require "reform/form/dry"

class Member
  attr_accessor :firstname
end

class PersonalData < Reform::Form
  include Reform::Form::Dry
  
  property :firstname
  
  validate do
    required(:firstname).filled
  end
end
