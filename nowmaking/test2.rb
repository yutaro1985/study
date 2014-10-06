#~/.rbenv/shims/ruby
STDOUT.sync = true # DO NOT REMOVE
# The code below will read all the game information for you.
# On each game turn, information will be available on the standard input, you will be sent:
# -> the total number of visible enemies
# -> for each enemy, its name and distance from you
# The system will wait for you to write an enemy name on the standard output.
# Once you have designated a target:
# -> the cannon will shoot
# -> the enemies will move
# -> new info will be available for you to read on the standard input.


# game loop
#$name_and_dist = Array(1).new{Array.new(2)}
loop do
    name_and_dist = Array.new(1).new{Array.new(2)}
    $count = gets.to_i # The number of current enemy ships within range
    $count.times do |i|
        # enemy: The name of this enemy
        # dist: The distance to your cannon of this enemy
        $enemy, $dist = gets.split(" ")
        $dist = $dist.to_i
        p i
        $name_and_dist[0][i] = $enemy
        $name_and_dist[1][i] = $dist
    end
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
# The name of the most threatening enemy (HotDroid is just one example
     puts $name_and_dist
    $name_and_dist = $name_and_dist.sort{ |a,b|
        a[1] <=> b[1]
    }

#    puts $name_and_dist[0][0]
end
