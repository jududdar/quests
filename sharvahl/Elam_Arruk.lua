function event_say(e)
	if(e.message:findi("task")) then
		e.self:Say("You will need to begin familiarizing yourself with the moor and its inhabitants. As a scout, there is one creature that roams the moor that you are going to need to focus on in particular. These creatures are wolf-like in their appearance, but have no need for sight and show absolutely no fear of the tactics that we usually use to scare off animals. They move in packs and attack swiftly. To learn their behavior, you will need to track a few down. Fill that bag with a few of their tongues and bring it back to me. Once you have seen them, I will be able to teach you more.");
	elseif(e.message:findi("new recruit")) then
		e.self:Say("Well... perhaps you should head to the combat training grounds and pick up a few pointers.  Walk west along the ledge that runs just outside of the city's walls and you shouldn't be able to miss it.");
	elseif(e.message:findi("at it for a bit")) then
		e.self:Say("Good good... keep at it!  We need all of the strong willed thick headed Khala Dun we can muster!  Now, get back to the fight!");
	elseif(e.message:findi("ore")) then
		e.self:Say("The ore that I require is often used to create living rock formations. These collections of rocks and boulders will often leave a trail of energy that causes other rocks to collect and come to life. Our scouts have seen these formations in a variety of areas. Take care when you attempt to gather this ore.");
	elseif(e.message:findi("void")) then
		e.self:Say("If you look in the Maiden's Eye, you will find entities that are the embodiment of darkness. Their twisted spirits are not allowed to escape the form that they inhabit. They have no hope of escape, unless they are released during the destruction of their material form. There are some occasions when the power that is used to keep them in this realm will turn upon itself during this period of destruction. This process is what produces the Gems of the Void.");
	elseif(e.message:findi("padding")) then
		e.self:Say("When traversing the Deep, you will run across a shrieking fungus. Those creatures are much more durable and dangerous than the other fungi that you may encounter in the caverns of Luclin. It is for this reason that we use their flesh as padding. Take care when hunting them, for they will provide a good challenge.");
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
	end
end

function event_trade(e)
	local item_lib = require("items");
	if(item_lib.check_turn_in(e.self, e.trade, {item1 = 5558},0)) then
		e.self:Say("see that you have experienced some training from Elder Ternq. He is an amazing scout and very exciting to watch in combat. Years prior to being commissioned to act in this role, I served with the young Scout Ternq. Of course we were both much younger and more agile back in those days. Much like you are now. Ah well, enough with this chatter. Take this bag and stow it somewhere safe. I have a [task] for you.");
		e.other:QuestReward(e.self,0,0,0,0,GiveAll(5558,17117));
	elseif(item_lib.check_turn_in(e.self, e.trade, {item1 = 6274},0)) then
		e.self:Say("Very good " .. e.other:GetCleanName() .. ", not only have you had a chance to see the creatures, you have also provided me with lunch. I hope that you learned something from your encounter. Those wolves, or sonic wolves as the Dar Khura call them, have destroyed more than a few scouting expeditions. Over the years, our research into the origins of these beasts has proven fruitful. We have found a means of making a weapon that reacts to their flesh. These items will assist you in making that item.");
		e.self:Emote("hands you a dagger hilt and a mortar and pestle and says, 'Those items are to be used to not only produce your personal weapons, but to aid any other citizen that may be in need of the component that we, as Taruun, are best suited to produce... the poison. I understand that you are still young and new to poisons, but this will be an easy process for you. You will need only to grind the ingredients up in that mortar and pestle. Then heat the resulting powder in an oven by placing the powder and some water in a poison vial. Be sure not to over cook it.'");
		e.self:Say("You will need to visit the Library of War History and purchase a book on the construction of this weapon. Read it and construct the weapon. I recall that the scholar that sells the book was also working on a construction kit for the weapons. Please take your finished weapon and your apprentice cloak to Elder Taruun Ternq. I am sure that he will be curious about your progress.");
		e.other:QuestReward(e.self,0,0,0,0,GiveAll(6146,17110)); -- Item: Taruun Hilt Piece
	end
	item_lib.return_items(e.self, e.other, e.trade)
end
