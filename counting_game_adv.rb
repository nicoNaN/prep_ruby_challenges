def counting_game( total_players, max_count )

	current_count = 1
	player_id = 1
	counting_forward = true

	until current_count > max_count

	if current_count % 7 == 0 # if our count is divisible by 7...
	  puts "Player #{player_id} says: \'#{current_count}!\'"
	  counting_forward = !counting_forward #...reverse the direction.
	  if !counting_forward # if we're going backward...
	    if player_id == 1 #...make sure we roll over to 10 when we hit 1.
	      player_id = total_players
	    else
	      player_id -= 1 # if we're not at one, go to the next player in reverse
	    end
	  else # otherwise (if we're going forward)...
	    if player_id == total_players #...make sure we roll over to 1 when we hit 10.
	      player_id = 1
	    else
	      player_id += 1 #if we're not at ten, go to the next player
	    end
	  end

	elsif current_count % 11 == 0 # if our count is divisible by 11
	  puts "Player #{player_id} says: \'#{current_count}!\'"
	  if !counting_forward
	    if player_id == 1
	      player_id = total_players
	    else
	      player_id -= 2 # if we're going backward, skip a person
	    end
	  else
	    if player_id == total_players
	      player_id = 1
	    else
	      player_id += 2 # if we're going forward, skip a person
	    end
	  end

	else # if our count is not divisible by 7 or 11
	  puts "Player #{player_id} says: \'#{current_count}!\'"
	  if !counting_forward
	    if player_id == 1
	      player_id = total_players
	    else
	      player_id -= 1 # go backward by 1 if our direction is backward
	    end
	  else
	    if player_id == total_players
	      player_id = 1
	    else
	      player_id += 1 # go forward by 1 if our direction is forward
	    end
	  end
	end
	current_count += 1
	end
end

counting_game( 60, 100 ) # player 3 is on some wizard stuff
