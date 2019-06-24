class ArticlePolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    user.present?
  end

  def update?
    return true if user.present? && user == article.user
  end

  def destroy?
    return true if user.present? && user == article.user
  end

  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(published: true)
      end
    end
  end

  private

    def article
      record
    end
end
