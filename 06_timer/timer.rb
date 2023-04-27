require 'time'

class Timer
  #write your code here
  attr_accessor :timer, :seconds

  def initialize 
   @seconds = 0
  end

  def time_string
    @seconds
  end

  def time_string
    if @seconds == 0
      @time_string = "00:00:00"
		elsif @seconds > 0 and seconds < 60
      @time_string = "00:00:#{seconds}"
    elsif seconds >= 60 and seconds < 3600
      # should display 00:min:seconds

      # convert from seconds into minutes (integer)
      int_min = seconds / 60
      if int_min < 10
        int_min = "0" + int_min.to_s
      end

      # determine remaining seconds 
      rem_sec = seconds % 60
      if rem_sec < 10
        rem_sec = "0" + rem_sec.to_s
      end

      @time_string = "00:#{int_min}:#{rem_sec}"
    else 
      # should display hrs:min:seconds

      # convert seconds into hours (integer)
      int_hr = seconds / 3600
      if int_hr < 10
        int_hr = "0" + int_hr.to_s
      end

      # convert seconds into hours (minutes)
      rem_min = (seconds % 3600) / 60
      if rem_min < 10
        rem_min = "0" + rem_min.to_s
      end

      # determine remaining seconds
      rem_sec = (seconds - (int_hr.to_i * 60 * 60)) - (rem_min.to_i * 60)
      if rem_sec < 10
        rem_sec = "0" + rem_min.to_s
      end

      @time_string = "#{int_hr}:#{rem_min}:#{rem_sec}"
    end	
	end
end
