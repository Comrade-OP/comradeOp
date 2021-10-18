Date = "20211030" --Change Date  
date = os.date("%Y%m%d") 
if date >= Date then 
  gg.alert(" Server Offline\nContact @AVIHACKERYT") 
  return 
end

if gg.isPackageInstalled("com.ggmodrgd") then --Your Gg Package
else 
gg.alert("USE ONLY AVI YT GG") 
os.exit() 
end 
if gg.PACKAGE == "com.ggmodrgd" then --Your Gg Package
else 
gg.alert("USE ONLY AVI YT GG") 
os.exit() 
end

if gg.getTargetPackage() == "com.tencent.ig" or gg.getTargetPackage() == "com.rekoo.pubgm" or gg.getTargetPackage() == "com.pubg.imobile" or gg.getTargetPackage() == "com.pubg.krmobile" or gg.getTargetPackage() == "bin.mt.plus.canary" then -- Check Game Package And Selected Game . 
  gg.clearResults() 
  else 
print("YOU PUBGM IS NOT RUNNING\nOPEN YOUR PUBGM THAN EXECUTE THIS\nSCRIPT CODING BY AVI HACKER YT\nTHANK YOU ") 
  return os.exit() 
end

--Checking Pubg 32 Bit Or 64 Bit--
--check = io.open("/storage/emulated/0/Android/obb/com.pubg.imobile/main.15522.com.pubg.imobile.obb")
--if check == nil then
--gg.alert("Please Uninstall Pubg 64 Bit From Your Phone And Install Pubg 32 Bit Version.")
--gg.processKill()
--os.exit()
--end


