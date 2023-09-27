function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Are not you a little short for a Highpass Guard?");
	elseif(e.message:findi("highpass guard")) then
		e.self:Say("Of course not. You are far too puny. Then what is your business here in my cell?");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13108})) then
		e.self:Say("So you are a member of the Silent Watch!! They are accepting anyone these days. I shall leave then. Here is your bracer back. Thank you for unlocking the door. ");
		e.other:Faction(e.self,226,25); -- Faction: Clerics of Tunare
		e.other:Faction(e.self,279,25); -- Faction: King Tearis Thex
		e.other:Faction(e.self, 5002, 15002); -- Faction: Anti-mage
		e.other:QuestReward(e.self,0,0,0,0,13112,2000); -- Item: Silent Watch Shield
		eq.depop_with_timer();
	end
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13109})) then
		e.self:Say("The Royal Amulet of Thex!! I missed it so. I am sorry I escaped so quickly. I am glad you did not run into the Teir'Dal torturers. They are quite formidable. I shall be continuing on to Qeynos. Here. Take this as proof that you have rescued me. My father should be quite happy with your deed. Such beauty as mine should never be locked up. If you cannot find my father then search for Tolon Nurbyte. He is usually at the Traveler's Inn. Good bye.");
		e.other:Faction(e.self,226,25); -- Faction: Clerics of Tunare
		e.other:Faction(e.self,279,25); -- Faction: King Tearis Thex
		e.other:Faction(e.self, 5002, 15002); -- Faction: Anti-mage
		e.other:QuestReward(e.self,0,0,0,0,18841,2000); -- Item: Silent Watch Shield
		eq.depop_with_timer();
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
