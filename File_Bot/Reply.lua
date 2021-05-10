local function Reply(msg)
local text = msg.content_.text_
if not database:get(bot_id..'Reply:Status'..msg.chat_id_) then
if DevMEROW(msg) then
if text == 'هلو' or text == 'هيلو' or text == 'هلاو' then
local texting = {'هلا بتاج راسي 🤤💘','هلااا بمطوري العشق 💞','هلا بحياتي المطور'}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
if text == 'انجب' or text == 'نجب' or text == 'أنجب' or text == 'نجبب' or text == 'جب' or text == 'انجبي' then
local texting = {'ع راسي حبيبي المطور 💞','تدلل تاج راسي 🙈',' تأمرني امر حبيبي المطور 💕'}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if not DevMEROW(msg) then
if text == 'هلو' then 
send(msg.chat_id_, msg.id_,' *لك ها كواد* ')
end
if text == 'مرحبا' then 
send(msg.chat_id_, msg.id_,' *مراحب حيواني* ')
end
if text == 'شلونك' then 
send(msg.chat_id_, msg.id_,' *تمام انت شلونك عار مشتاقلك* ')
end
end


end
if text == 'تفعيل ردود البوت' and Manager(msg) then
database:del(bot_id..'Reply:Status'..msg.chat_id_)
send(msg.chat_id_, msg.id_,'*⋄︙تم تفعيل ردود البوت*')
return false
end

if text == 'تعطيل ردود البوت' and Manager(msg) then
database:set(bot_id..'Reply:Status'..msg.chat_id_,true)
send(msg.chat_id_, msg.id_,'*⋄︙تم تعطيل ردود البوت*')
return false
end

end
return {
Peland = Reply
}
