
function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 1839}, 0)) then  -- Full Muffin Crate
		e.self:Say("These are quality muffins! You are obviously quite a skilled baker. Here is your payment as promised. Now I can get back to business again.");
		e.other:Faction(e.self,63,2); -- coalition of tradefolk
		e.other:Faction(e.self,281,2); -- knights of truth
		e.other:Faction(e.self,291,1); -- merchants of qeynos
		e.other:Faction(e.self,336,2); -- coalition of tradefolk underground
		e.other:QuestReward(e.self,0,0,math.random(5,8),0,0,500)
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 1838}, 0)) then  -- Bag of Bread Loaves
		e.self:Say("Oh, wonderful fresh bread! Thank you for making the trip, that is such a long way. Here, I hope this covers your travel expenses. You have my deepest thanks.");
		e.other:Faction(e.self,63,4); -- coalition of tradefolk
		e.other:Faction(e.self,281,4); -- knights of truth
		e.other:Faction(e.self,291,3); -- merchants of qeynos
		e.other:Faction(e.self,336,4); -- coalition of tradefolk underground
		e.other:QuestReward(e.self,0,0,math.random(5,8),math.random(1,2),0,500)	
	end
	item_lib.return_items(e.self, e.other, e.trade)
end