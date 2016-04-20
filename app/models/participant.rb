class Participant < ActiveRecord::Base
  belongs_to :group

  def debts
    Debt.where(from: self).sum(:amount)
  end

  def credits
    Debt.where(to: self).sum(:amount)
  end

end
