RegisterCommand("announce", function(source,args,raw)
	if IsPlayerAceAllowed(source, "admin.announce") then
		local scaleType, time, font = tonumber(args[1]), tonumber(args[2]), tonumber(args[3])
		for i=1, 3 do table.remove(args, 1) end
		TriggerClientEvent("Scaleform:Announce", -1, scaleType, time, font, table.concat(args, " "))
	end
end, false)