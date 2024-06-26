function event_say(e)
	local fac = e.other:GetFaction(e.self);
	
	if(e.message:findi("hail")) then
		e.self:Say("Hello. Might I ask what you are looking for?");
	elseif(e.message:findi("treant wood")) then
		if(fac < 6) then
			e.self:Say("You are a new courier from the Faydarks. I am sorry I did not stay closer to the docks. I hear that part of Freeport is dangerous and is filled with many rogues. I shall require a new Small Lantern in trade for the Treant Wood.");
		else
			e.self:Say("Your ways are considered vile to Faydark's Champions. Leave before my rage overcomes my restraint.");
		end
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13003})) then -- Small Lantern
		e.self:Say("Thanks, friend. I have run a long way to get here in time. Mostly at night. I lost my lantern in a card game in Highkeep.");
		e.other:Faction(e.self,246,1,0); -- Faydark's Champions
		e.other:Faction(e.self,279,1,0); -- King Tearis Thex
		e.other:Faction(e.self,226,1,0); -- Clerics of Tunare
		e.other:Faction(e.self,310,1,0); -- Soldiers of Tunare
		e.other:Faction(e.self,234,-1,0); -- Crushbone Orcs
		e.other:QuestReward(e.self,0,0,0,0,eq.ChooseRandom(13824,13824,13824,13824,13824,13824,13824,13824,13824,12334),50); -- 1/10 chance of wooden heart 9/10 chance of Wooden Shards
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

--eof freportw - Jyle Windshot
