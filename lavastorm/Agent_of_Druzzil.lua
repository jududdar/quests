function event_say(e)
	if ( e.message:findi("hail") ) then 
		e.self:Say("Hail, mortal. If you are wishing to embark on a [tryout] for your guild to enter the Guild Rotation, please inform Druzzil if you wish to enter [Nagafen's Lair]. No experience or loot will be present here.");
	elseif ( e.message:findi("nagafen") and e.other:CastToClient():GuildID() != 0xFFFFFFFF ) then
		e.self:Say("Do not interfere with others' attempts lest you be actioned.");
		e.other:CastToClient():MovePC(1032, -267, -428, 108, *2);
	end
end