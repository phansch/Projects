# Currently not playing an audio cue at the end

def repeat_every(interval)
  loop do
    start_time = Time.now
    yield
    elapsed = Time.now - start_time
    sleep([interval - elapsed, 0].max)
  end
end

def main
  print "Start a countdown (minutes): "
  countdown = gets.chomp.to_i

  endtime = Time.now + (countdown)

  puts "Starttime: #{Time.now}"
  puts "Endtime: #{endtime}"

  repeat_every(1) do
    if Time.now >= endtime then
      puts "Stopped at #{Time.now}"
      break
    end
  end
end

main