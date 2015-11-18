module CurrentStudent
  extend ActiveSupport::Concern

  private

  def set_student 
    @cart = Student.find(session[:Student_id])
  rescue ActiveRecord::RecordNotFound
    @student = Student.create
    session[:student] = @student.id
  end
end
