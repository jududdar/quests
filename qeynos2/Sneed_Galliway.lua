function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hello, " .. e.other:GetCleanName() .. ". I am Sneed Galliway, merchant and citizen. I run the only general store in all of Qeynos, serving the needs of the many adventurers who call Qeynos home. If only one of them would take the time to help me with my er... [problem]...");
	elseif(e.message:findi("problem")) then
		e.self:Say("Shhh.. Keep it down. It seems I have a little rodent problem in my store. A mangy rat keeps digging into my crates of rations. He looks as if he is diseased. If you help me by killing this pest, I will make it worth your while. Bring me his head as proof it is done.");
	elseif(e.message:findi("ronn castekin")) then
		e.self:Say("Ronn? I saw him a few days ago. He was with someone dressed in black I didn't recognize .. I think I saw them later that day, swimming in the north pond. They really should stay away from the aqueducts. They can be quite dangerous. Full of rats, ya know.");
	elseif(e.message:findi("tax")) then
		e.other:Faction(e.self,291,-1); -- Faction: Merchants of Qeynos		
		e.self:Say("Hey, " .. e.other:GetCleanName() .. ", how the heck did Vicus convince you to do his job? He better be paying you well. Here you go.");
		e.other:SummonCursorItem(13172); -- Item: Galliways Tax Payment
	end
end

function event_trade(e)

	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13717})) then -- rat head
		e.self:Say("HA! Good work! I knew you were the person for the job. A regular ratslayer you are. Here is your reward as promised. be sure you keep this between us.");
		-- Confirmed Live Factions and Experience
		e.other:Faction(e.self,291,25,0); -- Faction: Merchants of Qeynos
		e.other:Faction(e.self,223,-5,0); -- Faction: Circle of Unseen Hands
		e.other:Faction(e.self,219,3,0); -- Faction: Antonius Bayle
		e.other:Faction(e.self,229,2,0); -- Faction: Coalition of Tradefolk
		e.other:Faction(e.self,262,5,0); -- Faction: Guards of Qeynos
		e.other:QuestReward(e.self,math.random(1,10),0,0,0,eq.ChooseRandom(13006,13009,13002,13100),200); -- Water Flask, Bandages, Torch, Fishing Pole
	end
	
	item_lib.return_items(e.self, e.other, e.trade)
	
end
