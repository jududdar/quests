function event_say(e)
	if(e.message:findi("hail")) then
		e.self:Say("Greetings " .. e.other:GetName() ..". If you have love and kindness in your heart then seek refuge at the Temple of Marr and the Hall of Honor in North Freeport. There is a growing evil spreading through the city. May Erollisi save us and cleanse this city of the hatred and corruption spread by the vile Dismal Rage.");
	end
end

-- END of FILE Zone:freportw -- Ulia_Yovar