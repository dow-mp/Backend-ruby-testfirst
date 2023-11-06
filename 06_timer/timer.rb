class Timer
  #write your code here
  attr_accessor :seconds
  
  def initialize
    @seconds = 0
  end

  def padded(num)
    if num >=0 && num < 10
      padded_num = "0" + num.to_s
    else
      num.to_s
    end
  end

  def convert_sec_to_hr(seconds)
    if seconds < 3600
      min = padded(seconds / 60)
      rem_seconds = padded(seconds % 60)
      "00:#{min}:#{rem_seconds}"
    else
      hr = padded(seconds / 60 / 60)
      leftover_seconds = seconds - (hr.to_i * 60 * 60)
      min = padded(leftover_seconds / 60)
      rem_seconds = padded(leftover_seconds % 60)
      puts  "#{hr}:#{min}:#{rem_seconds}"
      "#{hr}:#{min}:#{rem_seconds}"
    end
  end

  def time_string
    if seconds == 0
      time = "00:00:00"
    elsif seconds > 0 && seconds < 60
      time = "00:00:#{seconds}"
    elsif seconds > 60
      convert_sec_to_hr(seconds)
    end
  end
end