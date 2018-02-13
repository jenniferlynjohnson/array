# Stranger Things Main Theme
# NOTE: Each measure's total sleep adds up to 4 because the time signature is 4/4
use_bpm 160
use_synth :saw
array=[:c2, :e2, :g2, :b2, :c3, :b2, :g2, :e2]#this is the list of notes that will be played in order when the play button is pressed
index=0 #I set the original index to zero signaling sonic pi to play the first listed note in the array
with_fx :distortion do
  #first set of eighth notes
  live_loop :stranger_things do
    8.times do #8 times do means repeat the following code a total of 8 times
      play array[index]
      sleep 0.5
      index=index+1
    end
    index=0
  end
end
