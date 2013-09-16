require 'audite'

def repeat_every(interval)
  loop do
    start_time = Time.now
    yield
    elapsed = Time.now - start_time
    sleep([interval - elapsed, 0].max)
  end
end

def main
  player = Audite.new
  player.load('alarm.mp3')

  print "Start a countdown (minutes): "
  countdown = gets.chomp.to_i

  endtime = Time.now + (countdown * 60)

  puts "Starttime: #{Time.now}"
  puts "Endtime: #{endtime}"

  repeat_every(1) do
    if Time.now >= endtime then
      puts "Stopped at #{Time.now}"
      break
    end
  end
  player.start_stream
end

main