function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Hail, mighty adventurer! I am Guard Cheslin Sydwend and I am here to serve and protect. Feel safe when we Qeynos guards are on watch. We are the best!");
	elseif(e.message:findi("father sent me")) then
		e.self:Say("My father has no need to worry and I do not need a baby sitter. I may be in training still, but a Qeynos guard in training is still a formidable opponent. EVIL, BEWARE!!   HAIL ANTONIUS BAYLE! ");
	elseif(e.message:findi("donation.* temple.* thunder") or e.message:findi("donate.* temple.* thunder")) then		
		e.self:Say("Of course I shall donate to that esteemed order. Here you are, my good friend. Now run along before you are injured by some nasty creature. By the way, you should speak with my fellow guard, Leopold. He also would donate.");
		e.other:SummonCursorItem(13295); -- Item: A Donation
	elseif(e.message:findi("drop")) then
		e.self:Say("Yes!! I seem to have dropped some of my [Illusion] cards.");
	elseif(e.message:findi("illusion")) then
		e.self:Say("Oh!! Do you play Illusion, too? I love that game. I have some very rare cards in my deck. I seem to have dropped four of them somewhere during my last patrol. Darn it! They probably blew away the minute I dropped them! I will never find those cards again.");
	end
end

function event_trade(e)
	local item_lib = require("items");

	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 13904,item2 = 13905,item3 = 13906,item4 = 13907})) then
		e.self:Say("Oh great! I have all my cards back. Here is a little something for assisting a Qeynos guard. And any time you are in trouble, just call on Cheslin, master swordsman. Take it to my father, Master Chesgard of the Knights of Thunder in Qeynos. No doubt he sent you to follow me on my watch.");
		e.other:Faction(e.self,262,20,0); -- Guards of Qeynos
		e.other:Faction(e.self,219,3,0); -- Antonius Bayle
		e.other:Faction(e.self,230,-3,0); -- Corrupt Qeynos Guards
		e.other:Faction(e.self,223,-5,0); -- Circle of Unseen Hands
		e.other:Faction(e.self,291,2,0); -- Merchants of Qeynos
		e.other:QuestReward(e.self,math.random(1,9),math.random(1,9),math.random(1,2),0,18839,1500); -- Item: A Sealed Letter
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 13904}) or item_lib.check_turn_in(e.self, e.trade, {item1 = 13905}) or item_lib.check_turn_in(e.self, e.trade, {item1 = 13906}) or item_lib.check_turn_in(e.self, e.trade, {item1 = 13907})) then
		e.self:Say("Wow!! I thought I lost this for good. All together I lost the [illusion] cards: Ebon Lotus, Library of Erudin, Chrono Cyclone and Diamond Vale. Man!! Those are rare cards!")
	end

	item_lib.return_items(e.self, e.other, e.trade)
end

function event_waypoint_arrive(e)
	local xloc = e.self:GetX();
	local yloc = e.self:GetY();
	local zloc = e.self:GetZ();
	if(e.wp == 1) then
		e.self:Say("Hail, fellow guards! I am off to protect the travelers of the hills from evil. I shall return!");
		eq.signal(4142,1); -- NPC: Hefax_Tinmar
		eq.signal(4001,1);
	elseif(e.wp == 3) then
		e.self:Say("Fear not, simple travelers. Cheslin the masterful is here to protect you.");
		eq.create_ground_object(13905,xloc,yloc,zloc,0,300000); -- library
		e.self:Say("Hey! Did I just drop something?");
	elseif(e.wp == 4) then
		e.self:Say("Fear not, simple travelers. Cheslin the masterful is here to protect you.");
		eq.create_ground_object(13904,xloc,yloc,zloc,0,300000); -- ebon
		e.self:Say("Hey! Did I just drop something?");
	elseif(e.wp == 7) then
		e.self:Say("Fear not, simple travelers. Cheslin the masterful is here to protect you.");
		eq.create_ground_object(13907,xloc,yloc,zloc,0,300000); -- diamond
		e.self:Say("Hey! Did I just drop something?");
	elseif(e.wp == 9) then
		e.self:Say("Fear not, simple travelers. Cheslin the masterful is here to protect you.");
		eq.create_ground_object(13906,xloc,yloc,zloc,0,300000); -- chrono
		e.self:Say("Hey! Did I just drop something?");
	elseif(e.wp == 11) then
		e.self:Say("I lost some of my [illusion] playing cards. And they were the rare ones too! Darn it! If anyone finds them, please return them to me.");
	end
end
