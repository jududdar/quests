function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hi there stranger, it's nice to see a new face in the Haven.  I'm currently on patrol, so please catch me another time.");
	end
end

function event_combat(e)
	if(e.joined) then
		eq.set_timer("combatsay",300000);
	else
		eq.stop_timer("combatsay");
	end
end

function event_timer(e)
	e.self:Say("A fool you are indeed to test your fighting skills to mine!  You shall now die by my blade!");
end

function event_death_complete(e)
	eq.stop_timer("combatsay");
end