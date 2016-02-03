module UsersHelper
  def submission_count(number_of_submissions, type_of_submission)
    if number_of_submissions == 0
      "#{@user} has not submitted any #{type_of_submission} yet."
    else
      pluralize(@user.type_of_submission.count, type_of_submission)
    end
  end
end
