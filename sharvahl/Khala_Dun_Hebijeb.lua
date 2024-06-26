function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Well met. friend.  May I be of assistance?");
	elseif(e.message:findi("training camp")) then
		e.self:Say("The training camp is located on the cliff behind the Royal Palace.  Younger citizens are encouraged to go there if they wish to build their skills and combat proficiency.  Just find the sergeant and sign up.");
	elseif(e.message:findi("where.* barrel")) then
		e.self:Say("I know many of the taverns and eateries have their own barrels, but you may want to try Jakhal and Kahala's Brewery.  You can find it in the southwestern section of the Merchant's Quarter, or Corridor of Heroes, as I like to call it.");
	elseif(e.message:findi("where.* bank")) then
		e.self:Say("The bank is in the south-eastern end of the Merchants' Quarter.");
	elseif(e.message:findi("where.* merchant.* quarter")) then
		e.self:Say("The Merchants' Quarter lies in the middle of the city just east of the Royal Palace.");
	elseif(e.message:findi("where.* food")) then
		e.self:Say("Take a look around.  If you're hungry, just follow your nose... or look around one of the barracks in either the South or North Gate districts.");
	elseif(e.message:findi("where.* arena")) then
		e.self:Say("You can find the arena in the east side of the city, but it is rarely used these days.  It stands opposite of the pool in the Merchants' Corridor.");
	elseif(e.message:findi("where.* drink")) then
		e.self:Say("If you're looking for a good drink, just look around.  The Taruun tend to frequent Rawlf's Place in the North Gate district of town.  I prefer the busier taverns.  Try the Trail's End just inside the South Gate district.  It is always packed with soldiers moving back and forth to combat.");
	elseif(e.message:findi("where.* forge")) then
		e.self:Say("Hmm... I know that the Khala Dun are fond of smithing. Try looking near their barracks in the western section of the North Gate district.  You can use the forge in Barkhem's shop as well. It's in the Merchants' Quarter.");
	elseif(e.message:findi("corridor.* hero")) then
		e.self:Say("The Corridor of Heroes is the section of town that houses many of our finest establishments.  That area also houses our arena and Hall of Heroes.  The Corridor of Heroes is also known as the Merchants' Quarter.  I hope that I did not confuse you with the name.  Its proper name stems from the fact that you must have served in combat to act as proprietor of a shop in that area.");
	elseif(e.message:findi("hall.* hero")) then
		e.self:Say("The Hall of Heroes was built overlooking the Arena.  The Arena is rarely used these days, but you can almost always find activity in the Hall.  Our greatest leaders and heroes gather there to direct the battle against the Grimling hordes.");
	elseif(e.message:findi("where.* pottery")) then
		e.self:Say("Pottery and other Jharin supplies are located in the northeastern section of the Corridor of Heroes.");
	elseif(e.message:findi("where.* hollowshade")) then
		e.self:Say("The Hollowshade is the moor located just outside of the North Gate. There have been a lot of grimling attacks around that area. Coupled with deadly owlbears and rhino beetles, you had best not go unprepared for a tough battle.");
	elseif(e.message:findi("where.* north gate")) then
		e.self:Say("The North Gate district lies between the Northern Bridge and the inner corridors of our city.  That district houses our many Khala Dun barracks, Officers' quarters, and larger meeting halls.  The North Bridge leads to the Hollowshade Moor.");
	elseif(e.message:findi("where.* south gate")) then
		e.self:Say("The South Gate district lies between the Southern Bridge and the inner corridors of our city.  Many of our Scouts, Animists, and Taruun, live in that district. The South Bridge leads to the Shadeweaver's Thicket.");
	elseif(e.message:findi("the pit")) then
		e.self:Say("We call the crater that was formed around our city during the Shifting, the Pit.  It is full of all sorts of nasty little creatures.  Veteran guards watch the area closely and use it as a place to train our new recruits.");
	elseif(e.message:findi("where.* loom")) then
		e.self:Say("Many of our town's seamstresses and tailors can be found working together on the top floor of the general mercantile.  I'm sure that you can find a loom there.");
	elseif(e.message:findi("where.* mercantile")) then
		e.self:Say("The general mercantile can be found on the southern side of the Corridor of Heroes.  Just look for the sign.");
	elseif(e.message:findi("royal corridor")) then
		e.self:Say("The area surrounding the Royal Palace is known as the Royal Corridor.");
	elseif(e.message:findi("where.* library")) then
		e.self:Say("We have two libraries.  The Library of War History and Related works is located on the southern side of the Royal Corridor and the Library of Spiritual and Natural Studies is located on the northern side.");
	elseif(e.message:findi("where.* arrow")) then
		e.self:Say("If you are looking to purchase arrows, perhaps you should check the South Gate district.  The vendors in that area carry goods that appeal to the Taruun and other scouts that live in that district.");
	elseif(e.message:findi("guildmaster") or e.message:findi("guildhall") or e.message:findi("guild master") or e.message:findi("guild hall")) then
		e.self:Say("We have Guildhalls in several areas.  You can find the Khala Dun under the Arena. The Jharin are housed near the stage above the Royal Palace.  The Taruun, Dar Khura, and Khati Sha are housed near each other in under the Royal Palace.");
	elseif(e.message:findi("who.* khura")) then
		e.self:Say("The Dar Khura guide us with their wisdom. They are the ones who speak with the spirits and heal our wounds. They are named in honor of Dar Khura who taught us that we were brought here for a purpose.");
	elseif(e.message:findi("who.* khati")) then
		e.self:Say("He was a great hero among our people. It was he who learned to speak with the beasts. Khati Sha was the greatest of explorers who brought Acrylia to us. With these mystical stones, we have built our beloved city. Those who walk with the beasts are named in his honor.");
	elseif(e.message:findi("who.* khala")) then
		e.self:Say("The Khala Dun are the king's warriors. They are charged with defending the city of Shar Vahl and commanding any offensives necessary. They are named after Khala Dun who was King Vah Kerrath's protector during the times of the shifting. You can find their guild within the Arena Complex in the merchants quarter.");
	elseif(e.message:findi("who.* taruun")) then
		e.self:Say("The Taruun bring food for our city. They are among the most cunning of our people. The Taruun watch us and protect us from within the shadows. They are named in honor of Taruun, the lost orphan who lived and flourished among our people despite his shy nature. Taruun taught us the importance of stealth with honor. The location of their guild is in the heart of the city. To find it, you must find the delicate balance between honor and battle.");
	elseif(e.message:findi("raja")) then
		e.self:Say("King Raja Kerrath is our beloved and most noble king. He is the son of King Vah Kerrath and the grandson of our most honorable prophet Kejaan.");
	elseif(e.message:findi("ragnar")) then
		e.self:Say("Spiritist Ragnar has an alchemy shop within the Merchants' Quarter. He is a master of Alchemy and a knowledgeable shaman. You cannot miss his shop, it is located right next to the bank.");
	elseif(e.message:findi("shifting")) then
		e.self:Say("These were the troubled times when we were ripped from our world and brought to this soil. Our leader and beloved King Vah Kerrath led us to rebuild this great city and so we have taken his name in his honor.");
	elseif(e.message:findi("grimling")) then
		e.self:Say("The grimlings are the beings who attack our people around the Acrylia mines. They have the ability to use magic against us. Be careful if you wish to travel north. We have been waging war in that area.");
	elseif(e.message:findi("acrylia")) then
		e.self:Say("Acrylia is the magical ore found in the mines to the north. We use this ore to build our homes and weapons. It has been very difficult lately to mine for these stones due to the grimling attacks on our miners.");
	elseif(e.message:findi("shadow haven")) then
		e.self:Say("Shadow Haven is the great city that lies beneath the ground. We have many trading relationships with the houses that form the groundwork of Shadow Haven politics. Use caution when traveling there, although the haven houses many honest merchants, it is also a home to smugglers, bandits, and thieves.");
	end
