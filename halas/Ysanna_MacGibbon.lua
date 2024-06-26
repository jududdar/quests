--Added faction requirement of Indifferent or better as per allakhazams

function event_signal(e)
	if(e.signal == 1) then
		e.self:Say("The mammoth calf hides are used to shield our beasts of burden from the icy wind. You are probably now asking what shields us Northmen from that same icy wind eh? Well, along with many other furs and leathers, we have come to find that [gnoll fur] of all things is a good insulator against the cold. Look at their tiny bodies and it's obvious their fur does something good.");
	end
end

function event_say(e)
	if(e.message:findi("gnoll fur")) then -- no faction req for this response
		e.self:Say("You should not be asking where or what a gnoll is, but asking how I make use of that patch fur I find on their corpse. It is quite simple, take four pieces of gnoll fur and sew them together. Take the result and sew four of them together. And again with that product. In the end you will have a bundle of tailored gnoll fur. You can either return it to me or keep it for yourself.");
	elseif(e.message:findi("dark assassin")) then
		if(e.other:GetFactionValue(e.self) >= 0) then
			e.self:Say("That poor lad! I saw him in the tundra being chased by that big bear of Tundra Jack. I never liked that bear of his since the day he ate my poor dog Thunderpaw. Anyways i say Iceberg chasing the assassin and grabbed my trusty ahlspiess and threw it, aiming right for his big head. Can you believe I missed?? I hit his side instead. Iceberg ripped my ahlspiess out and ripped it into pieces and then went whining of to Tundra Jack. Serves that bear right! He ate my dog!");
		else
			e.self:Say(eq.ChooseRandom("I didn't know Slime could speak common. Go back to the sewer before I lose my temper.","Is that your BREATH, or did something die in here? Now go away!","I wonder how much I could get for the tongue of a blithering fool? Leave before I decide to find out for myself."));
		end
	elseif(e.message:findi("ahlspiess")) then
		if(e.other:GetFactionValue(e.self) >= 0) then	
			e.self:Say("Ahhhh my beloved shrieking ahlspiess, it was nice i was able to help a fellow assassin out but i really do miss it. The dark assassin gave me a sketch of paper he said was very valueable but it still pains me to be without my favourite throwing weapon. If you go get me another I would gladly part with this sketch.");
		else
			e.self:Say(eq.ChooseRandom("I didn't know Slime could speak common. Go back to the sewer before I lose my temper.","Is that your BREATH, or did something die in here? Now go away!","I wonder how much I could get for the tongue of a blithering fool? Leave before I decide to find out for myself."));
		end
	end
end

function event_trade(e)
	local item_lib = require("items");	
	if(e.other:GetFactionValue(e.self) >= 0 and item_lib.check_turn_in(e.self, e.trade, {item1 = 1330})) then	-- requires indifferent, Patched Gnoll Fur Bundle
		e.self:Say("You have done well. Here is a small reward for your effort.");
		-- Confimred Live Factions
		e.other:Faction(e.self,305,5);	-- Faction Rogue's of the White Rose
		e.other:QuestReward(e.self,0,math.random(1,10),math.random(1,10),math.random(0,1),1349,6000);	--Fang of the Wolf
	elseif(e.other:GetFactionValue(e.self) >= 0 and item_lib.check_turn_in(e.self, e.trade, {item1 = 7507})) then	-- requires indifferent, Shrieking Ahlspiess
		e.self:Say("Yay! You got another one for me! I'm so happy! Here as I promised is the sketch.");
		e.other:Faction(e.self,305,5);	-- Faction Rogue's of the White Rose
		e.other:QuestReward(e.self,0,0,0,0,24097);						--Sluggish Sketch
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
