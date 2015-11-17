module CurrentMember
  extend ActiveSupport::Concern

  private

  def set_cart 
    @cart = Member.find(session[:Member_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Member.create
    session[:member_id] = @member.id
  end
end