function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.."\nFailed to Open")else sl=gg.getResults(99999)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.."\nSuccessfully Opened")else gg.toast(_on.."\nSuccessfully Opened")end end end--
function SearchWrite(Search, Write, Type)    gg.clearResults()    gg.setVisible(false)    gg.searchNumber(Search[1][1], Type)    local count = gg.getResultCount()    local result = gg.getResults(count)    gg.clearResults()    local data = {}     local base = Search[1][2]    if (count > 0) then        for i, v in ipairs(result) do            v.isUseful = true         end        for k=2, #Search do            local tmp = {}            local offset = Search[k][2] - base             local num = Search[k][1]                         for i, v in ipairs(result) do                tmp[#tmp+1] = {}                 tmp[#tmp].address = v.address + offset                  tmp[#tmp].flags = v.flags              end            tmp = gg.getValues(tmp)             for i, v in ipairs(tmp) do                if ( tostring(v.value) ~= tostring(num) ) then                    result[i].isUseful = false                 end            end        end        for i, v in ipairs(result) do            if (v.isUseful) then                data[#data+1] = v.address            end        end        if (#data > 0) then           local t = {}           local base = Search[1][2]           for i=1, #data do               for k, w in ipairs(Write) do                   offset = w[2] - base                   t[#t+1] = {}                   t[#t].address = data[i] + offset                   t[#t].flags = Type                   t[#t].value = w[1]                   if (w[3] == true) then                      local item = {}                       item[#item+1] = t[#t]                       item[#item].freeze = true                       gg.addListItems(item)                   end                                 end           end           gg.setValues(t)           gg.addListItems(t)        else            gg.toast("@AVIHACKERYT", false)            return false        end    else        gg.toast("Vᴀʟᴜᴇs Nᴏᴛ Fᴏᴜɴᴅ")        return false    end end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "" .. xgsl .. "") else gg.toast(qmnb[2]["name"] .. "") end end end end
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function setvalue(address,flags,value) Ok('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
function Fxs(Search, Write,Neicun,Mingcg,Shuzhiliang)  gg.clearResults()  gg.setRanges(Neicun)  gg.setVisible(false)  gg.searchNumber(Search[1][1], Search[1][3])  local count = gg.getResultCount()  local result = gg.getResults(count)  gg.clearResults()  local data = {}   local base = Search[1][2]    if (count > 0) then  for i, v in ipairs(result) do  v.isUseful = true  end  for k=2, #Search do  local tmp = {}  local offset = Search[k][2] - base   local num = Search[k][1]    for i, v in ipairs(result) do  tmp[#tmp+1] = {}  tmp[#tmp].address = v.address + offset  tmp[#tmp].flags = Search[k][3]  end    tmp = gg.getValues(tmp)    for i, v in ipairs(tmp) do  if ( tostring(v.value) ~= tostring(num) ) then  result[i].isUseful = false  end  end  end    for i, v in ipairs(result) do  if (v.isUseful) then  data[#data+1] = v.address  end  end  if (#data > 0) then  gg.toast(Mingcg.." 开启成功 "..#data.."")  local t = {}  local base = Search[1][2]  if Shuzhiliang == "" and Shuzhiliang > 0 and Shuzhiliang < #data then   Shuzhiliang=Shuzhiliang  else  Shuzhiliang=#data  end  for i=1, Shuzhiliang do  for k, w in ipairs(Write) do  offset = w[2] - base  t[#t+1] = {}  t[#t].address = data[i] + offset  t[#t].flags = w[3]  t[#t].value = w[1]  if (w[4] == true) then  local item = {}  item[#item+1] = t[#t]  item[#item].freeze = true  gg.addListItems(item)  end  end  end  gg.setValues(t)  gg.toast(Mingcg.." 开启成功 "..#t.."")     gg.addListItems(t)  else  gg.toast(Mingcg.." 开启失败 ", false)  return false  end  else gg.toast(" 开启失败 ")  return false  end end
--caller
function res_var()
--do nothing
end
function setvalue(address,flags,value) res_var('Modify address value(Address, value type, value to be modified)') local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end


gg.setVisible(false)
function Main()
Avinash = gg.choice({
" Bypass Menu",
" Wallhack Color",
" AVI Hacks Menu",
"______________||Exit||______________"
},nil, (os.date([[%A, %d %B %Y %H:%M%p
AVI HACKER YT 
PUBG INDIA V1.6]])))
if Avinash == nil then else
if Avinash == 1 then bypass() end
if Avinash == 2 then wh() end
if Avinash == 3 then ssc1() end
if Avinash == 4 then exit() end
end
Avinash = -1
end


function ssc1()
Avinash90 = gg.multiChoice({
" Headshoot | Game (Brutal)",
" Magic Bullet | Game (Brutal)",
" No Recoil | Lobby 1x",
" Ipad View | Lobby 1x",
" Fog+Grass | Lobby 1x",
" Croshair | Lobby 1x",
" Black Sky | Game",
" Hit X Effect | Game",
" Wall Shot | Game",
" Aimbot 100 m | Game",
" All Car Fly | game",
" Fast Landing | Plane",
" Sit Scope | Game",
" Front Scope | Game",
" Knock+Prone Speed | Game",
" Full Map Flash | Game ", 
" Back"
},nil,"AVI HACKER YT ")
if Avinash90 == nil then else
if Avinash90[1] == true then C3() end
if Avinash90[2] == true then magic() end
if Avinash90[3] == true then less() end
if Avinash90[4] == true then ipad() end
if Avinash90[5] == true then fog() end
if Avinash90[6] == true then cross() end
if Avinash90[7] == true then aim() end
if Avinash90[8] == true then hit() end
if Avinash90[9] == true then night() end
if Avinash90[10] == true then track() end
if Avinash90[11] == true then lulli() end
if Avinash90[12] == true then sfs() end
if Avinash90[13] == true then loda() end
if Avinash90[14] == true then chut() end
if Avinash90[15] == true then porn() end
if Avinash90[16] == true then flas() end
if Avinash90[17] == true then Main() end
end
Avinash = -1
end


function wh()
  AVIHACKER = gg.multiChoice({
    " Wallhack Snap 600 Series",
    " Wallhack Snap 800 Series",
    " Yellow Snap 600 Series",
    " Yellow Snap 800 Series",
    " Antina Stick (Spawn/Game)",
    " Antina Off ",
    " Back"
}, nil, "Use Any Esp\nOr Antina\nNot Working Wallhack\n&Colour Hacks")
if AVIHACKER == nil then else
if AVIHACKER[1] == true then wh600sr() end
if AVIHACKER[2] == true then wh800sr() end
if AVIHACKER[3] == true then yellow600sr() end
if AVIHACKER[4] == true then yellow800sr() end
if AVIHACKER[5] == true then antina() end
if AVIHACKER[6] == true then antoff() end
if AVIHACKER[7] == true then Main() end
end
Avinash = -1
end


function wh800sr()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("5.1097599e21;8.2676609e-44;2.0:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2.0;0.69314718246;0.00999999978:29", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("9B0", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AVI HACKER YT ")
end

function yellow800sr()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8200;8201:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200;8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(550292)
gg.editAll("11", gg.TYPE_DWORD)
gg.clearResults()
gg.toast('AVI HACKER YT ')
end


function wh600sr()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.8948778e-40;4.7408166e21;2.0:93", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("504", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("3.37670946121;3.37548875809;2.0:149", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress("980", -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(63825)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AVI HACKER YT ")
end

function yellow600sr()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("6", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("AVI HACKER YT ")
end

function antina()
gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
ANT=gg.getResults(1000)
  gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("AVI HACKER YT ")
end

function antoff()
gg.setValues(ANT)
gg.toast("AVI HACKER YT ")
end

function C3()
gg.setRanges(16384)
local  dataType  =  16
local  search  =  {{0.10000000149,  0},{64.50088500977,  180},}
local  modify  =  {{15,  0},}
SearchWrite(search,modify,dataType,Name)
local  dataType  =  4
local  search  =  {{-298284466,  0},}
local  modify  =  {{0,  0},}
SearchWrite(search,modify,dataType,Name)
gg.setRanges(32) 
local  dataType  =  16
local  search  =  {{-88.66608428955,  0},{16.0,  4},{26.0,  8},}
local  modify  =  {{-460,  4},{-460,  8},}
SearchWrite(search,modify,dataType,Name)
local  dataType  =  16
local  search  =  {{-88.73961639404,  0},{18.0,  4},{28.0,  8},}
local  modify  =  {{-560,  4},{-560,  8},}
SearchWrite(search,modify,dataType,Name)
local  dataType  =  4 
local  search  =  {{1092616192,  0},{1110966272,  4},}  
local  modify  =  {{1176255488,  0},} 
SearchWrite(search,modify,dataType,Name)     
local  dataType  =  16
local  search  =  {{25.0,  0},{30.5,  4},}
local  modify  =  {{540,  0},{560,  4},}
SearchWrite(search,modify,dataType,Name)      
gg.clearList() 
gg.setRanges(32) local  dataType  =  16 local  search  =  {{25.0,  0},{30.5,  4},} local  modify  =  {{460,  0},{560,  4},} SearchWrite(search,modify,dataType,Name) gg.clearList()
gg.toast("Headshot💯")
gg.toast("AVI HACKER YT ")
end


function less()
lund = gg.alert("No Recoil 99%", " [✓]Activate", " [𝕏]Deactivate")
    if lund == 1 then
      recoil()
    end
    if lund == 2 then 
      recoil2()
    end
  end

function recoil()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1EC65CC
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x14EDC90
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B583C0
setvalue(so+py,16,0)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C1F510
setvalue(so+py,16,0)
gg.toast("𝙽𝙾 𝚁𝙴𝙲𝙾𝙸𝙻 99%  𝙾𝙽")
gg.toast("AVI HACKER YT ")
end

function recoil2()
so=gg.getRangesList('libUE4.so')[1].start
py=0x1EC65CC
setvalue(so+py,16,3.8126822e-21)
so=gg.getRangesList('libUE4.so')[1].start
py=0x14EDC90
setvalue(so+py,16,-2.786982e28)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B583C0
setvalue(so+py,16,-1.1144502e28)
so=gg.getRangesList('libUE4.so')[1].start
py=0x3B583C0
setvalue(so+py,16,-1.1144502e28)
gg.toast("𝙽𝙾 𝚁𝙴𝙲𝙾𝙸𝙻 99%  𝙾𝙵𝙵")
gg.toast("AVI HACKER YT ")
end

function ipad()
input = gg.prompt({ "𝚂𝙴𝙻𝙴𝙲𝚃 𝚈𝙾𝚄𝚁 𝚆𝙸𝙳𝙴 𝚅𝙸𝙴𝚆 𝟹𝟼𝟶 𝙸𝚂 𝚂𝙼𝙰𝙻𝙻𝙴𝚂𝚃 : [200; 360]"},
{280},
{"number"})
if input == nil then Main()
else
so=gg.getRangesList('libUE4.so')[1].start
py=0x3C224E0
setvalue(so+py,16,input[1])
gg.toast("𝚆𝙸𝙳𝙴 𝚅𝙸𝙴𝚆  𝙾𝙽")
end
end

function aim()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-369098662;0;-484380672:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("0", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("-1222129996", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("AVI HACKER YT ")
end

function magic()
-----------------magic Activating-----------------
gg.setRanges(32) local  dataType  =  16 local  search  =  {{35.0,  0},{33.0,  4},{69.5,  8},} local  modify  =  {{99,  0},{99,  4},{99,  8},} SearchWrite(search,modify,dataType,Name) gg.clearList()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(10)
  gg.editAll("560", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
  gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(99)
  gg.editAll("0", gg.TYPE_DWORD)
  gg.clearResults()
gg.toast("Magic Bullet 💯")
  gg.toast("AVI HACKER YT ")
end


function spread()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.clearResults()
gg.searchNumber("-439,275,496;-481,099,776;167,772,206::9", gg.TYPE_DWORD)
gg.refineNumber("-481,099,776", gg.TYPE_DWORD)
gg.getResults(2)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("AVI HACKER YT ")
end


function fog()
Sim = gg.alert("Fog + Grass", " [✓]Activate", " [𝕏]Deactivate")
    if Sim == 1 then
      fig()
    end
    if Sim == 2 then 
      fig2()
    end
  end

function fig()
so=gg.getRangesList('libUE4.so')[1].start
py=0x30E63D8
setvalue(so+py,16,0)
gg.toast("𝚁𝙴𝙼𝙾𝚅𝙴 𝙵𝙾𝙶  𝙾𝙽")
so=gg.getRangesList('libUE4.so')[1].start
py=0x28B2A98
setvalue(so+py,16,0)
gg.toast("𝚁𝙴𝙼𝙾𝚅𝙴 𝙶𝚁𝙰𝚂𝚂  𝙾𝙽")
gg.toast("AVI HACKER YT ")
end

function fig2()
so=gg.getRangesList('libUE4.so')[1].start
py=0x30E63D8
setvalue(so+py,16,-1.3620439e28)
gg.toast("𝚁𝙴𝙼𝙾𝚅𝙴 𝙵𝙾𝙶  𝙾𝙵𝙵")
so=gg.getRangesList('libUE4.so')[1].start
py=0x28B2A98
setvalue(so+py,16,-3.892263e21)
gg.toast("𝚁𝙴𝙼𝙾𝚅𝙴 𝙶𝚁𝙰𝚂𝚂  𝙾𝙵𝙵")
gg.toast("AVI HACKER YT ")
end

function hit()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3152)
gg.editAll("9931", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("X HIT EFFECT")
gg.toast("AVI HACKER YT ")
end

function night()
so=gg.getRangesList('libUE4.so')[1].start
py=0x4967594
setvalue(so+py,4,0)
gg.toast("AVI HACKER YT ")
end

function cross()
so=gg.getRangesList("libUE4.so")[1].start
py=0x14EE248
setvalue(so+py,16,90)
gg.clearResults()
gg.toast("AVI HACKER YT ")
end

function track()
  so=gg.getRangesList('libUE4.so')[1].start
py=0x28E4620
setvalue(so+py,16,220) 
gg.toast("AVI HACKER YT")
end

function lulli()
setvalue(so+py,16,-3.86856308e25)
so=gg.getRangesList('libUE4.so')[1].start
py=0x1123ED0
setvalue(so+py,16,-3.86856308e25)
gg.toast("AVI HACKER YT")
end

function sfs()
Say = gg.alert("FAST LANDING", " [✓]Activate", " [𝕏]Deactivate")
    if Say == 1 then
      ss1()
    end
    if Say == 2 then 
      ss2()
    end
  end

function ss1()
gg.setVisible(false)
qmnb = {
{["memory"] = 32},
{["name"] = "safe"},
{["value"] = 100800, ["type"] = 4},
{["lv"] = 4, ["offset"] = -12, ["type"] = 4},
{["lv"] = 4, ["offset"] = -16, ["type"] = 4},
{["lv"] = 1053609165, ["offset"] = -56, ["type"] = 4},
{["lv"] = 1101004800, ["offset"] = -64, ["type"] = 4},
}
qmxg = {
{["value"] = 1034147594, ["offset"] = -60, ["type"] = 4},
}
xqmnb(qmnb)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-5.8430543e27;-2.8323923e28;-1.0012947e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-5.8430543e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
PARA999 = gg.getResults(100)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("FAST LANDING ON ✅")
  gg.toast("AVI HACKER YT")
end

function ss2()
gg.setValues(PARA999)
qmnb = {
{["memory"] = 32},
{["name"] = "safe"},
{["value"] = 100800, ["type"] = 4},
{["lv"] = 4, ["offset"] = -12, ["type"] = 4},
{["lv"] = 4, ["offset"] = -16, ["type"] = 4},
{["lv"] = 1053609165, ["offset"] = -56, ["type"] = 4},
{["lv"] = 1101004800, ["offset"] = -64, ["type"] = 4},
}
qmxg = {
{["value"] = 973279855, ["offset"] = -60, ["type"] = 4},
}
xqmnb(qmnb)
gg.clearResults()
gg.toast("FAST LANDING ❌")
gg.toast("AVI HACKER YT")
end

function loda()
lund1 = gg.alert("Sit Scope", " [✓]Activate", " [𝕏]Deactivate")
    if lund1 == 1 then
      sit()
    end
    if lund1 == 2 then 
      sit2()
    end
  end

function sit()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("18.38787841797", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2805)
gg.editAll("130.5419921875", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("?????? ??????????  ????")
gg.toast("AVI HACKER YT")
end

function sit2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("130.5419921875", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2805)
gg.editAll("18.38787841797", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("?????? ??????????  ??????")
gg.toast("AVI HACKER YT")
end

function chut()
lund2 = gg.alert("Front Scope", " [✓]Activate", " [𝕏]Deactivate")
    if lund2 == 1 then
      stand()
    end
    if lund2 == 2 then 
      stand2()
    end
  end

function stand()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4138667321167981973", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4848124999984742400", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("?????????? ??????????  ????")
gg.toast("AVI HACKER YT")
end

function stand2()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4848124999984742400", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("4138667321167981973", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("?????????? ??????????  ??????")
gg.toast("AVI HACKER YT")
end

function porn()
lund3 = gg.alert("Knock & Prone", " [✓]Activate", " [𝕏]Deactivate")
    if lund3 == 1 then
      knock()
    end
    if lund3 == 2 then 
      prone()
    end
  end

function knock()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-9.0072154e15;-2.7395928e28;-2.7860149e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("-2.7395928e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
ALI1=gg.getResults(1500)
gg.editAll("-2.73959299e28", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Speed Knock + Prone 0N")
gg.toast("AVI HACKER YT")
end

function prone()
gg.setValues(ALI1)
gg.toast("AVI HACKER YT")
end

function flas()
lodu2 = gg.alert("No Lag Flash", " [✓]Activate", " [𝕏]Deactivate")
    if lodu2 == 1 then
      Flash()
    end
    if lodu2 == 2 then 
      FlashOff()
    end
  end

function Flash()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88;60;50;2::", 16, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("60", 16, false, gg.SIGN_EQUAL, 0, -1)
FXA = gg.getResults(100)
gg.editAll("-60", 16)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,287,719,427,143,988,736", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
FXB = gg.getResults(1110)
gg.editAll("-1,296,744,153,870,237,696", 32)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-1,296,744,149,883,614,555",gg.TYPE_QWORD,false,gg.SIGN_EQUAL,0, -1)
FXC = gg.getResults(190)
gg.editAll("-1,296,744,153,870,237,696",gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber("-6.15264497e27", 16,false,gg.SIGN_EQUAL,0, -1)
FXD =gg.getResults(50)
gg.editAll("0",16)
gg.clearResults() 
gg.setRanges(16384) 
gg.searchNumber("-6.15262313e27", 16, false, gg.SIGN_EQUAL, 0, -1) 
FXE =gg.getResults(50) 
gg.editAll("0", 16) 
gg.clearResults() 
gg.alert("SHIT DOWN BRO ANTI-FULLBACK")
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1.0530367e28;-5.8454586e27;-2.7860151e28;-3.7444097e28;-2.793752e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-2.7860151e28;-3.7444097e28;-2.793752e28::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
N1=gg.getResults(3)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6.1526231e27;-1.0070975e28;::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-6.1526231e27", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
N2 = gg.getResults(1401)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1,873,498,234,778,812,417", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
L1=gg.getResults(1401)
gg.editAll("1,873,498,234,778,812,416", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("403,635,275,035,574,273", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
L2=gg.getResults(1401)
gg.editAll("403,635,275,035,574,272", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-2,044,616,634,647,180,784", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
R1=gg.getResults(1401)
gg.editAll("-2,044,616,634,647,180,783", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1296744149883614555", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
R2=gg.getResults(1401)
gg.editAll("-1296744153870237554", gg.TYPE_QWORD)
gg.clearResults()
gg.alert("FLASH 0N")
gg.toast("AVI HACKER YT")
end

function FlashOff()
gg.setValues(FXA)
gg.setValues(FXB)
gg.setValues(FXC)
gg.setValues(FXD)
gg.setValues(FXE)
gg.setValues(N1)
gg.setValues(N2)
gg.setValues(L1)
gg.setValues(L2)
gg.setValues(R1)
gg.setValues(R2)
gg.alert("FLASH 0FF")
gg.toast("AVI HACKER YT")
end

function bypass()
  AVI = gg.multiChoice({
    " Logo Bypass 1x",
    " Lobby Bypass 1x",
    " Anti Report Lobby 1x",
    " Back"
}, nil, "AVI HACKER YT ")
if AVI == nil then else
if AVI[1] == true then logo() end
if AVI[2] == true then loby() end
if AVI[3] == true then report() end
if AVI[5] == true then Main() end
end
Avinash = -1
end

function logo()
gg.setVisible(false)
gg.toast("▓▒▒▒▒▒▒▒▒▒10%")
gg.toast("▓▓▒▒▒▒▒▒▒▒20%")
gg.toast("▓▓▓▒▒▒▒▒▒▒30%")
gg.toast("▓▓▓▓▒▒▒▒▒▒40%")
gg.toast("▓▓▓▓▓▒▒▒▒▒50%")
gg.toast("▓▓▓▓▓▓▒▒▒▒60%")
gg.toast("▓▓▓▓▓▓▓▒▒▒70%")
gg.toast("▓▓▓▓▓▓▓▓▒▒80%")
gg.toast("▓▓▓▓▓▓▓▓▓▒90%")
gg.toast("▓▓▓▓▓▓▓▓▓▓100%")
gg.setVisible(false)
os.remove("/data/data/com.tencent.ig/files/*")
os.remove("/data/data/com.tencent.ig/app_crashrecord")
os.remove("/data/data/com.tencent.ig/files/*")
os.remove("/data/data/com.tencent.ig/app_crashrecord")
so=gg.getRangesList('libUE4.so')[1].start
py=0x67E48B8
setvalue(so+py,16,0)

so=gg.getRangesList('libUE4.so')[1].start
py=0x67E3760
setvalue(so+py,16,4.2245015e-39)
so=gg.getRangesList('libUE4.so')[1].start
py=0x67E3764
setvalue(so+py,16,4.2245085e-39)
gg.clearResults()
gg.alert("Logo Bypass Activated\nApply Safe Hacks")
gg.toast(" ██████████████ 100%")
gg.toast("AVI HACKER YT ")
end


function loby()
gg.toast("▓▒▒▒▒▒▒▒▒▒10%")
gg.toast("▓▓▒▒▒▒▒▒▒▒20%")
gg.toast("▓▓▓▒▒▒▒▒▒▒30%")
gg.toast("▓▓▓▓▒▒▒▒▒▒40%")
gg.toast("▓▓▓▓▓▒▒▒▒▒50%")
gg.toast("▓▓▓▓▓▓▒▒▒▒60%")
gg.toast("▓▓▓▓▓▓▓▒▒▒70%")
gg.toast("▓▓▓▓▓▓▓▓▒▒80%")
gg.toast("▓▓▓▓▓▓▓▓▓▒90%")
gg.toast("▓▓▓▓▓▓▓▓▓▓100%")
os.remove("/data/data/com.tencent.ig/files/*")
os.remove("/data/data/com.tencent.ig/app_crashrecord")
os.remove("/data/data/com.tencent.ig/files/*")
os.remove("/data/data/com.tencent.ig/app_crashrecord")
gg.setVisible(true)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("620137442967552")
gg.refineNumber("620137442967552")
gg.getResults(510)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("620137442967552")
gg.refineNumber("620137442967552")
gg.getResults(5010)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("578351706144768;564058054983680")
gg.refineNumber("578351706144768")
gg.getResults(50010)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setVisible(false)--Dec By MMP
gg.searchNumber("577252194516992;288233678981562368")
gg.refineNumber("577252194516992")
gg.getResults(50010)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("3298534883328~288233678981562368;288233678981562368")
gg.refineNumber("3298534883328~288233678981562368")
gg.getResults(5678)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("280~590336;67109633")
gg.refineNumber("280~590336")
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("134914;144387", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
gg.getResults(62877)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("133634;133890", gg.TYPE_DWORD)
gg.refineNumber("133634", gg.TYPE_DWORD)
gg.getResults(62877)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("133634;134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(62877)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("909391408", gg.TYPE_DWORD)
gg.getResults(62877)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("909391408", gg.TYPE_DWORD)
gg.getResults(999)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("67633927;67109377", gg.TYPE_DWORD)
gg.refineNumber("67633927;67109377", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("67633927", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("67109390;67114093", gg.TYPE_DWORD)
gg.refineNumber("67109390;67114093", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("67633927", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("196,864;16,842,753::5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("196,864", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("67,109,377;16,384", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("16384", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("131,330;134,658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134,658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("135,682;144,387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("135,682", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("4,096;135,682", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("4,096", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("134,402;67,109,377", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134,402", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("134,658;134,658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("134,658", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("131,842;133,635", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("131,842", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("133,634;135,682", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("133,634", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("133,378;144,387", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("133,378", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("84,149,249", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("620137442967552")
gg.refineNumber("620137442967552")
gg.getResults(510)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("620137442967552")
gg.refineNumber("620137442967552")
gg.getResults(5010)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("578351706144768;564058054983680")
gg.refineNumber("578351706144768")
gg.getResults(50010)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setVisible(false)--Dec By MMP
gg.searchNumber("577252194516992;288233678981562368")
gg.refineNumber("577252194516992")
gg.getResults(50010)
gg.editAll("288233678981562368", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("3298534883328~288233678981562368;288233678981562368")
gg.refineNumber("3298534883328~288233678981562368")
gg.getResults(5678)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("280~590336;67109633")
gg.refineNumber("280~590336")
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("134914;144387", gg.TYPE_DWORD)
gg.refineNumber("134914", gg.TYPE_DWORD)
gg.getResults(62877)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("133634;133890", gg.TYPE_DWORD)
gg.refineNumber("133634", gg.TYPE_DWORD)
gg.getResults(62877)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("133634;134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("133634", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.getResults(62877)
gg.editAll("133890", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("909391408", gg.TYPE_DWORD)
gg.getResults(62877)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.setVisible(false)--Dec By MMP
gg.searchNumber("909391408", gg.TYPE_DWORD)
gg.getResults(999)
gg.editAll("1089886885", gg.TYPE_DWORD)
gg.clearResults()
 gg.alert("Bypass Activated Done\nGo & Fuck The Lobby\nLobby Ki Maa Chod Dena")
gg.toast(" ██████████████ 100%")
gg.toast("AVI HACKER YT ")
end


function report()
gg.setVisible(false)
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.toast("Logs Clean Successful")
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC) 
gg.searchNumber(":tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber(":tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":", gg.TYPE_BYTE)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC) 
gg.searchNumber(":Tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber(":Tss", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":", gg.TYPE_BYTE)
gg.clearResults()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC) 
gg.searchNumber(":TSS", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber(":TSS", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(10000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":", gg.TYPE_BYTE)
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":get_report_data", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":get_report_data2", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":Delete_reports.bat", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":report_apk", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":tdm_report_sdk_update_config_finish", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":tdm_report_sdk_update_config_finish", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":sc_report", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll("0", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":TssSDKGetReportData", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll(":TssSDKDelReportData", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":TssSDKOnRecvData", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll(":TssSDKDelRecvData", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber(":N6TssSDK11ReportQueueE", gg.TYPE_BYTE)
gg.getResults(17071992)
gg.editAll(":Block", gg.TYPE_BYTE)
gg.clearResults()
gg.alert("Anti Report Done\nReport Ki Maaki Chut\nTeam Mate Se Report Krwa Ke Check Krle") 
gg.toast("AVI HACKER YT ")
end


function exit()
print("Telegram: https://t.me/Unique_Cheats")
print("@AVIHACKERYT")
gg.setVisible(true)
os.exit()
end

Main() 
while true do
  if gg.isVisible(true) then 
     Avinash = 1
    gg.setVisible(false)
  end
  if Avinash == 1 then
    Main()
  end
end
