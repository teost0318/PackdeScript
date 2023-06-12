function avisarMeca(player) 
	if getElementDimension(player) == 0 then
		local x, y, z = getElementPosition(player)
		exports.factions:createFactionBlip2(x, y, z, 3)
	else
		local x, y, z = exports.interiors:getPos(getElementDimension(player))
		exports.factions:createFactionBlip2(x, y, z, 3)
	end
	for k, v in ipairs(getElementsByType("player")) do
		if exports.factions:isPlayerInFaction(v, 3) then
		outputChatBox( "((/avisarmeca "..getPlayerName(player)..")) Emergencia - Situacion: ¡Se requiere urgentemente a el Mecanico en el lugar!", v, 130, 255, 130 )
		triggerClientEvent( v, "gui:hint", v, "Meca Emergencia", "Situacion: ¡Se requiere urgentemente a el Mecanico en el lugar!" )
		end
	end
	outputChatBox("Se ha dado el aviso por entorno correctamente a El Meca.", player, 31, 255, 0)
end

addCommandHandler("avisarmeca", avisarMeca)