class Skill < ActiveRecord::Base
  VALID_CONTEXTS = %w(technical creative)

  validates :name, :presence => true
  validate :validate_context

  #Not sure about this, check SQL designer
  has_many :users
  has_many :proficiencies, through: :users
 

  private
  def validate_context
    p self.context
    self.errors[:context] = "must be one of: #{VALID_CONTEXTS.join(', ')}" unless VALID_CONTEXTS.include? self.context
  end
end
