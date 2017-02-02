class Timer
  attr_accessor :seconds 

  def initialize
    @seconds = 0
  end

  def time_string
    string = []
    secs = (@seconds%60)
    mins = (@seconds/60)%60
    hrs = (@seconds/3600)

    string = "#{pad(hrs)}:#{pad(mins)}:#{pad(secs)}"
  end

  def pad(number)
    (number).to_s.length > 1 ? number.to_s : "0" + number.to_s
  end
end
