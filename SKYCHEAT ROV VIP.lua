-- fix address lib
-- fixed by asd vip pro
function setvalue(address,flags,value) local tt={} tt[1]={} tt[1].address=address tt[1].flags=flags tt[1].value=value gg.setValues(tt) end
----------------------------------------------------------
local n, startAddress, endAddress = nil, 0, 0
local function name(lib)
if n == lib then
 return startAddress, endAddress end
local ranges = gg.getRangesList(lib or 'libil2cpp.so' or 'libanogs.so') -- ตัวคำนวณลิป
for i, v in ipairs(ranges) do
if v.state == "Xa" then
startAddress = v.start
endAddress = ranges[#ranges]['end']
break
end
end
return startAddress, endAddress
end
local function AsdMemory(libname, offset, hex)
name(libname)
local t, total = {}, 0
for h in string.gmatch(hex, "%S%S") do
table.insert(t, {
address = startAddress + offset + total,
flags = gg.TYPE_BYTE,
value = h .. "r"
})
total = total + 1
end
local res = gg.setValues(t)
if type(res) ~= 'string' then
return true
else
gg.alert(res)
return false
end;end
----------------------------------------------------------
function name(n);gg.setVisible(false)
if lib ~= n then
lib = n
local ranges = gg.getRangesList(lib)
if #ranges == 0 then
b=gg.alert("สคริปต์นี้ไม่สามารถค้นหาข้อมูล\t"..lib.."\n\nก่อนใช้งานโปรดเลือกข้อมูลของเกมให้ถูกต้อง","RESTART","EXIT")
function log(n) gg.sleep(500);gg.alert("สคริปต์นี้ไม่สามารถค้นหาข้อมูล\t"..lib.."\n\nก่อนใช้งานโปรดเลือกข้อมูลของเกมให้ถูกต้อง","EXIT");print("nil false") end
if b == 1 then name(n);log(n) end
if b == 2 then os.exit() end
os.exit()
else
memFrom = ranges[1].start
memTo = ranges[#ranges]["end"]
end;end;end
----------------------------------------------------------
-- code offset
AsdMemory("libanogs.so", 0x234, "00 00 00 00")
AsdMemory("libil2cpp.so", 0x130FCB0,"00 00 A0 E3 1E FF 2F E1")  
   -- //public static byte[] GetReportData()
AsdMemory("libil2cpp.so", 0x2F4F898,"00 00 A0 E3 1E FF 2F E1")  
--   //public static byte[] GetReportData2() { }
AsdMemory("libil2cpp.so", 0x2F4FDC0,"00 00 A0 E3 1E FF 2F E1")  
   -- //public static byte[] GetReportData3() { }
AsdMemory("libil2cpp.so", 0x2F4FFD0,"00 00 A0 E3 1E FF 2F E1")  
--   //private static extern void AnoSDKInit(int gameID) { }
AsdMemory("libil2cpp.so", 0x2F4F398,"00 00 A0 E3 1E FF 2F E1")  
-- //private static extern IntPtr AnoSDKGetReportData() { }
AsdMemory("libil2cpp.so", 0x2F4FA10,"00 00 A0 E3 1E FF 2F E1")  
  --  //private static extern IntPtr AnoSDKGetReportData2() { }
AsdMemory("libil2cpp.so", 0x2F4FF38,"00 00 A0 E3 1E FF 2F E1")  
--    //private static extern IntPtr AnoSDKGetReportData3() { }
AsdMemory("libil2cpp.so", 0x2F50150,"00 00 A0 E3 1E FF 2F E1")   
AsdMemory("libanogs.so", 0x1C44C,"00 00 00 00")  
AsdMemory("libanogs.so", 0x1C454,"00 00 A0 E3 1E FF 2F E1")  
AsdMemory("libil2cpp.so", 0x1D03500,"00 00 A0 E3 1E FF 2F E1")  
AsdMemory("libil2cpp.so", 0x1D03508,"00 00 A0 E3 1E FF 2F E1")
gg.toast("Bypass Auto On • Protected Save",true)
----------------------------------------------------------
gg.setVisible(false,true,false)
online=gg.alert("อนุญาติให้สคริปต์ทำงานแบบอนไลน์ได้หรือไม่","อนุญาติ","ออก")
if online == 1 then load(gg.makeRequest("https://Garena.com").content);gg.toast("Script : Onliner");else end -- สามารถใส่api vpnได้ (ลิ้งค์เท่านั้น)
if online == 2 then os.exit(print("nil false")) end
cd=os.date("Script Rov Thailand • Version 1.50.1.6\nVip Hack by : Sky_Cheat\nTime&Date : %X • %x\n\nTelegram : @SKYKUNG")
gg.setVisible(true,false,true)
----------------------------------------------------------
function main()
vip=gg.prompt({
	"[1]➢『Bypass🛡』(Lobby)",
	"[2]➢『Hack Maps👥』",
	"[3]➢『Show Untimed👥』",
	"[4]➢『Camera Hight🔥』",
	"[5]➢『Aimboth Awsu🌌ุ』",
	"[6]➢『Smooth FPS60🌃』",
	"[7]➢『Show History』(Lobby)",
	"[8]➢『Show Avatar』(Lobby)",
	"[9]➢『HideName』(Lobby)",
	"[10]➢『ShowNamePickBan』(Lobby)",
	"[11]➢『Contacted』(ช่องทางติดต่อ)",
	"☰▌Exited For Script▐☰"},vip,{"checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox","checkbox"})
	if vip == nil then os.exit() end
	if vip[1] == true then sky1() end
	if vip[2] == true then sky2() end
	if vip[3] == true then sky3() end
	if vip[4] == true then sky4() end
	if vip[5] == true then sky5() end
	if vip[6] == true then sky6() end
	if vip[7] == true then sky7() end
	if vip[8] == true then sky8() end
	if vip[9] == true then sky9() end
	if vip[10] == true then sky10() end
	if vip[11] == true then sky11() end
	if vip[12] == true then sky12() end
	skymoder=-1
	end
	
	function sky1() -- บายพาสกันแบน
	AsdMemory("libanogs.so", 0x234, "00 00 00 00")
	AsdMemory("libil2cpp.so", 0x130FCB0,"00 00 A0 E3 1E FF 2F E1")  
	   -- //public static byte[] GetReportData()
	AsdMemory("libil2cpp.so", 0x2F4F898,"00 00 A0 E3 1E FF 2F E1")  
	--   //public static byte[] GetReportData2() { }
	AsdMemory("libil2cpp.so", 0x2F4FDC0,"00 00 A0 E3 1E FF 2F E1")  
	   -- //public static byte[] GetReportData3() { }
	AsdMemory("libil2cpp.so", 0x2F4FFD0,"00 00 A0 E3 1E FF 2F E1")  
	--   //private static extern void AnoSDKInit(int gameID) { }
	AsdMemory("libil2cpp.so", 0x2F4F398,"00 00 A0 E3 1E FF 2F E1")  
	-- //private static extern IntPtr AnoSDKGetReportData() { }
	AsdMemory("libil2cpp.so", 0x2F4FA10,"00 00 A0 E3 1E FF 2F E1")  
	  --  //private static extern IntPtr AnoSDKGetReportData2() { }
	AsdMemory("libil2cpp.so", 0x2F4FF38,"00 00 A0 E3 1E FF 2F E1")  
	--    //private static extern IntPtr AnoSDKGetReportData3() { }
	AsdMemory("libil2cpp.so", 0x2F50150,"00 00 A0 E3 1E FF 2F E1")   
	AsdMemory("libanogs.so", 0x1C44C,"00 00 00 00")  
	AsdMemory("libanogs.so", 0x1C454,"00 00 A0 E3 1E FF 2F E1")  
	AsdMemory("libil2cpp.so", 0x1D03500,"00 00 A0 E3 1E FF 2F E1")  
	AsdMemory("libil2cpp.so", 0x1D03508,"00 00 A0 E3 1E FF 2F E1")
	gg.toast("ঔৣ‌➳Script Actived Done")
	end
	
	function sky2() -- แอ็กแมพล่าสุด
	so = gg.getRangesList('libil2cpp.so')[1].start
	py = 0x1ECAF90--public void Reset(LActorRoot actor) { } /noID
	setvalue(so + py, 4, -476053503)
	py = py + 0x4
	setvalue(so + py, 4, -516948194)
	----------------------------------------------------------
	py = 0x1F36F9C--public void CalcVisible() { }
	setvalue(so + py, 4, -476053503)
	py = py + 0x4
	setvalue(so + py, 4, -516948194)
	----------------------------------------------------------
	py = 0x20C7EDC--private void RefreshVisible(COM_PLAYERCAMP targetCamp) { }
	setvalue(so + py, 4, -476053503)
	py = py + 0x4
	setvalue(so + py, 4, -516948194)
	gg.toast("ঔৣ‌➳Script Actived Done")
	end
	
	function sky3() -- โชว์อันติศัตรู
	so = gg.getRangesList('libil2cpp.so')[1].start
	py = 0x170458C--private void ShowHeroInfo(PoolObjHandle<ActorLinker> actor, bool bShow) { }
	setvalue(so + py, 4, -476053503)
	py = py + 0x4
	setvalue(so + py, 4, -516948194)
	----------------------------------------------------------
	py = 0x1AE7DB4--public void ShowHeroHpInfo(bool bShow) { }
	setvalue(so + py, 4, -476053503)
	py = py + 0x4
	setvalue(so + py, 4, -516948194)
	----------------------------------------------------------
	py = 0x1AE7F08--public void ShowSkillStateInfo(bool bShow) { } /อันแรก
	setvalue(so + py, 4, -476053503)
	py = py + 0x4
	setvalue(so + py, 4, -516948194)
	gg.toast("ঔৣ‌➳Script Actived Done")
	end
	
	function sky4() -- มองมุมสูง
	so = gg.getRangesList('libil2cpp.so')[1].start
	py = 0x18A2A04--private float GetCameraHeightRateValue(int type) { }
	setvalue(so + py, 4, -476053119)
	py = py + 0x4
	setvalue(so + py, 4, -516948194)
	gg.toast("ঔৣ‌➳Script Actived Done")
	end
	
	function sky5() -- ล๊อกเป้าเอวสุ
	so = gg.getRangesList('libil2cpp.so')[1].start
	py = 0xE989FC --public bool IsSmartUse() { }
	setvalue(so + py, 4, -476053503)
	py = py + 0x4 setvalue(so + py, 4, -516948194)
	py = 0x17EF824 --public bool get_IsUseCameraMoveWithIndicator() { }
	setvalue(so + py, 4, -476053503)
	py = py + 0x4 setvalue(so + py, 4, -516948194)
	py = 0x17F2568 --public bool IsUseSkillJoystick(SkillSlotType slot) { }
	setvalue(so + py, 4, -476053503)
	py = py + 0x4 setvalue(so + py, 4, -516948194)
	gg.toast("ঔৣ‌➳Script Actived Done")
	end
	
	function sky6()
	MemoryPatch("libil2cpp.so", 0xFD2D00, "01 00 A0 E3 1E FF 2F E1")
	gg.toast("ঔৣ‌➳Script Stoped  Done")
	end
	
	function sky7() -- โชว์ประวัติศาสตร์
	so = gg.getRangesList('libil2cpp.so')[1].start
	py = 0x11EE890 --get_IsHostProfile
	setvalue(so + py, 4, -476053503)
	py = py + 0x4 setvalue(so + py, 4, -516948194)
	gg.toast("ঔৣ‌➳Script Actived Done")
	end
	
	function sky8() -- โชว์สัญลักษณ์
	so = gg.getRangesList('libil2cpp.so')[1].start
	py = 0xFFB4A4 --checkTeamLaderGradeMax(int MapType) { } /class CMatchingSystem
	setvalue(so + py, 4, "h 00 00 A0 E3")    
	py = py + 0x4 setvalue(so + py, 4, "h 1E FF 2F E1")
	gg.toast("ঔৣ‌➳Script Actived Done")
	end
	
	function sky9() -- ซ่อนชื่อตัวเอง
	so = gg.getRangesList('libil2cpp.so')[1].start
	py = 0xEB83C0 --SetPlayerName(string playerName, string prefixName = "", bool isGuideLevel = False) { }
	setvalue(so + py, 4, -476053503)
	py = py + 0x4 setvalue(so + py, 4, -516948194)
	gg.toast("ঔৣ‌➳Script Actived Done")
	end
	
	function sky10() -- โชว์ชื่อรายการpickban
	so = gg.getRangesList('libil2cpp.so')[1].start
	py = 0x171039C --public void InitTeamHeroList(CUIListScript listScript, COM_PLAYERCAMP camp, bool isLeftList = True, bool isMidPos = False) { } /class HeroSelectBanPickWindow
	setvalue(so + py, 4, "h 01 50 A0 E3")    
	py = py + 0x4 setvalue(so + py, 4, "h 1E FF 2F E1")
	gg.toast("ঔৣ‌➳Script Actived Done")
	end
	
	function sky11() -- ช่องทางติดต่อ 
	chat=gg.alert(''..cd..'',"SUBSCRIBE","BLACK","TELEGRAM")
	if chat == 1 then gg.copyText("https://youtube.com/@user-jc9bg6zt7h");main() end -- ลิ้งค์หรือชื่อช่องยูทูปของตัวเอง
	if chat == 2 then gg.toast("ออกสคริปต์แล้วนะค้าบบ ไว้เจอกันใหม่👋");sky12() end
	if chat == 3 then gg.copyText("https://t.me/ONEKUNG999");main() end -- ใส่ลิ้งค์เทเรเเกรม
	end
	
	function sky12()
	print(''..cd..'')
	os.exit()
	end
	while true do
	if gg.isVisible(true) then
	skymoder = 1
	gg.setVisible(false) end
	if skymoder == 1 then
	main() end end  