module ApplicationHelper
  def find_useremail(id)
    User.find(id).email
  end
end
