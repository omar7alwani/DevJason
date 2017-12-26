
-- BY @dev_jason 
-- MY FILE : @devjason

local action = function(msg, matches)
	
if is_admin(msg) then	
	if matches[1] == 'bc' then
		local users = client:smembers('devjason'..bot.id)
		for i=1, #users do
		api.sendMessage(users[i], matches[2], true)
		print(colors('%{green bright}ارسال الى : '), users[i])
		end
		api.sendReply(msg, 'تم النشر الرساله الى جميع الاعضاء', true)
	end


 if matches[1] == 'stats' then
		local members = client:smembers('devjason'..bot.id)
		local jason = ''
		if members then
			for i=1, #members do
				jason = '*اعضاء البوت* : `'..i..'`\n'
			end
		end
		api.sendMessage(msg.chat.id, jason, true)
	end
end
end
	local triggers = {
	'^/(bc) (.*)$',
	'^/(stats)$',
}
return {
	action = action,
	triggers = triggers,
}
