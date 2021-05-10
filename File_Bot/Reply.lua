local function Reply(msg)
local text = msg.content_.text_
if not database:get(bot_id..'Reply:Status'..msg.chat_id_) then
if DevMEROW(msg) then
if text == 'هلو' or text == 'هيلو' or text == 'هلاو' then
local texting = {"هلا بيڪ مطـوࢪي 😍💘","الكـل يكـف اجه مطـوࢪي 😌🔥","اشـࢪقت وانـوࢪت هلا بمطـوࢪي🌈🖤","ارحب مطـوࢪي العـشق 🤤💕"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
if text == 'انجب' or text == 'نجب' or text == 'أنجب' or text == 'نجبب' or text == 'جب' or text == 'انجبي' then
local texting = {"حاضر مو تدلل حضره المطور  😇","خادم اني مطوري ♡","صار تدلل مطوري 🥲💗","تأمرني امر استاذ 🥲💜"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
if text == 'شلونك' or text == 'شلونكم' or text == 'شونك' or text == 'شلونج' or text == 'شونج' then
local texting = {"تمام مطوࢪي الحلو💘","حبيبيوالله اتس اوڪڪي وانت شحوالڪ مطوࢪي 💘","اني بخير اذا مطوࢪي بخيࢪ🤍🍇"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
if text == 'السلام عليكم' or text == 'سلام عليكم' or text == 'سلامن عليكم' then
local texting = {"وعليڪم السلام يا هلا مطوࢪي العشق 💘","وعليڪم سلام هلا بمطوࢪي 💕","وعليڪم سلام هسه نوࢪ الكروب 💞"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
if text == 'دي' or text == 'تسرسح' or text == 'ديييي' or text == 'دييي' then
local texting = {"اخلي مطوري يمشيك بيها 😉🤍","لازم مشتهي تنهان اشوية 🤸🏿‍♀🌚","زين شايف التسرسح مالتي والـ دي تجرب ...!","دير بالڪ لايشحتڪ مطوري من لڪروب 💘🌈"}
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
