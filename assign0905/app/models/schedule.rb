class Schedule < ActiveRecord::Base
  belongs_to :support
   
  validates :vacation , exclusion: {in: ['yes'] ,  message: " :     Selected support is not available on this day."}
  validate :workingday
  validate :holiday


   def holiday
   if dateshedule.strftime('%d %m') == "01 01" or dateshedule.strftime('%d %m') == "01 19" or dateshedule.strftime('%d %m') == "02 16" or dateshedule.strftime('%d %m') == "03 31" or dateshedule.strftime('%d %m') == "05 25" or dateshedule.strftime('%d %m') == "07 04" or dateshedule.strftime('%d %m') == "09 07" or dateshedule.strftime('%d %m') == "11 27" or dateshedule.strftime('%d %m') == "12 25"
   	errors.add(:dateshedule , "  : The selected day is public holiday")
  end
end

  def workingday
  	require 'date'
  	if dateshedule.strftime('%a')=="Sat" or dateshedule.strftime('%a') == "Sun"
  		errors.add(:dateshedule , "     : The selected day is the holiday, please select the next available working day for this support")
  end
end

  end