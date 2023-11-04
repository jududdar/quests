-- Attempt to limit players level 53 and over from engaging nagafen and vox.
-- Banished to Permafrost.
local SpawnX = 0;
local SpawnY = 0;
local SpawnZ = 0;
local SpawnH = 0;

function event_spawn(e)
	SpawnX = e.self:GetX();
	SpawnY = e.self:GetY();
	SpawnZ = e.self:GetZ();
	SpawnH = e.self:GetHeading();
	local range = 210;
	local range2 = 98;
	eq.set_proximity(SpawnX - range, SpawnX + range, SpawnY - range2, SpawnY + range, SpawnZ - 20, SpawnZ + 50);
end

function event_enter(e)
	if(e.other:GetLevel() > 52 and e.other:Admin() < 80) then
		e.other:Message(4,"I will not fight you, but I shall banish you!");
		e.other:MovePC(30,-7024,2020,-60.7,0); -- Zone: burningwood 
	end
end

function event_signal(e)
	if ( e.signal == 1 ) then
		e.self:Shout("The Sleeper stirs!  A glorious new age for Norrath is about to begin, and my exile is about to end!");
	end
end
