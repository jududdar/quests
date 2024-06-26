function event_say(e)
	if(e.message:findi("befallen")) then
		e.self:Say("You did well to ride swiftly with this news. I must take this directly to Valeron Dushire. If you learn more about this plot that would unleash this monster upon Norrath or wish to someday soon aid the Knights of Truth in putting down this evil, then return to speak to me again at a later time.");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 31492})) then
		e.self:Say("It was a fine and valiant steed to serve its master beyond the grave, but it looks to be near its end. But I have a fine eye for horses, and I dare say it will serve you one more time.");
		e.other:QuestReward(e.self,0,0,0,0,31496,6400); -- Item: Bridle of Sir Ariam
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 18474})) then
		e.self:Say("By Marr, what is this? .. Burning Dead .. .. Marnek! By my blade this must be stopped! Where did you find this?");
		e.other:QuestReward(e.self,math.random(1,10),math.random(1,10),0,0,0,6400);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
