function event_say(e)
	if(e.message:findi("hail")) then
	e.self:Say("Greetings, friend!! Nice to meet you. I see you enjoy barging into other people's rooms. No problem. I enjoy the company. What are you looking for?");
	elseif(e.message:findi("treant wood")) then
		e.self:Say("So you want treant shards? I have them. If you want them I will trade you for them. Hmm.. I will take 2 gold and how about a nifty Faydark Champion Tunic. That is all I want. No more, no less.");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13536, gold = 2})) then -- dirty green tunic and 2 gold.
		e.self:Say("Thanks, friend. I have run a long way to get here in time. Mostly at night. I lost my lantern in a card game in Highkeep.");
		e.other:Faction(e.self,246,1,0); -- Faydark's Champions
		e.other:Faction(e.self,279,1,0); -- King Tearis Thex
		e.other:Faction(e.self,226,1,0); -- Clerics of Tunare
		e.other:Faction(e.self,310,1,0); -- Soldiers of Tunare
		e.other:Faction(e.self,234,-1,0); -- Crushbone Orcs
		e.other:QuestReward(e.self,0,0,0,0,eq.ChooseRandom(13824,13824,13824,13824,13824,13824,13824,13824,13824,12334),500); -- 1/10 chance of wooden heart 9/10 chance of Wooden Shards
	end
	item_lib.return_items(e.self, e.other, e.trade)
end

-- END of FILE Zone: -- Jyle_Windshot *(FREPORTEAST VERSION)*
