function event_signal(e)
	if ( e.signal == 1 ) then
		e.self:Emote("glows with power as several large silhouettes begin to take shape inside.");
		eq.spawn2(eq.ChooseRandom(209124, 209123, 209125, 209130),0, 0, e.self:GetX(), e.self:GetY(), e.self:GetZ(), 0);
	end
end
