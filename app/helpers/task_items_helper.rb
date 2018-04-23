module TaskItemsHelper

  # trying to add a deadline helper function
  def daysToDeadline(deadline)
    # d = Date.parse(deadline)
    Date.parse(deadline - Date.today).to_i
  end

  def dateChange(dt)
    dt.strftime("%m/%d/%Y")
  end
end
