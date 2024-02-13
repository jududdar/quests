function event_say(e)
	local is_special_flag_response = false;
	if(e.message:findi("Hail")) then
		e.self:Say("Greetings, " .. e.other:GetCleanName() .. " .  Are you a child of Order? Then you've come to the right place. Erollsi Marr has blessed the Priests of Order with the ability to ordain adventurers in a union of souls. Are you interested in such a [union]?");
	elseif(e.message:findi("union")) then
		e.self:Say("Yes. Thanks to the blessing of Erollsi during Her holy day, we are able to temporarily bless unions of marriage. This ceremony is free of charge; our compensation is to spread Her word. To begin, please state the name of your family. You may also [reset] your family name, provided you are not already married.");
	elseif(e.message:findi("reset") and e.other:IsMarried() == false) then
		e.self:Say("Very well. Your surname has been reset.");
		e.other:SetTemporaryLastName("");
	else
		if(e.other:HasTemporaryLastName() == true) then
			e.other:SetMarried(e.message);
		else
			e.other:SetTemporaryLastName(e.message);
		end
	end
end