-- Test of Enlightenment - enchanter epic - start of quest

function event_say(e)
	if (e.message:findi("are you mizzle")) then
		e.self:Say("Oh hello! I'm Mizzle, that I am. I bet you want to be given true clarity, don't you?");
	elseif (e.message:findi("required component")) then
		e.self:Say("Then bring me a spoon, the one key, the lost scroll, and the book Charm and Sacrifice. I will then reward you with what you seek.");
	elseif (e.message:findi("spoon")) then
		e.self:Say("Its a giant sized tool I will use to stir my magical pot. The spoon will help finish the ritual of crafting.");
	elseif (e.message:findi("one key")) then
		e.self:Say("It is a key I lost long ago when I was travelling with a companion. We were traveling in the new lands flying over some large crevices when the key dropped out of my pocket.");
	elseif (e.message:findi("lost scroll")) then
		e.self:Say("The lost scroll contains the magical incantation I need to help you out. It was penned ages ago by the Elves. It was lost along with its protector during one of the raids on the Outpost in Firiona. I fear it may be lost for good.");
	elseif (e.message:findi("book of charm and sacrifice")) then
		e.self:Say("Oh, that is a book of good reading. If you want to take the time to read it. I haven't had much free time to read it, but now that you are getting supplies for me, I can take a break.");
	elseif(e.message:findi("sack")) then
		e.self:Say("Before I provide the item, you must show me that you have spoken to Jeb.");	
	end
end

function event_trade(e)
	local item_lib = require("items");
	if (item_lib.check_turn_in(e.self, e.trade, {item1 = 10604})) then
		e.self:Say("It is time then, are you ready to get the required components?");
		e.other:QuestReward(e.self,0,0,0,0,10604) -- Item: Jeb's Seal
		e.other:QuestReward(e.self,0,0,0,0,17861) -- Item: An Enchanters Sack
	elseif (item_lib.check_turn_in(e.self, e.trade, {item1 = 10636})) then
		e.self:Say("Oh excellent, you have done what is required. Here take this part, and seek the third master, you are well on your way.");
		e.other:Faction(e.self,404,100); -- Faction: True Spirit
		e.other:QuestReward(e.self,0,0,0,0,10611,10000);
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