end

function event_trade(e)
	local item_lib = require("items");
	
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 2877})) then
		e.self:Say("I was told to expect you, " .. e.other:GetCleanName() .. ". It is my duty to supervise this stage of your training, which will help strengthen you in preparation for your life of service to our people. There is much to do in very little time so let us begin. There are creatures that roam freely at the base of the rock on which we live. You are tasked with demonstrating a basic understanding of combat by defeating skeletons of grimlings and delivering to me four of their femurs.");
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 3443, item2 = 3443, item3 = 3443, item4 = 3443})) then
		e.self:Emote("looks at you with an expression of approval");
		e.self:Say("Your completion of the assigned task has been noted. Accept this weapon as a token of the Khala Dun's gratitude. You will find the Khala Dun to be very generous to it's humble students, quick to reward obedience. I have been notified that one of our citizens needs some assistance, bring me proof that you have aided Dronqam Runghi.");
		e.other:Faction(e.self,1513,10 ); -- Faction: Guardians of Shar Vahl
		e.other:QuestReward(e.self,0,0,0,0,3445,1000);
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 3449})) then
		e.self:Emote("takes the acrylia dust and places it in a vial already half full of the metal");
		e.self:Say("You are nearly finished with the task at hand, " .. e.other:GetCleanName() .. ". I now need you to begin your training in the art of blacksmithing, an essential aspect of the life of the Khala Dun. Combine this mold with three metal bits and a flask of water to fashion a buckler frame. When this is done bring it to me with the Crude Bone Short Sword and your initiate's cloak.");
		e.other:QuestReward(e.self,0,0,0,0,3450);
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 3451, item2 = 3445, item3 = 2878})) then
		e.self:Say("Your progress pleases our order young one, and I am proud to promote you to the rank of recruit within the Khala Dun. Wear this cloak with pride, " .. e.other:GetCleanName() .. ". I have completed your buckler as well as enhanced your sword. The blade will now be more effective when used against the skeletons from which it was constructed. Show the buckler to Armsman Khaigesh and he will instruct you further.");
		e.self:Shout("Fellow citizens of Shar Vahl, help me welcome " .. e.other:GetCleanName() .. " to the rank of recruit in the honorable Khala Dun. May his actions henceforth reflect the strict sense of loyalty to our king that defines our order. May he exhaust his every resource in glorious defense of our proud people!");
		e.other:Faction(e.self, 1513,10 ); -- Faction: Guardians of Shar Vahl
		e.other:QuestReward(e.self,0,0,0,0,GiveAll(3452,3453,3454),2000); -- Item: Buckler of the Recruit, Cloak of the Khala Dun Recruit
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
