function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Greetings " .. e.other:GetCleanName() .. ". If you're looking to sell a white horse, I'll be happy to give you a fair price.  If you've got a different color horse you'd like to sell talk to one of my brothers.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 21805})) then
		e.other:QuestReward(e.self,0,0,0,0,21820); -- Item: Bag of Platinum Pieces

	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 21806})) then
		e.other:QuestReward(e.self,0,0,0,0,21821); -- Item: Heavy Bag of Platinum

	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 21807})) then
		e.other:QuestReward(e.self,0,0,0,0,21822); -- Item: Big Bag of Platinum

	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 21808})) then
		e.other:QuestReward(e.self,0,0,0,0,21823); -- Item: Huge Bag of Platinum
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-------------------------------------------------------------------------------------------------
-- Converted to .lua using MATLAB converter written by Stryd
-- Find/replace data for .pl --> .lua conversions provided by Speedz, Stryd, Sorvani and Robregen
-------------------------------------------------------------------------------------------------
