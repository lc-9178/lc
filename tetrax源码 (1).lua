myconfigs = { "zzzzosky#1", "TeTraXDev", "zzzzzosky" }
getgenv().setColor = Color3.fromRGB(252, 3, 90)
if setfpscap then
	setfpscap(900)
end
getgenv().Antifog = true
local v_u_1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/ieufhosivdlkjv/TSSECURITY/refs/heads/main/Configs"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ieufhosivdlkjv/hexagons/refs/heads/main/Module.lua"))()
local v_u_2 = loadstring(game:HttpGet("https://raw.githubusercontent.com/ieufhosivdlkjv/hexagons/refs/heads/main/Conn.Lua"))()
local v_u_3 = game:GetService("TeleportService")
local v_u_4 = game:GetService("HttpService")
local function v_u_980()
	-- upvalues: (ref) v_u_4, (ref) v_u_1
	local v_u_5 = game:GetService("Players")
	local v_u_6 = v_u_5.LocalPlayer
	local v_u_7 = v_u_6.Name
	local v_u_8 = v_u_6.UserId
	local v_u_9 = v_u_6.Character
	local v_u_10 = v_u_9:WaitForChild("Humanoid")
	local v_u_11 = v_u_9:WaitForChild("HumanoidRootPart")
	local v_u_12 = game:GetService("RunService")
	local v_u_13 = game:GetService("UserInputService")
	local v_u_14 = game:GetService("TeleportService")
	local v_u_15 = game:GetService("Workspace").CurrentCamera
	rands = { "Head", "HumanoidRootPart" }
	local v_u_16 = {}
	local v_u_17 = {}
	local v_u_18 = {}
	local v19 = loadstring(game:HttpGet("https://raw.githubusercontent.com/TTX-OnTop/CPEnjoyer/refs/heads/main/Settings"))()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/TTX-OnTop/CPEnjoyer/refs/heads/main/BanCheck"))()
	local v_u_20 = loadstring(game:HttpGet("https://pastebin.com/raw/11VPXFx4"))()
	local v_u_21 = {}
	function GetEquippedName()
		item = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
		pcall(function()
			l = item.inventory.getEquippedItem().name
			tt = tostring(l)
		end)
		return tt
	end
	function projectileHit(p22)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("projectileHit") then
			game:GetService("ReplicatedStorage").devv.remoteStorage.projectileHit:FireServer(unpack(p22))
		end
	end
	function flameHit(p23)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("flameHit") then
			game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("flameHit"):FireServer(unpack(p23))
		end
	end
	function acidHit(p24)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("acidHit") then
			game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("acidHit"):FireServer(unpack(p24))
		end
	end
	function meleeItemHit(p25)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("meleeItemHit") then
			game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("meleeItemHit"):FireServer(unpack(p25))
		end
	end
	function GetEquipped()
		item = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
		pcall(function()
			l = item.inventory.getEquippedItem().guid
			tt = tostring(l)
		end)
		return tt
	end
	function loadFunc(p26, p27, p28)
		l = require(game:GetService("ReplicatedStorage").devv).load
		l_LocalPlayer_0 = game:GetService("Players")[p26]
		v5 = l("ClientReplicator")
		v4 = l("FFCChain")
		warn("[TeTraX] Ohio Loader Activated!")
		v5.Set(l_LocalPlayer_0, p27, p28)
		v5.Replicate(p27)
		print(v5.Get(l_LocalPlayer_0, p27))
	end
	function allJewelryCases()
		alljewls = {}
		jewelryloc = game:GetService("Workspace").GemRobbery.JewelryCases
		local v29, v30, v31 = pairs(jewelryloc.LowYieldSpawns:GetChildren())
		while true do
			local v32
			v31, v32 = v29(v30, v31)
			if v31 == nil then
				break
			end
			table.insert(alljewls, v32)
		end
		local v33, v34, v35 = pairs(jewelryloc.HighYieldSpawns:GetChildren())
		while true do
			local v36
			v35, v36 = v33(v34, v35)
			if v35 == nil then
				break
			end
			table.insert(alljewls, v36)
		end
		return alljewls
	end
	function getVehicles()
		vehs = {}
		local v37, v38, v39 = pairs(workspace.Game.Vehicles:GetChildren())
		while true do
			local v40
			v39, v40 = v37(v38, v39)
			if v39 == nil then
				break
			end
			table.insert(vehs, v40)
		end
		return vehs
	end
	local v_u_41 = nil
	v_u_41 = hookmetamethod(game, "__namecall", function(p42)
		-- upvalues: (ref) v_u_41
		local v43 = getnamecallmethod()
		return getgenv().autofist == true and (v43 == "FireServer" and p42.Name == "equip") and "Fists" or v_u_41(p42, unpack({ ... }))
	end)
	function changeColor()
		-- upvalues: (ref) v_u_20
		color3func = getgenv().setColor or v_u_20.setColorfunc()
		game:GetService("Lighting").Atmosphere.Color = color3func
	end
	changeColor()
	function activateColor()
		game:GetService("Lighting").Atmosphere:GetPropertyChangedSignal("Color"):Connect(changeColor)
	end
	activateColor()
	function antifogger()
		if game:GetService("Lighting").Atmosphere.Density > 0 then
			game:GetService("Lighting").Atmosphere.Density = 0
		end
	end
	antifogger()
	function activateAntiFog()
		game:GetService("Lighting").Atmosphere:GetPropertyChangedSignal("Density"):Connect(antifogger)
	end
	activateAntiFog()
	function getTreasure()
		tresleft = {}
		treasure = workspace.Game.Local.Debris
		local v44, v45, v46 = pairs(treasure:GetChildren())
		while true do
			local v47
			v46, v47 = v44(v45, v46)
			if v46 == nil then
				break
			end
			if v47.Name == "TreasureMarker" then
				table.insert(tresleft, v47)
			end
		end
		return tresleft
	end
	function chatSpy()
		enabled = true
		spyOnMyself = true
		public = false
		publicItalics = true
		privateProperties = {
			["Color"] = Color3.fromRGB(0, 255, 255),
			["Font"] = Enum.Font.SourceSansBold,
			["TextSize"] = 18
		}
		StarterGui = game:GetService("StarterGui")
		Players = game:GetService("Players")
		player = Players.LocalPlayer or (Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer)
		saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
		getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
		instance = (getgenv().chatSpyInstance or 0) + 1
		getgenv().chatSpyInstance = instance
		function onChatted(p_u_48, p49)
			if getgenv().chatSpyInstance == instance then
				if p_u_48 ~= player or p49:lower():sub(1, 4) ~= "/spy" then
					if enabled and (spyOnMyself == true or p_u_48 ~= player) then
						local v_u_50 = p49:gsub("[\n\r]", ""):gsub("\t", " "):gsub("[ ]+", " ")
						hidden = true
						conn = getmsg.OnClientEvent:Connect(function(p51, p52)
							-- upvalues: (ref) p_u_48, (ref) v_u_50
							if p51.SpeakerUserId == p_u_48.UserId then
								local v53 = v_u_50
								if p51.Message == v53:sub(#v_u_50 - #p51.Message + 1) and (p52 == "All" or p52 == "Team" and (public == false and Players[p51.FromSpeaker].Team == player.Team)) then
									hidden = false
								end
							end
						end)
						wait(1)
						conn:Disconnect()
						if hidden and enabled then
							if public then
								saymsg:FireServer((publicItalics and "/me " or "") .. "{SPY} [" .. p_u_48.Name .. "]: " .. v_u_50, "All")
							else
								privateProperties.Text = "{SPY} [" .. p_u_48.Name .. "]: " .. v_u_50
								StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
							end
						end
					end
				else
					enabled = not enabled
					wait(0.3)
					privateProperties.Text = "{SPY " .. (enabled and "EN" or "DIS") .. "ABLED}"
					StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
				end
			end
		end
		local v54, v55, v56 = ipairs(Players:GetPlayers())
		while true do
			local v_u_57
			v56, v_u_57 = v54(v55, v56)
			if v56 == nil then
				break
			end
			v_u_57.Chatted:Connect(function(p58)
				-- upvalues: (ref) v_u_57
				onChatted(v_u_57, p58)
			end)
		end
		Players.PlayerAdded:Connect(function(p_u_59)
			p_u_59.Chatted:Connect(function(p60)
				-- upvalues: (ref) p_u_59
				onChatted(p_u_59, p60)
			end)
		end)
		privateProperties.Text = "{TeTraXChatSPY " .. (enabled and "EN" or "DIS") .. "ABLED}"
		StarterGui:SetCore("ChatMakeSystemMessage", privateProperties)
		if not player.PlayerGui:FindFirstChild("Chat") then
			wait(3)
		end
		chatFrame = player.PlayerGui.Chat.Frame
		chatFrame.ChatChannelParentFrame.Visible = true
		chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position + UDim2.new(UDim.new(), chatFrame.ChatChannelParentFrame.Size.Y)
	end
	chatSpy()
	function getJewelryGUIDALL()
		-- upvalues: (ref) v_u_11
		aljewelry = {
			"Dark Matter Gem",
			"Void Gem",
			"Diamond Ring",
			"Diamond",
			"Rollie",
			"Gold Crown",
			"Gold Cup",
			"Emerald",
			"Emerald Ring",
			"Gold Bar",
			"Amethyst",
			"Amethyst Ring",
			"Topaz",
			"Topaz Ring",
			"Sapphire Ring",
			"Sapphire",
			"Ruby",
			"Ruby Ring",
			"Watch"
		}
		jewelrycases = allJewelryCases()
		guidjca = {}
		local v61, v62, v63 = pairs(jewelrycases)
		while true do
			local v64
			v63, v64 = v61(v62, v63)
			if v63 == nil then
				break
			end
			local v65, v66, v67 = pairs(aljewelry)
			while true do
				local v68
				v67, v68 = v65(v66, v67)
				if v67 == nil then
					break
				end
				if v64.PrimaryPart then
					dis = (v_u_11.Position - v64.PrimaryPart.Position).magnitude
					if dis <= 11 then
						table.insert(guidjca, v64:GetAttribute("guid"))
					end
				end
			end
		end
		return guidjca
	end
	function getJewelryGUID()
		-- upvalues: (ref) v_u_11
		jewelry = {
			"Dark Matter Gem",
			"Void Gem",
			"Diamond Ring",
			"Diamond",
			"Rollie",
			"Gold Crown",
			"Gold Cup"
		}
		jewelrycases = allJewelryCases()
		guidj = {}
		local v69, v70, v71 = pairs(jewelrycases)
		while true do
			local v72
			v71, v72 = v69(v70, v71)
			if v71 == nil then
				break
			end
			local v73, v74, v75 = pairs(jewelry)
			while true do
				local v76
				v75, v76 = v73(v74, v75)
				if v75 == nil then
					break
				end
				if v72.PrimaryPart then
					dis = (v_u_11.Position - v72.PrimaryPart.Position).magnitude
					if dis <= 10 then
						table.insert(guidj, v72:GetAttribute("guid"))
					end
				end
			end
		end
		return guidj
	end
	function equip(p77)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("equip") then
			game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("equip"):FireServer(p77)
		end
	end
	function buyItem(p78)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("attemptPurchase") then
			game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("attemptPurchase"):InvokeServer(p78)
		end
	end
	function attemptCall(p79)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("attemptCall") then
			reqload = require(game:GetService("ReplicatedStorage").devv).load
			loader = reqload("Signal")
			local v80, v81 = loader.InvokeServer("attemptCall", p79.UserId)
			callid = v81
			value = v80
			loader.FireServer("sendPhoneAction", callid, "hangup")
		end
	end
	function buyAmmo(p82)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("attemptPurchaseAmmo") then
			game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("attemptPurchaseAmmo"):InvokeServer(p82)
		end
	end
	function Reload(p83)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("reload") then
			game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("reload"):FireServer(p83)
		end
	end
	function sellitem(p84)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("sellItem") then
			game:GetService("ReplicatedStorage").devv.remoteStorage.sellItem:FireServer(p84)
		end
	end
	function sellallitems()
		gg = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
		local v85 = next
		local v86 = gg.inventory.ordered
		local v87 = nil
		while true do
			local v88
			v87, v88 = v85(v86, v87)
			if v87 == nil then
				break
			end
			sellitem(v88)
		end
	end
	function pepperSprayHit(p89)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("pepperSprayHit") then
			game:GetService("ReplicatedStorage").devv.remoteStorage.pepperSprayHit:FireServer(unpack(p89))
		end
	end
	function replicateProjectiles(p90)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("replicateProjectiles") then
			game:GetService("ReplicatedStorage").devv.remoteStorage.replicateProjectiles:FireServer(unpack(p90))
		end
	end
	function rocketHit(p91)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("rocketHit") then
			game:GetService("ReplicatedStorage").devv.remoteStorage.rocketHit:FireServer(unpack(p91))
		end
	end
	function Stomp(p92)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("stomp") then
			game:GetService("ReplicatedStorage").devv.remoteStorage.stomp:FireServer(unpack(p92))
		end
	end
	function grabfunc(p93)
		game:GetService("ReplicatedStorage").devv.remoteStorage[tostring(getupvalue(require(game:GetService("ReplicatedStorage").devv.client.Helpers.remotes.Signal).FireServer, 1).grabPlayer)]:FireServer(unpack({ p93 }))
	end
	function getPlayerEquipped()
		pcall(function()
			v3Items = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
			ggg = getupvalues(v3Items.inventory.setEquipped)[7].equipped
		end)
		return ggg
	end
	function killfunc(p94)
		-- upvalues: (ref) v_u_11, (ref) v_u_7, (ref) v_u_16, (ref) v_u_21
		getfriend = getFriends()
		if p94.Character and (not p94.Character:FindFirstChild("ForceField") and (p94.Character:FindFirstChild("HumanoidRootPart") and p94.Character:FindFirstChild("Humanoid"))) then
			vname = p94.Name
			vuserid = p94.UserId
			vhumrootpart = p94.Character.HumanoidRootPart
			vhumanoid = p94.Character.Humanoid
			dis = (v_u_11.Position - vhumrootpart.Position).magnitude
			if dis <= 25 and (vname ~= v_u_7 and (getfriend[table.find(getfriend, vname)] ~= vname and (v_u_16[table.find(v_u_16, vname)] ~= vname and v_u_21[table.find(v_u_21, vuserid)] ~= vuserid))) then
				args = {
					"player",
					{
						["meleeType"] = "meleemegapunch",
						["hitPlayerId"] = vuserid
					}
				}
				reqload = require(game:GetService("ReplicatedStorage").devv).load
				loader = reqload("Signal")
				loader.FireServer("meleeItemHit", unpack(args))
			end
		end
	end
	function equipHash(p95)
		if game:GetService("ReplicatedStorage").devv.remoteStorage[tostring(getupvalue(require(game:GetService("ReplicatedStorage").devv.client.Helpers.remotes.Signal).FireServer, 1).equip)] then
			game:GetService("ReplicatedStorage").devv.remoteStorage[tostring(getupvalue(require(game:GetService("ReplicatedStorage").devv.client.Helpers.remotes.Signal).FireServer, 1).equip)]:FireServer(p95)
		end
	end
	function sendMessage(p96)
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("sendMessage") then
			game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("sendMessage"):FireServer(unpack(p96))
		end
	end
	function stompfunc(p97)
		-- upvalues: (ref) v_u_11, (ref) v_u_7, (ref) v_u_16, (ref) v_u_21
		getfriend = getFriends()
		if p97.Character and (not p97.Character:FindFirstChild("ForceField") and (p97.Character:FindFirstChild("HumanoidRootPart") and p97.Character:FindFirstChild("Humanoid"))) then
			vname = p97.Name
			vuserid = p97.UserId
			vhumrootpart = p97.Character.HumanoidRootPart
			dis = (v_u_11.Position - vhumrootpart.Position).magnitude
			if dis <= 25 and (vname ~= v_u_7 and (getfriend[table.find(getfriend, vname)] ~= vname and (v_u_16[table.find(v_u_16, vname)] ~= vname and v_u_21[table.find(v_u_21, vuserid)] ~= vuserid))) then
				args = { p97 }
				reqload = require(game:GetService("ReplicatedStorage").devv).load
				loader = reqload("Signal")
				loader.FireServer("stomp", unpack(args))
			end
		end
	end
	function getAmmo()
		settings = {}
		items = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
		if items:FindFirstChild("inventory") then
			gg = items.inventory.getEquippedItem().ammoManager.ammo
			table.insert(settings, gg)
		end
		return settings
	end
	function silentBlock()
		l = require(game:GetService("ReplicatedStorage").devv).load
		l_LocalPlayer_0 = game:GetService("Players").LocalPlayer
		v5 = l("ClientReplicator")
		v4 = l("FFCChain")
		if getgenv().silentblock ~= true or v5.Get(l_LocalPlayer_0, "blocking") ~= false then
			if getgenv().silentblocker == false then
				v5.Set(l_LocalPlayer_0, "blocking", false)
				v5.Replicate("blocking")
			end
		else
			v5.Set(l_LocalPlayer_0, "blocking", true)
			v5.Replicate("blocking")
		end
	end
	function customMessage()
		-- upvalues: (ref) v_u_20
		getgenv().saycustommsgswitch = v_u_20.customMessageSettings.Toggle()
		getgenv().saycustommsg = v_u_20.customMessageSettings.message()
		getgenv().saycustommsgtime = v_u_20.customMessageSettings.messagetime()
		getgenv().mtoastcolor = v_u_20.customMessageSettings.messagecolor()
		if getgenv().saycustommsgswitch == true then
			l = require(game:GetService("ReplicatedStorage").devv).load
			v10 = l("makeToast")
			v10(tostring(getgenv().saycustommsg), tostring(getgenv().mtoastcolor), getgenv().saycustommsgtime)
		end
	end
	customMessage()
	function antiGrab()
		l = require(game:GetService("ReplicatedStorage").devv).load
		l_LocalPlayer_0 = game:GetService("Players").LocalPlayer
		v2 = l("ClientReplicator")
		v4 = l("FFCChain")
		if getgenv().antigrab == true and v2.Get(l_LocalPlayer_0, "carried") == true then
			v2.Set(l_LocalPlayer_0, "carried", false)
		end
	end
	function GetCash()
		local v98, v99, v100 = pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren())
		local v101 = {}
		while true do
			local v102
			v100, v102 = v98(v99, v100)
			if v100 == nil then
				break
			end
			table.insert(v101, v102)
		end
		return v101
	end
	function tablecash()
		allcash = GetCash()
		getcashman = {}
		local v103, v104, v105 = pairs(allcash)
		while true do
			local v106
			v105, v106 = v103(v104, v105)
			if v105 == nil then
				break
			end
			if v106.PrimaryPart and (not v106:IsA("MeshPart") and (v106:FindFirstChildWhichIsA("IntValue") and v106:FindFirstChildWhichIsA("IntValue").Value > 300)) then
				table.insert(getcashman, v106)
			end
		end
		return getcashman
	end
	function GetItems()
		local v107, v108, v109 = pairs(game:GetService("Workspace").Game.Entities:WaitForChild("ItemPickup"):GetChildren())
		local v110 = {}
		while true do
			local v111
			v109, v111 = v107(v108, v109)
			if v109 == nil then
				break
			end
			table.insert(v110, v111)
		end
		return v110
	end
	function GetATMS()
		local v112, v113, v114 = pairs(game:GetService("Workspace").Game.Props.ATM:GetChildren())
		local v115 = {}
		while true do
			local v116
			v114, v116 = v112(v113, v114)
			if v114 == nil then
				break
			end
			table.insert(v115, v116)
		end
		local v117, v118, v119 = pairs(game:GetService("Workspace").Game.Props.CashRegister:GetChildren())
		while true do
			local v120
			v119, v120 = v117(v118, v119)
			if v119 == nil then
				break
			end
			table.insert(v115, v120)
		end
		return v115
	end
	function getdestroyedtypes()
		getalltypes = GetATMS()
		cached = {}
		local v121 = next
		local v122 = getalltypes
		local v123 = nil
		while true do
			local v124
			v123, v124 = v121(v122, v123)
			if v123 == nil then
				break
			end
			if v124:GetAttribute("state") ~= "destroyed" then
				table.insert(cached, v124)
			end
		end
		return cached
	end
	function GetBundles()
		if game:GetService("Workspace").BankRobbery and game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash") then
			bankthing = game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash")
		end
		return bankthing
	end
	function liftDumbell()
		if game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("liftDumbell") then
			game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("liftDumbell"):FireServer()
		end
	end
	function stopfarmingwhen()
		stoper = {
			"Money Printer",
			"Military Armory Keycard",
			"Red Lucky Block",
			"Blue Lucky Block",
			"Green Lucky Block",
			"Orange Lucky Block",
			"Purple Lucky Block",
			"Diamond",
			"Diamond Ring",
			"Void Gem",
			"Dark Matter Gem"
		}
		items = {}
		allitems = GetItems()
		local v125, v126, v127 = pairs(allitems)
		while true do
			local v128
			v127, v128 = v125(v126, v127)
			if v127 == nil then
				break
			end
			local v129, v130, v131 = pairs(stoper)
			while true do
				local v132
				v131, v132 = v129(v130, v131)
				if v131 == nil then
					break
				end
				if v128.Name == v132 then
					table.insert(stoper, v128)
				end
			end
		end
		return stoper
	end
	function Collect(p133)
		if p133:FindFirstChildOfClass("ClickDetector") then
			fireclickdetector(p133:FindFirstChildOfClass("ClickDetector"))
		elseif p133:FindFirstChildOfClass("Part") then
			local v134 = p133:FindFirstChildOfClass("Part")
			fireclickdetector(v134:FindFirstChildOfClass("ClickDetector"))
		end
	end
	function tablejewels()
		aljewelry = {
			"Dark Matter Gem",
			"Void Gem",
			"Diamond Ring",
			"Diamond",
			"Rollie",
			"Gold Cup",
			"Gold Crown",
			"Emerald",
			"Emerald Ring",
			"Gold Bar",
			"Amethyst",
			"Amethyst Ring",
			"Topaz",
			"Topaz Ring",
			"Sapphire Ring",
			"Sapphire",
			"Ruby",
			"Ruby Ring",
			"Watch"
		}
		jewelrycases = allJewelryCases()
		cached = {}
		local v135, v136, v137 = pairs(jewelrycases)
		while true do
			local v138
			v137, v138 = v135(v136, v137)
			if v137 == nil then
				break
			end
			local v139, v140, v141 = pairs(aljewelry)
			while true do
				local v142
				v141, v142 = v139(v140, v141)
				if v141 == nil then
					break
				end
				if v138:FindFirstChild(v142) then
					table.insert(cached, v138)
				end
			end
		end
		return cached
	end
	function cashpickup()
		-- upvalues: (ref) v_u_11
		local v143, v144, v145 = pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren())
		while true do
			local v146
			v145, v146 = v143(v144, v145)
			if v145 == nil then
				break
			end
			if v146:FindFirstChildOfClass("Part") then
				mp = v146:FindFirstChildOfClass("Part")
				distance = (v_u_11.Position - mp.Position).magnitude
				if v_u_11 and (distance <= 30 and v146:FindFirstChildOfClass("ClickDetector")) then
					fireclickdetector(v146:FindFirstChildOfClass("ClickDetector"))
				end
			end
		end
	end
	function getAdmins()
		falssadmin = loadstring(game:HttpGet("https://pastebin.com/raw/VP8HxcBK"))()
		admins = { falssadmin.special.tetraxowner }
		roleloc = game:GetService("ReplicatedStorage").devv
		reqloc = require(roleloc)
		heros = reqloc.data.specialroles.heros.users
		local v147 = next
		local v148 = heros
		local v149 = nil
		while true do
			local v150
			v149, v150 = v147(v148, v149)
			if v149 == nil then
				break
			end
			table.insert(admins, v150)
		end
		adminss = reqloc.data.specialroles.admins.users
		local v151 = next
		local v152 = adminss
		local v153 = nil
		while true do
			local v154
			v153, v154 = v151(v152, v153)
			if v153 == nil then
				break
			end
			table.insert(admins, v154)
		end
		dev = reqloc.data.specialroles.developer.users
		local v155 = next
		local v156 = dev
		local v157 = nil
		while true do
			local v158
			v157, v158 = v155(v156, v157)
			if v157 == nil then
				break
			end
			table.insert(admins, v158)
		end
		return admins
	end
	local v159 = next
	local v160, v161 = getAdmins()
	local v_u_162 = v_u_7
	local v_u_163 = v_u_11
	local v_u_164 = v_u_16
	local v_u_165 = v_u_21
	local v_u_166 = {}
	while true do
		local v167
		v161, v167 = v159(v160, v161)
		if v161 == nil then
			break
		end
		table.insert(v_u_166, v167)
	end
	function kickOnAdminJoin()
		-- upvalues: (ref) v_u_166, (ref) v_u_5, (ref) v_u_6
		local v168 = next
		local v169 = v_u_166
		local v170 = nil
		while true do
			local v171
			v170, v171 = v168(v169, v170)
			if v170 == nil then
				break
			end
			local v172 = next
			local v173, v174 = v_u_5:GetPlayers()
			while true do
				local v175
				v174, v175 = v172(v173, v174)
				if v174 == nil then
					break
				end
				if v175.UserId == v171 then
					kickmsg = "\n                        [TeTraXKick]  \n        You have been kicked because tetrax found a admin in the current server!\n                "
					v_u_6:Kick(kickmsg)
					task.wait(0.5)
					game.shutdown(game)
				end
			end
		end
	end
	function getHalloweenCandy()
		candylol = {}
		local v176, v177, v178 = pairs(workspace.Game.Entities.CashBundle:GetChildren())
		while true do
			local v179
			v178, v179 = v176(v177, v178)
			if v178 == nil then
				break
			end
			if v179:IsA("MeshPart") then
				table.insert(candylol, v179)
			end
		end
		return candylol
	end
	function getHalloweenMobs()
		fileloc = workspace.Halloween
		mobschecker = {}
		local v180 = next
		local v181, v182 = fileloc:GetChildren()
		while true do
			local v183
			v182, v183 = v180(v181, v182)
			if v182 == nil then
				break
			end
			if v183:IsA("Model") then
				table.insert(mobschecker, v183)
			end
		end
		return mobschecker
	end
	function CollectCandy()
		candylol = getHalloweenCandy()
		local v184 = next
		local v185 = candylol
		local v186 = nil
		while true do
			local v187
			v186, v187 = v184(v185, v186)
			if v186 == nil then
				break
			end
			if v187 then
				fireclickdetector(v187:FindFirstChildWhichIsA("ClickDetector"))
			end
		end
	end
	function BypassRemotes()
		getgenv().bypassrmts = true
		loope = false
		if getgenv().bypassrmts == true then
			warn("TeTraX Bypasser Loaded Successfully!")
			while getgenv().bypassrmts do
				task.wait(0.1)
				pcall(function()
					local v188 = next
					local v189 = debug
					local v190 = nil
					while true do
						local v191
						v190, v191 = v188(v189, v190)
						if v190 == nil then
							break
						end
						if not getgenv()[v190] then
							getgenv()[v190] = v191
						end
					end
					local v192 = game:GetService("ReplicatedStorage"):WaitForChild("devv"):WaitForChild("client"):WaitForChild("Helpers"):WaitForChild("remotes"):WaitForChild("Signal")
					local v193 = next
					local v194, v195 = getupvalue(require(v192).FireServer, 1)
					while true do
						local v196
						v195, v196 = v193(v194, v195)
						if v195 == nil then
							break
						end
						v196.Name = v195
					end
				end)
				kickOnAdminJoin()
			end
		end
	end
	v_u_6.CharacterAdded:Connect(function(p197)
		-- upvalues: (ref) v_u_9, (ref) v_u_10, (ref) v_u_163
		v_u_9 = p197
		v_u_10 = v_u_9:WaitForChild("Humanoid")
		v_u_163 = v_u_9:WaitForChild("HumanoidRootPart")
	end)
	function getPlayersWithinFOV()
		-- upvalues: (ref) v_u_15
		local v198, v199, v200 = pairs(plrs:GetPlayers())
		local v201 = {}
		while true do
			local v202
			v200, v202 = v198(v199, v200)
			if v200 == nil then
				break
			end
			if v202.Character and (v202.Character:FindFirstChild("HumanoidRootPart") and v202.Character:FindFirstChild("Humanoid")) then
				local _, v203 = v_u_15:WorldToViewportPoint(v202.Character:FindFirstChild("HumanoidRootPart").Position)
				if v202.Character then
					v202.Character:FindFirstChild("Head")
				end
				if notBehindWall(v202.Character.HumanoidRootPart) and v203 then
					table.insert(v201, v202)
				end
			end
		end
		return v201
	end
	function getFriends()
		-- upvalues: (ref) v_u_5, (ref) v_u_6
		local v204 = v_u_5
		local v205, v206, v207 = ipairs(v204:GetPlayers())
		local v208 = {}
		while true do
			local v_u_209
			v207, v_u_209 = v205(v206, v207)
			if v207 == nil then
				break
			end
			if v_u_209 ~= v_u_6 then
				local v210, v211 = pcall(function()
					-- upvalues: (ref) v_u_6, (ref) v_u_209
					return v_u_6:IsFriendsWith(v_u_209.UserId)
				end)
				if v210 then
					if v211 then
						table.insert(v208, v_u_209.Name)
					end
				else
					warn(v211)
				end
			end
		end
		return v208
	end
	function getPlayers()
		-- upvalues: (ref) v_u_5, (ref) v_u_162, (ref) v_u_165, (ref) v_u_164
		friendnoeff = getFriends()
		plrtbl = {}
		local v212 = v_u_5
		local v213, v214, v215 = pairs(v212:GetPlayers())
		while true do
			local v216
			v215, v216 = v213(v214, v215)
			if v215 == nil then
				break
			end
			if v216.Character and (not v216.Character:FindFirstChild("ForceField") and (v216.Character:FindFirstChild("HumanoidRootPart") and (v216.Character:FindFirstChild("Humanoid") and (v216.Character:FindFirstChild("Humanoid").Health > 1 and (v216.Name ~= v_u_162 and (v216.UserId ~= v_u_165[table.find(v_u_165, v216.UserId)] and (friendnoeff[table.find(friendnoeff, v216.Name)] ~= v216.Name and v_u_164[table.find(v_u_164, v216.UserId)] ~= v216.UserId))))))) then
				table.insert(plrtbl, v216)
			end
		end
		return plrtbl
	end
	function Say()
		if not SayMessageRequest then
			SayMessageRequest = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
		end
		SayMessageRequest:FireServer(tostring(...), "All")
	end
	function getFriendsID()
		-- upvalues: (ref) v_u_5, (ref) v_u_6
		local v217 = v_u_5
		local v218, v219, v220 = ipairs(v217:GetPlayers())
		local v221 = {}
		while true do
			local v_u_222
			v220, v_u_222 = v218(v219, v220)
			if v220 == nil then
				break
			end
			if v_u_222 ~= v_u_6 then
				local v223, v224 = pcall(function()
					-- upvalues: (ref) v_u_6, (ref) v_u_222
					return v_u_6:IsFriendsWith(v_u_222.UserId)
				end)
				if v223 then
					if v224 then
						table.insert(v221, v_u_222.UserId)
					end
				else
					warn(v224)
				end
			end
		end
		return v221
	end
	function Teleport(p225)
		-- upvalues: (ref) v_u_163
		goto = p225
		tweenInfo = TweenInfo.new(0.06, Enum.EasingStyle.Linear)
		tween = game:GetService("TweenService"):Create(v_u_163, tweenInfo, {
			["CFrame"] = goto
		})
		tween:Play()
	end
	function TweenTeleport(p226)
		-- upvalues: (ref) v_u_163
		new_CFrame = p226
		ts = game:GetService("TweenService")
		part = v_u_163
		ti = TweenInfo.new(0.1, Enum.EasingStyle.Linear)
		tp = {
			["CFrame"] = new_CFrame
		}
		ts:Create(part, ti, tp):Play()
	end
	function TweenBring(p227)
		-- upvalues: (ref) v_u_163
		newCFrame = p227
		ts = game:GetService("TweenService")
		part = v_u_163
		ti = TweenInfo.new(2.5, Enum.EasingStyle.Linear)
		tp = {
			["CFrame"] = newCFrame
		}
		ts:Create(part, ti, tp):Play()
	end
	function CFrameTP(p228)
		-- upvalues: (ref) v_u_163
		v_u_163.CFrame = p228
	end
	function killAllPlayers()
		-- upvalues: (ref) v_u_6, (ref) v_u_10, (ref) v_u_162, (ref) v_u_164, (ref) v_u_165, (ref) v_u_163
		local v229 = CFrame.new(1653.3216552734375, -16.953155517578125, -529.6856079101562)
		selectedmodekillplrsfunc = selectedmodekillplrs or "All"
		if #getPlayers() > 0 then
			local v230 = getPlayers()[math.random(1, #getPlayers())]
			if not (v_u_6.Character and (v_u_6.Character:FindFirstChild("HumanoidRootPart") and v_u_6.Character:FindFirstChild("Humanoid"))) then
				goto l6
			end
			if v_u_10.Health <= 50 then
				if v_u_10.Health < 50 then
					v_u_10.Health = die
				end
			else
				if v_u_6.Character and v_u_6.Character:FindFirstChild("Humanoid").Sit == false then
					if not v230.Character or (not v230.Character:FindFirstChild("HumanoidRootPart") or (not v230.Character:FindFirstChild("Humanoid") or (v230.Character:FindFirstChild("Humanoid").Jump ~= false or (not v230.Character:FindFirstChild("Head") or (v230.Character:FindFirstChild("ForceField") or (v230.Name == v_u_162 or (friendnokill[table.find(friendnokill, v230.Name)] == v230.Name or (v_u_164[table.find(v_u_164, v230.Name)] == v230.Name or (v_u_165[table.find(v_u_165, v230.UserId)] == v230.UserId or v230.Character.Humanoid.Health <= 1))))))))) then
						goto l6
					end
					while true do
						task.wait()
						selectedmodekillplrsfunc = selectedmodekillplrs or "All"
						killallwhendis = killalldisfunc or 95
						aptpdfuncc = aptpdfunc or 3.8
						aptpdfuncunderu = aptpdfuncunder or -20
						if v230.Character and (v230.Character:FindFirstChild("HumanoidRootPart") and (v230.Character:FindFirstChild("Humanoid") and (v230.Character:FindFirstChild("Humanoid").Jump == false and (v230.Character:FindFirstChild("Head") and (not v230.Character:FindFirstChild("ForceField") and (v230.Name ~= v_u_162 and (friendnokill[table.find(friendnokill, v230.Name)] ~= v230.Name and (v_u_164[table.find(v_u_164, v230.Name)] ~= v230.Name and (v_u_165[table.find(v_u_165, v230.UserId)] ~= v230.UserId and v230.Character.Humanoid.Health > 1))))))))) then
							equipHash("Fists")
							workspace.CurrentCamera.CameraSubject = v230.Character.Humanoid
							v_u_163.CFrame = CFrame.lookAt(v_u_163.Position, v230.Character:FindFirstChild("HumanoidRootPart").Position)
							v_u_163.CFrame = v230.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, aptpdfuncunderu, aptpdfuncc)
							killfunc(v230)
							stompfunc(v230)
						end
						if getgenv().AutoKillAll == false or v230.Character == nil or (v230.Character:FindFirstChild("ForceField") or (v230.Character:FindFirstChild("Humanoid").Health < 1 or (v_u_6.Character:FindFirstChild("Humanoid").Sit == true or (v_u_10.Health < 50 or selectedmodekillplrsfunc ~= "All")))) then
							if v230.Character and v230.Character:FindFirstChild("Head") then
								v_u_163.CFrame = v230.Character:FindFirstChild("Head").CFrame
							end
							v_u_163.CFrame = v229
							workspace.CurrentCamera.CameraSubject = v_u_10
							goto l6
						end
					end
				end
				if v_u_6.Character and v_u_6.Character:FindFirstChild("Humanoid").Sit == true then
					v_u_6.Character.Humanoid.Jump = true
				end
			end
		end
		::l6::
	end
	function jsond(p231)
		-- upvalues: (ref) v_u_4
		return v_u_4:JSONDecode(p231)
	end
	function ATMFarmAFK()
		-- upvalues: (ref) v_u_163
		getgenv().farmmode = farmmodes or "AFK"
		gemfarm = tablejewels()
		allatms = GetATMS()
		equippedName = GetEquippedName()
		local v232 = CFrame.new(1653.3216552734375, -16.953155517578125, -529.6856079101562)
		if #GetATMS() <= 0 then
			::l6::
			return
		else
			local v_u_233 = GetATMS()[math.random(1, #GetATMS())]
			if not (game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash") and game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash"):FindFirstChild("Cash")) then
				goto l6
			end
			bankthing = game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash")
			if #bankthing:FindFirstChild("Cash"):GetChildren() ~= 0 or (not v_u_233:IsA("Model") or v_u_233:GetAttribute("state") == "destroyed") then
				goto l6
			end
			task.spawn(function()
				-- upvalues: (ref) v_u_233
				while getgenv().AutoRobATM == true and v_u_233:GetAttribute("state") ~= "destroyed" do
					task.wait()
					if getgenv().AutoRobATM == true then
						cashpickup()
						equipHash("Fists")
					end
				end
			end)
			while true do
				task.wait()
				getgenv().farmmode = farmmodes or "AFK"
				v_u_163.CFrame = v_u_233.WorldPivot * CFrame.new(0, -4.9, 0) * CFrame.Angles(math.rad(90), 0, 0)
				allatms = GetATMS()
				local v234, v235, v236 = pairs(allatms)
				while true do
					local v237
					v236, v237 = v234(v235, v236)
					if v236 == nil then
						break
					end
					mp = v237.WorldPivot
					distance = (v_u_163.Position - mp.Position).magnitude
					if v237:GetAttribute("state") ~= "destroyed" and distance <= 20 then
						args = {
							"prop",
							{
								["meleeType"] = "meleepunch",
								["guid"] = v237:GetAttribute("guid")
							}
						}
						game:GetService("ReplicatedStorage").devv.remoteStorage[tostring(getupvalue(require(game:GetService("ReplicatedStorage").devv.client.Helpers.remotes.Signal).FireServer, 1).meleeItemHit)]:FireServer(unpack(args))
					end
				end
				if v_u_233:GetAttribute("state") == "destroyed" or (getgenv().AutoRobATM == false or getgenv().farmmode ~= "AFK") then
					task.wait(0.5)
					cashpickup()
					task.wait()
					v_u_163.CFrame = v232
					goto l6
				end
			end
		end
	end
	function ATMFarm()
		-- upvalues: (ref) v_u_163
		getgenv().farmmode = farmmodes or "Regular"
		gemfarm = tablejewels()
		allatms = GetATMS()
		equippedHash = GetEquipped()
		local v238 = equippedHash
		local v239 = v_u_163.CFrame
		if #GetATMS() <= 0 then
			::l6::
			return
		else
			local v_u_240 = GetATMS()[math.random(1, #GetATMS())]
			if not (game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash") and game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash"):FindFirstChild("Cash")) then
				goto l6
			end
			bankthing = game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash")
			if #bankthing:FindFirstChild("Cash"):GetChildren() ~= 0 or (not v_u_240:IsA("Model") or v_u_240:GetAttribute("state") == "destroyed") then
				goto l6
			end
			task.spawn(function()
				-- upvalues: (ref) v_u_240
				while getgenv().AutoRobATM == true and v_u_240:GetAttribute("state") ~= "destroyed" do
					task.wait()
					if getgenv().AutoRobATM == true then
						cashpickup()
						equipHash("Fists")
					end
				end
			end)
			while true do
				task.wait()
				getgenv().farmmode = farmmodes or "Regular"
				v_u_163.CFrame = v_u_240.WorldPivot * CFrame.new(0, -4.9, 0) * CFrame.Angles(math.rad(90), 0, 0)
				allatms = GetATMS()
				local v241, v242, v243 = pairs(allatms)
				while true do
					local v244
					v243, v244 = v241(v242, v243)
					if v243 == nil then
						break
					end
					mp = v244.WorldPivot
					distance = (v_u_163.Position - mp.Position).magnitude
					if v244:GetAttribute("state") ~= "destroyed" and distance <= 20 then
						args = {
							"prop",
							{
								["meleeType"] = "meleepunch",
								["guid"] = v244:GetAttribute("guid")
							}
						}
						game:GetService("ReplicatedStorage").devv.remoteStorage[tostring(getupvalue(require(game:GetService("ReplicatedStorage").devv.client.Helpers.remotes.Signal).FireServer, 1).meleeItemHit)]:FireServer(unpack(args))
					end
				end
				if v_u_240:GetAttribute("state") == "destroyed" or (getgenv().AutoRobATM == false or getgenv().farmmode ~= "Regular") then
					task.wait(0.5)
					cashpickup()
					task.wait()
					v_u_163.CFrame = v239
					game:GetService("ReplicatedStorage").devv.remoteStorage[tostring(getupvalue(require(game:GetService("ReplicatedStorage").devv.client.Helpers.remotes.Signal).FireServer, 1).equip)]:FireServer(v238)
					goto l6
				end
			end
		end
	end
	function FarmBankAFK()
		-- upvalues: (ref) v_u_163
		local v245 = CFrame.new(1653.3216552734375, -16.953155517578125, -529.6856079101562)
		if workspace.BankRobbery:FindFirstChild("BankCash") and workspace.BankRobbery:FindFirstChild("BankCash"):FindFirstChild("Cash") then
			bankthing = workspace.BankRobbery:FindFirstChild("BankCash")
			if not v_u_163 or #bankthing:FindFirstChild("Cash"):GetChildren() <= 0 then
				goto l3
			end
			while true do
				task.wait()
				getgenv().farmmode = farmmodes or "AFK"
				goto = game:GetService("Workspace").BankRobbery.BankCash.Main.CFrame * CFrame.new(0, -2.7, -1) * CFrame.Angles(math.rad(90), 0, 0)
				CFrameTP(goto)
				local v246, v247, v248 = pairs(workspace:WaitForChild("BankRobbery"):GetDescendants())
				while true do
					local v249
					v248, v249 = v246(v247, v248)
					if v248 == nil then
						break
					end
					if v249:IsA("ProximityPrompt") then
						fireproximityprompt(v249)
					end
				end
				if #bankthing:WaitForChild("Cash"):GetChildren() == 0 or (getgenv().RobBankk == false or getgenv().farmmode ~= "AFK") then
					task.wait(0.3)
					returnTweenInfo = TweenInfo.new(0.09, Enum.EasingStyle.Linear)
					returnTween = game:GetService("TweenService"):Create(v_u_163, returnTweenInfo, {
						["CFrame"] = v245
					})
					returnTween:Play()
					goto l3
				end
			end
		else
			::l3::
			return
		end
	end
	function FarmBank()
		-- upvalues: (ref) v_u_163
		local v250 = v_u_163.CFrame
		if workspace.BankRobbery:FindFirstChild("BankCash") and workspace.BankRobbery:FindFirstChild("BankCash"):FindFirstChild("Cash") then
			bankthing = workspace.BankRobbery:FindFirstChild("BankCash")
			if not v_u_163 or #bankthing:FindFirstChild("Cash"):GetChildren() <= 0 then
				goto l3
			end
			while true do
				task.wait()
				getgenv().farmmode = farmmodes or "Regular"
				goto = game:GetService("Workspace").BankRobbery.BankCash.Main.CFrame * CFrame.new(0, -2.7, -1) * CFrame.Angles(math.rad(90), 0, 0)
				CFrameTP(goto)
				local v251, v252, v253 = pairs(workspace:WaitForChild("BankRobbery"):GetDescendants())
				while true do
					local v254
					v253, v254 = v251(v252, v253)
					if v253 == nil then
						break
					end
					if v254:IsA("ProximityPrompt") then
						fireproximityprompt(v254)
					end
				end
				if #bankthing:WaitForChild("Cash"):GetChildren() == 0 or (getgenv().RobBankk == false or getgenv().farmmode ~= "Regular") then
					task.wait(0.3)
					returnTweenInfo = TweenInfo.new(0.09, Enum.EasingStyle.Linear)
					returnTween = game:GetService("TweenService"):Create(v_u_163, returnTweenInfo, {
						["CFrame"] = v250
					})
					returnTween:Play()
					goto l3
				end
			end
		else
			::l3::
			return
		end
	end
	function DestroyNearestATM()
		-- upvalues: (ref) v_u_6
		equippedName = GetEquippedName()
		local v255, v256, v257 = pairs(game:GetService("Workspace").Game.Props.ATM:GetChildren())
		while true do
			local v258
			v257, v258 = v255(v256, v257)
			if v257 == nil then
				break
			end
			if v_u_6.Character and (v_u_6.Character:FindFirstChild("HumanoidRootPart") and v258.PrimaryPart) then
				mp = v258.PrimaryPart
				distance = (v_u_6.Character.HumanoidRootPart.Position - mp.Position).magnitude
				if equippedName == "Fists" and (v258:GetAttribute("state") ~= "destroyed" and distance <= 35) then
					args = {
						"prop",
						{
							["meleeType"] = "meleepunch",
							["guid"] = v258:GetAttribute("guid")
						}
					}
					game:GetService("ReplicatedStorage").devv.remoteStorage.meleeItemHit:FireServer(unpack(args))
					cashpickup()
				end
			end
		end
	end
	function makeButton(p259)
		if identifyexecutor then
			execsss = {
				"Delta",
				"Fluxus",
				"Hydrogen",
				"ArceusX"
			}
			identify = identifyexecutor()
			if identify == execsss[table.find(execsss, identify)] then
				guitypee = loadstring(p259)()
			end
		else
			warn("identifyexecutor function not found or is broken not making button!")
		end
		return guitypee
	end
	getgenv().TPWalkMode = function()
		-- upvalues: (ref) v_u_10
		if getgenv().seltpwallkmode == nil then
			return v_u_10.MoveDirection
		end
		if getgenv().seltpwallkmode ~= nil then
			local _ = getgenv().seltpwallkmode
		end
	end
	function Tpwalking()
		-- upvalues: (ref) v_u_9, (ref) v_u_10, (ref) v_u_163
		TpwalkValuefunc = getgenv().TpwalkValue or 3.5
		if getgenv().ToggleTpwalk and (v_u_9 and (v_u_10 and v_u_163)) then
			v_u_163.CFrame = v_u_163.CFrame + getgenv().TPWalkMode() * TpwalkValuefunc
			v_u_163.CanCollide = true
		end
	end
	function openJewelSafes()
		-- upvalues: (ref) v_u_163
		local v260, v261, v262 = pairs(workspace.Game.Entities.JewelSafe:GetChildren())
		while true do
			local v263
			v262, v263 = v260(v261, v262)
			if v262 == nil then
				break
			end
			mp = v263.WorldPivot
			distance = (v_u_163.Position - mp.Position).magnitude
			if v_u_163 and distance <= 45 then
				buyItem("Lockpick")
				if v263:FindFirstChild("ProximityPrompt", true) then
					fireproximityprompt(v263:FindFirstChild("ProximityPrompt", true))
				end
			end
		end
		local v264, v265, v266 = pairs(workspace.Game.Entities.GoldJewelSafe:GetChildren())
		while true do
			local v267
			v266, v267 = v264(v265, v266)
			if v266 == nil then
				break
			end
			gold = v267.WorldPivot
			distanceg = (v_u_163.Position - gold.Position).magnitude
			if v_u_163 and distanceg <= 45 then
				buyItem("Lockpick")
				if v267:FindFirstChild("ProximityPrompt", true) then
					fireproximityprompt(v267:FindFirstChild("ProximityPrompt", true))
				end
			end
		end
	end
	local v_u_268 = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
	v_u_268.inventory.numSlots = 9
	local v269 = next
	local v270 = v_u_268.inventory.ordered
	local v271 = nil
	local v_u_272 = {}
	local v273 = { "semi", "auto", "burst" }
	local v274 = { "Pepper Spray", "Fire Extinguisher" }
	local v_u_275 = {
		"Dark Matter Gem",
		"Void Gem",
		"Diamond Ring",
		"Diamond",
		"Rollie",
		"Gold Cup",
		"Gold Crown",
		"Crown",
		"Emerald",
		"Emerald Ring",
		"Gold Bar",
		"Amethyst",
		"Amethyst Ring",
		"Topaz",
		"Topaz Ring",
		"Sapphire Ring",
		"Sapphire",
		"Ruby",
		"Ruby Ring",
		"Watch"
	}
	local v_u_276 = {
		"Dark Matter Gem",
		"Void Gem",
		"Diamond Ring",
		"Diamond",
		"Rollie",
		"Gold Cup",
		"Gold Crown"
	}
	local v_u_277 = { "Chicken", "Cookie", "Taco" }
	while true do
		local v278
		v271, v278 = v269(v270, v271)
		if v271 == nil then
			break
		end
		table.insert(v_u_272, v278)
	end
	local v279, v280, v281 = pairs(v_u_5:GetPlayers())
	local v_u_282 = {}
	while true do
		local v283, v284 = v279(v280, v281)
		if v283 == nil then
			break
		end
		v281 = v283
		if v284.Name ~= v_u_162 and v_u_165[table.find(v_u_165, v284.UserId)] ~= v284.UserId then
			table.insert(v_u_282, v284.Name)
		end
	end
	local v285, v286, v287 = pairs(game:GetService("ReplicatedStorage"):WaitForChild("Anims"):GetChildren())
	local v288 = {}
	while true do
		local v289
		v287, v289 = v285(v286, v287)
		if v287 == nil then
			break
		end
		table.insert(v288, v289.Name)
	end
	function getItems()
		local v290, v291, v292 = pairs(game:GetService("Workspace").Game.Entities.ItemPickup:GetChildren())
		local v293 = {}
		while true do
			local v294
			v292, v294 = v290(v291, v292)
			if v292 == nil then
				break
			end
			v294.Name = v294:GetAttribute("itemName")
			table.insert(v293, v294.Name)
		end
		return v293
	end
	local v295, v296, v297 = pairs(game:GetService("Workspace").Game.Airdrops:GetChildren())
	local v_u_298 = {}
	while true do
		local v299
		v297, v299 = v295(v296, v297)
		if v297 == nil then
			break
		end
		table.insert(v_u_298, v299.Name)
	end
	local v300, v301, v302 = pairs(game:GetService("Workspace").Game.Local.droppables:GetChildren())
	local v303 = {}
	while true do
		local v304
		v302, v304 = v300(v301, v302)
		if v302 == nil then
			break
		end
		table.insert(v303, v304.Name)
	end
	local v305, v306, v307 = pairs(game:GetService("Workspace").Rocks:GetChildren())
	local v_u_308 = {}
	while true do
		local v309
		v307, v309 = v305(v306, v307)
		if v307 == nil then
			break
		end
		v309.Name = v309:GetAttribute("oreName")
		table.insert(v_u_308, v309.Name)
	end
	local v310, v311, v312 = pairs(game:GetService("Workspace").Game.Drones:GetChildren())
	local v_u_313 = {}
	while true do
		local v314
		v312, v314 = v310(v311, v312)
		if v312 == nil then
			break
		end
		table.insert(v_u_313, v314.Name)
	end
	local v315 = {
		["Camera LookVector"] = function()
			re = game:GetService("Workspace").Camera.CFrame.LookVector
			return re
		end,
		["MoveDirection"] = function()
			-- upvalues: (ref) v_u_10
			return v_u_10.MoveDirection
		end
	}
	local v316 = next
	local v_u_317 = v315
	local v318 = nil
	local v319 = {}
	local v320 = {
		"meleemegapunch",
		"meleepunch",
		"meleejumpKick",
		"meleekick",
		"meleemegaswing",
		"meleeswing"
	}
	local v_u_321 = {
		"Cruiser",
		"Mustang",
		"Chopper",
		"Black Chopper",
		"Lamborghini",
		"Supercar"
	}
	local v322 = {
		"Acid Gun",
		"AK-47",
		"Gold AK-47",
		"Gold Deagle",
		"Ammo Box",
		"AS Val",
		"AUG",
		"Balloon",
		"Banana Peel",
		"Lockpick",
		"Beans",
		"Taco",
		"Barrett M107",
		"Black Bandana",
		"Bundle of TNT",
		"C4",
		"Chicken",
		"Cookie",
		"Double Barrel",
		"Deagle",
		"Dragunov",
		"Drone",
		"Flamethrower",
		"Flashbang",
		"Frag",
		"Glider",
		"Gravity Gun",
		"Heavy C4",
		"Heavy Vest",
		"Hoverboard",
		"Katana",
		"M249 SAW",
		"MP7",
		"Minigun",
		"Molotov",
		"M4A1",
		"Medium Vest",
		"Military Vest",
		"Pickaxe",
		"Python",
		"P90",
		"Raygun",
		"RPG",
		"RPK",
		"Sawn Off",
		"Scar L",
		"Segway",
		"Saiga 12",
		"Shopping Cart",
		"Surgeon Mask",
		"Scythe",
		"Tommy Gun"
	}
	local v323 = {
		"Head",
		"HumanoidRootPart",
		"LeftHand",
		"LeftLowerArm",
		"LeftUpperArm",
		"RightHand",
		"RightLowerArm",
		"RightUpperArm",
		"UpperTorso",
		"LeftFoot",
		"LeftLowerLeg",
		"LeftUpperLeg",
		"RightFoot",
		"RightLowerLeg",
		"RightUpperLeg",
		"LowerTorso"
	}
	while true do
		local v324
		v318, v324 = v316(v315, v318)
		if v318 == nil then
			break
		end
		table.insert(v319, v318)
	end
	local v_u_325 = {
		["Arcade"] = CFrame.new(834.168701171875, 6.24685001373291, -888.8101196289062),
		[v_u_162] = CFrame.new(669, 6.24341679, -664.499878, -0.957340658, -2.29302732e-9, -0.288961798, -5.52740254e-9, 1, 1.03770805e-8, 0.288961798, 1.15316094e-8, -0.957340658),
		["Armory2"] = CFrame.new(1570.47925, 6.24341726, -616.390259, -0.10622178, -8.66407709e-11, 0.994342446, 4.24463326e-10, 1, 1.32477515e-10, -0.994342446, 4.36133907e-10, -0.10622178),
		["Armory3"] = CFrame.new(1123, 25.341917, -1318.49976, -0.995400488, -3.19101218e-10, 0.0958012193, -4.35342457e-10, 1, -1.19245747e-9, -0.0958012193, -1.22867916e-9, -0.995400488),
		["Bank"] = CFrame.new(1089.2777099609375, 8.169798851013184, -344.85955810546875),
		["Outside Bank"] = CFrame.new(1085.20105, 6.04341984, -463.016602, -0.996330619, -3.22510765e-8, -0.0855881274, -3.04928172e-8, 1, -2.18505907e-8, 0.0855881274, -1.91605896e-8, -0.996330619),
		["Black Market"] = CFrame.new(726.1677856445312, -27.880531311035156, -112.65306854248047),
		["Burger Shop"] = CFrame.new(1336.6322, 6.2434411, -688.198792, 0.506439328, -4.53497817e-9, -0.8622756, -1.02015942e-8, 1, -1.12510046e-8, 0.8622756, 1.44945371e-8, 0.506439328),
		["Cafe Shop"] = CFrame.new(1295.70508, 8.19805717, -332.50061, 0.503338635, 4.5388826e-9, -0.864089251, 1.77461672e-8, 1, 1.55900732e-8, 0.864089251, -2.31813591e-8, 0.503338635),
		["Carnival"] = CFrame.new(1175.16516, 13.8484259, -23.2780151, -0.941395044, 1.01699338e-9, 0.337306052, -7.92604593e-10, 1, -5.22714405e-9, -0.337306052, -5.1881579e-9, -0.941395044),
		["Church"] = CFrame.new(1494.54639, 1.90580702, 33.9957123, 0.947208226, 1.43359067e-8, 0.320619106, -2.05358024e-8, 1, 1.59559228e-8, -0.320619106, -2.16977512e-8, 0.947208226),
		["Coffee Job Hideout"] = CFrame.new(1343.4984130859375, 7.008630275726318, -329.5038757324219) * CFrame.new(0, -4.4, 1),
		["Firestation"] = CFrame.new(1626.1756591796875, 8.06382942199707, -536.415771484375),
		["Grocery Store"] = CFrame.new(911.1165161132812, 6.245436191558838, -893.6758422851562),
		["Gym"] = CFrame.new(1622.9190673828125, 6.345396518707275, -319.3541564941406),
		["Hidden Area"] = CFrame.new(1653.3216552734375, -16.953155517578125, -529.6856079101562),
		["Hospital"] = CFrame.new(1153.28955078125, 6.276763916015625, -975.0587158203125),
		["Jewelry"] = CFrame.new(1598.3031005859375, 8.369791030883789, -691.4287719726562),
		["Jewelry Activate"] = CFrame.new(1718.071044921875, 11.355670928955078, -736.5723266601562),
		["Nightclub"] = CFrame.new(1546.29993, 8.2707262, -790.299927, -0.995373607, 1.51567328e-8, 0.0960798711, 1.33637927e-8, 1, -1.93044158e-8, -0.0960798711, -1.79311161e-8, -0.995373607),
		["Shoe Store"] = CFrame.new(1438.9559326171875, 6.246395111083984, -361.7354736328125),
		["Shoe Store Hideout"] = CFrame.new(1459.2672119140625, 41.2963752746582, -342.5706481933594),
		["Tower"] = CFrame.new(823.8939208984375, 83.43997192382812, -146.0994110107422),
		["Military Base"] = CFrame.new(796.650390625, 25.2656192779541, -1368.020751953125),
		["Military Robbery Hideout"] = CFrame.new(383.0826110839844, 3.1499149799346924, -1359.769775390625),
		["Under Map"] = CFrame.new(369.20672607421875, -127.81851196289062, -423.2080993652344),
		["Outside Map"] = CFrame.new(1884.9793701171875, 4.352350234985352, -967.9786376953125),
		["Police Station"] = CFrame.new(647.1284790039062, 9.037802696228027, -862.6290283203125),
		["Theater"] = CFrame.new(527.0411376953125, 6.246847152709961, -1032.37109375)
	}
	local v326, v327, v328 = pairs(v_u_325)
	local v329 = {}
	while true do
		local v330
		v328, v330 = v326(v327, v328)
		if v328 == nil then
			break
		end
		table.insert(v329, v328)
	end
	getgenv().printTeTraXV = tostring(v19.Settings.Version)
	getgenv().printTeTraXName = tostring(v19.Settings.Name)
	s = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item.bin.Fists.modules.controller)
	x = getupvalues(getupvalues(getupvalues(s.meleeFunctions)[2])[5])[1].data
	pcall(x.confetiiiiiiiiiiiii)
	makeButton(game:HttpGet("https://raw.githubusercontent.com/DINERO9/Array/main/unk"))
	local v_u_331 = loadstring(game:HttpGet("https://raw.githubusercontent.com/DINERO9/Array/main/UI-Libary.Lua"))()
	local v332 = v_u_331
	local v333 = v_u_331.CreateWindow
	local v334 = {
		["Name"] = "" .. getgenv().printTeTraXName,
		["LoadingTitle"] = "TeTraX " .. getgenv().printTeTraXV,
		["LoadingSubtitle"] = "by TeTraXCorporation",
		["ConfigurationSaving"] = {
			["Enabled"] = true,
			["FolderName"] = "TeTraX",
			["FileName"] = "TeTraXSettings"
		},
		["Discord"] = {
			["Enabled"] = false,
			["Invite"] = "noinvitelink",
			["RememberJoins"] = true
		},
		["KeySystem"] = false
	}
	local v335 = {
		["Title"] = "TeTraXOfficial",
		["Subtitle"] = "Click KEY For Link",
		["FileName"] = "TeTraXXXXXEY",
		["SaveKey"] = true,
		["GrabKeyFromSite"] = true,
		["Actions"] = {
			{
				["Text"] = "KEY",
				["OnPress"] = function()
					print("TeTraX Key Copied!")
					setclipboard("https://pastebin.com/raw/ySetB6qN")
				end
			}
		},
		["Key"] = { "https://pastebin.com/raw/ySetB6qN" }
	}
	v334.KeySettings = v335
	local v336 = v333(v332, v334)
	local function v343(p337)
		-- upvalues: (ref) v_u_331
		local v338 = jsond(p337)
		local v339 = next
		local v340 = nil
		while true do
			local v_u_341, v_u_342 = v339(v338, v340)
			if v_u_341 == nil then
				break
			end
			v340 = v_u_341
			if v_u_331.Flags[v_u_341] then
				task.spawn(function()
					-- upvalues: (ref) v_u_331, (ref) v_u_341, (ref) v_u_342
					if v_u_331.Flags[v_u_341].Type ~= "ColorPicker" then
						if v_u_331.Flags[v_u_341].CurrentValue or (v_u_331.Flags[v_u_341].CurrentKeybind or (v_u_331.Flags[v_u_341].CurrentOption or v_u_331.Flags[v_u_341].Color ~= v_u_342)) then
							v_u_331.Flags[v_u_341]:Set(v_u_342)
						end
					else
						v_u_331.Flags[v_u_341]:Set(UnpackColor(v_u_342))
					end
				end)
			else
				v_u_331:Notify({
					["Title"] = "Flag Error",
					["Content"] = "TeTraX was unable to find \'" .. v_u_341 .. "\'\' in the current script"
				})
			end
		end
	end
	local v344 = v336:CreateTab("Main", 7539983773)
	chats = {
		["sit down kid (chinese)"] = "\229\157\144\228\184\139\229\173\169\229\173\144",
		["TeTraX OnTop (chinese)"] = "TeTraX \228\184\138\239\188\129",
		["still crying haha (chinese)"] = "\232\191\152\229\156\168\229\147\173\229\147\136\229\147\136",
		["Welcome (chinese)"] = "\230\172\162\232\191\142\230\157\165\229\136\176\228\191\132\228\186\165\228\191\132\229\183\158 v3",
		["TeTraX OnTop"] = "TeTraX OnTop!",
		["Welcome"] = "Welcome to ohio v3",
		["sit down kid"] = "Sit down kid!",
		["still crying"] = "still crying?"
	}
	chatmsgs = {}
	local v345 = next
	local v346 = chats
	local v_u_347 = v_u_331
	local v348 = nil
	local v_u_349 = {}
	while true do
		local v350
		v348, v350 = v345(v346, v348)
		if v348 == nil then
			break
		end
		table.sort(chats)
		table.insert(chatmsgs, v348)
	end
	v344:CreateDropdown({
		["Name"] = "Chat",
		["Options"] = chatmsgs,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "Chats",
		["Callback"] = function(p351)
			Messenger = p351
			Say(tostring(chats[Messenger]))
		end
	})
	v344:CreateToggle({
		["Name"] = "TPWalk",
		["Info"] = "TPwalk",
		["CurrentValue"] = false,
		["Flag"] = "TPwalker",
		["Callback"] = function(p352)
			-- upvalues: (ref) v_u_12, (ref) v_u_163
			getgenv().ToggleTpwalk = p352
			ToggleTpwalk = not ToggleTpwalk
			if getgenv().ToggleTpwalk and not TpwalkConnection then
				TpwalkConnection = v_u_12.Heartbeat:Connect(Tpwalking)
			elseif not getgenv().ToggleTpwalk and TpwalkConnection then
				TpwalkConnection:Disconnect()
				TpwalkConnection = nil
				v_u_163.CanCollide = false
			end
		end
	})
	v344:CreateDropdown({
		["Name"] = "TPWalk Mode",
		["Options"] = v319,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "wlkermode",
		["Callback"] = function(p353)
			-- upvalues: (ref) v_u_317
			tpmodes = p353
			getgenv().seltpwallkmode = v_u_317[tpmodes]
		end
	})
	v344:CreateSlider({
		["Name"] = "TPWalk Speed",
		["Range"] = { -0.1, 11 },
		["Increment"] = 0.01,
		["Suffix"] = "TPWalk Speed",
		["CurrentValue"] = 1,
		["Flag"] = "TPwalkvalue",
		["Callback"] = function(p354)
			getgenv().TpwalkValue = p354
		end
	})
	function setFOV(p355)
		v1func = p355 or 90
		game:GetService("Workspace").Camera.FieldOfView = v1func
	end
	function activateFOV()
		game:GetService("Workspace").Camera:GetPropertyChangedSignal("FieldOfView"):Connect(function()
			ffofunc = ffo or 90
			game:GetService("Workspace").Camera.FieldOfView = ffofunc
		end)
	end
	activateFOV()
	v344:CreateSlider({
		["Name"] = "FOV",
		["Range"] = { 0, 250 },
		["Increment"] = 10,
		["Suffix"] = "FOV",
		["CurrentValue"] = 10,
		["Flag"] = "FOVV",
		["Callback"] = function(p356)
			ffo = p356
			setFOV(ffo)
		end
	})
	v344:CreateSlider({
		["Name"] = "AimAssist Level",
		["Range"] = { 0, 20 },
		["Increment"] = 1,
		["Suffix"] = "AimAssist",
		["CurrentValue"] = 0,
		["Flag"] = "AimAssist",
		["Callback"] = function(p357)
			-- upvalues: (ref) v_u_6
			aimm = p357
			v_u_6:SetAttribute("aimAssistSensitivity", aimm)
		end
	})
	function setCoffee(p358)
		-- upvalues: (ref) v_u_6
		set = v_u_6:SetAttribute("speedModifier", p358)
		return set
	end
	v_u_6:GetAttributeChangedSignal("speedModifier"):Connect(function()
		-- upvalues: (ref) v_u_6
		v_u_6:SetAttribute("speedModifier", speedm)
	end)
	v344:CreateSlider({
		["Name"] = "Speed Multiplier",
		["Range"] = { 0, 30 },
		["Increment"] = 1,
		["Suffix"] = "Speed",
		["CurrentValue"] = 1,
		["Flag"] = "SpeedCoff",
		["Callback"] = function(p359)
			speedm = p359
			setCoffee(speedm)
		end
	})
	v344:CreateSlider({
		["Name"] = "JumpPower",
		["Range"] = { 0, 250 },
		["Increment"] = 10,
		["Suffix"] = "Jump",
		["CurrentValue"] = 1,
		["Flag"] = "JumpPower",
		["Callback"] = function(p360)
			-- upvalues: (ref) v_u_10
			jpfunc = p360
			v_u_10.UseJumpPower = true
			v_u_10.JumpPower = jpfunc
		end
	})
	v344:CreateToggle({
		["Name"] = "Infinite Jump",
		["Info"] = "TESTING",
		["CurrentValue"] = false,
		["Flag"] = "InfJump",
		["Callback"] = function(p361)
			-- upvalues: (ref) v_u_13, (ref) v_u_6
			getgenv().infinjump = p361
			v_u_13.JumpRequest:connect(function()
				-- upvalues: (ref) v_u_6
				if getgenv().infinjump then
					humanoid = v_u_6.Character:FindFirstChildOfClass("Humanoid")
					humanoid:ChangeState("Jumping")
				end
			end)
		end
	})
	v344:CreateToggle({
		["Name"] = "Locker",
		["CurrentValue"] = false,
		["Flag"] = "Locker",
		["Callback"] = function(p362)
			-- upvalues: (ref) v_u_12
			getgenv().AutoLocker = p362
			while getgenv().AutoLocker == true do
				fireproximityprompt(game:GetService("Workspace").Lockers["Gun Locker"].ProximityPrompt)
				v_u_12.Heartbeat:Wait()
			end
		end
	})
	v344:CreateButton({
		["Name"] = "Invisible",
		["Interact"] = "Keybind",
		["Callback"] = function()
			-- upvalues: (ref) v_u_347, (ref) v_u_13
			v_u_347:Notify({
				["Title"] = "Invisible Keybind X",
				["Content"] = "must reactivate on death to keep using",
				["Image"] = 7013849339
			})
			makeButton(game:HttpGet("https://raw.githubusercontent.com/DINERO9/Array/main/y.lua"))
			local v_u_363 = game:GetService("Players").LocalPlayer
			local v_u_364 = v_u_363.Character or v_u_363.CharacterAdded:Wait()
			v_u_364.Archivable = true
			local v_u_365 = v_u_364:Clone()
			local v_u_366 = Instance.new("Part", workspace)
			v_u_366.Anchored = true
			v_u_366.Size = Vector3.new(7, 1, 7)
			v_u_366.CFrame = CFrame.new(1653.3216552734375, -16.953155517578125, -529.6856079101562)
			v_u_366.CanCollide = true
			v_u_365.Parent = workspace
			v_u_365.HumanoidRootPart.CFrame = v_u_366.CFrame * CFrame.new(0, 5, 0)
			local v367, v368, v369 = pairs(v_u_364:GetChildren())
			local v_u_370 = true
			local v_u_371 = "X"
			local v_u_372 = false
			local v_u_373 = false
			while true do
				local v374, v375 = v367(v368, v369)
				if v374 == nil then
					break
				end
				v369 = v374
				if v375:IsA("LocalScript") then
					local v376 = v375:Clone()
					v376.Disabled = true
					v376.Parent = v_u_365
				end
			end
			if v_u_370 then
				local v377, v378, v379 = pairs(v_u_365:GetDescendants())
				while true do
					local v380, v381 = v377(v378, v379)
					if v380 == nil then
						break
					end
					v379 = v380
					if v381:IsA("BasePart") then
						v381.Transparency = 0.8
					end
				end
			end
			local v_u_382 = true
			function RealCharacterDied()
				-- upvalues: (ref) v_u_382, (ref) v_u_364, (ref) v_u_363, (ref) v_u_365, (ref) v_u_366, (ref) v_u_370
				v_u_382 = false
				v_u_364:Destroy()
				v_u_364 = v_u_363.Character
				v_u_382 = true
				isinvisible = false
				v_u_365:Destroy()
				workspace.CurrentCamera.CameraSubject = v_u_364.Humanoid
				v_u_364.Archivable = true
				v_u_365 = v_u_364:Clone()
				v_u_366:Destroy()
				v_u_366 = Instance.new("Part", workspace)
				v_u_366.Anchored = true
				v_u_366.Size = Vector3.new(7, 1, 7)
				v_u_366.CFrame = CFrame.new(1653.3216552734375, -16.953155517578125, -529.6856079101562)
				v_u_366.CanCollide = true
				v_u_365.Parent = workspace
				v_u_365.HumanoidRootPart.CFrame = v_u_366.CFrame * CFrame.new(0, 5, 0)
				local v383 = v_u_364
				local v384, v385, v386 = pairs(v383:GetChildren())
				while true do
					local v387
					v386, v387 = v384(v385, v386)
					if v386 == nil then
						break
					end
					if v387:IsA("LocalScript") then
						local v388 = v387:Clone()
						v388.Disabled = true
						v388.Parent = v_u_365
					end
				end
				if v_u_370 then
					local v389 = v_u_365
					local v390, v391, v392 = pairs(v389:GetDescendants())
					while true do
						local v393
						v392, v393 = v390(v391, v392)
						if v392 == nil then
							break
						end
						if v393:IsA("BasePart") then
							v393.Transparency = 0.7
						end
					end
				end
				v_u_364.Humanoid.Died:Connect(function()
					-- upvalues: (ref) v_u_364, (ref) v_u_365
					v_u_364:Destroy()
					v_u_365:Destroy()
				end)
				v_u_363.CharacterAppearanceLoaded:Connect(RealCharacterDied)
			end
			v_u_364.Humanoid.Died:Connect(function()
				-- upvalues: (ref) v_u_364, (ref) v_u_365
				v_u_364:Destroy()
				v_u_365:Destroy()
			end)
			v_u_363.CharacterAppearanceLoaded:Connect(RealCharacterDied)
			local v_u_394 = nil
			game:GetService("RunService").RenderStepped:Connect(function()
				-- upvalues: (ref) v_u_394, (ref) v_u_366, (ref) v_u_372
				if v_u_394 ~= nil then
					v_u_394.CFrame = v_u_366.CFrame * CFrame.new(0, 5, 0)
				end
			end)
			v_u_394 = v_u_365.HumanoidRootPart
			local function v_u_407()
				-- upvalues: (ref) v_u_373, (ref) v_u_364, (ref) v_u_365, (ref) v_u_363, (ref) v_u_394
				if v_u_373 ~= false then
					local v395 = v_u_365.HumanoidRootPart.CFrame
					v_u_365.HumanoidRootPart.CFrame = v_u_364.HumanoidRootPart.CFrame
					v_u_364.HumanoidRootPart.CFrame = v395
					v_u_365.Humanoid:UnequipTools()
					v_u_363.Character = v_u_364
					workspace.CurrentCamera.CameraSubject = v_u_364.Humanoid
					v_u_394 = v_u_365.HumanoidRootPart
					local v396 = v_u_365
					local v397, v398, v399 = pairs(v396:GetChildren())
					while true do
						local v400
						v399, v400 = v397(v398, v399)
						if v399 == nil then
							break
						end
						if v400:IsA("LocalScript") then
							v400.Disabled = true
						end
					end
					v_u_373 = false
				else
					local v401 = v_u_364.HumanoidRootPart.CFrame
					v_u_364.HumanoidRootPart.CFrame = v_u_365.HumanoidRootPart.CFrame
					v_u_365.HumanoidRootPart.CFrame = v401
					v_u_364.Humanoid:UnequipTools()
					v_u_363.Character = v_u_365
					workspace.CurrentCamera.CameraSubject = v_u_365.Humanoid
					v_u_394 = v_u_364.HumanoidRootPart
					local v402 = v_u_365
					local v403, v404, v405 = pairs(v402:GetChildren())
					while true do
						local v406
						v405, v406 = v403(v404, v405)
						if v405 == nil then
							break
						end
						if v406:IsA("LocalScript") then
							v406.Disabled = false
						end
					end
					v_u_373 = true
				end
			end
			v_u_13.InputBegan:Connect(function(p408, p409)
				-- upvalues: (ref) v_u_371, (ref) v_u_382, (ref) v_u_364, (ref) v_u_365, (ref) v_u_407
				if not p409 then
					local v410 = v_u_371
					if p408.KeyCode.Name:lower() == v410:lower() and (v_u_382 and (v_u_364 and v_u_365)) and (v_u_364:FindFirstChild("HumanoidRootPart") and v_u_365:FindFirstChild("HumanoidRootPart")) then
						v_u_407()
					end
				end
			end)
		end
	})
	v344:CreateLabel("ESP Players")
	v344:CreateButton({
		["Name"] = "ESP Highlight Name & Health",
		["Interact"] = "ESP",
		["Callback"] = function()
			-- upvalues: (ref) v_u_5, (ref) v_u_162
			local v_u_411 = Color3.fromRGB(255, 18, 30)
			local v_u_412 = "AlwaysOnTop"
			local v_u_413 = 0.7
			local v_u_414 = Color3.fromRGB(255, 255, 255)
			local v415 = game:FindService("CoreGui")
			local v_u_416 = {}
			local v_u_417 = Instance.new("Folder")
			v_u_417.Parent = v415
			v_u_417.Name = "Highlight_Storage"
			local function v422(p418)
				-- upvalues: (ref) v_u_411, (ref) v_u_412, (ref) v_u_413, (ref) v_u_414, (ref) v_u_417, (ref) v_u_416
				local v_u_419 = Instance.new("Highlight")
				v_u_419.Name = p418.Name
				v_u_419.FillColor = v_u_411
				v_u_419.DepthMode = v_u_412
				v_u_419.FillTransparency = v_u_413
				v_u_419.OutlineColor = v_u_414
				v_u_419.OutlineTransparency = 0
				v_u_419.Parent = v_u_417
				local v420 = p418.Character
				if v420 then
					v_u_419.Adornee = v420
				end
				v_u_416[p418] = p418.CharacterAdded:Connect(function(p421)
					-- upvalues: (ref) v_u_419
					v_u_419.Adornee = p421
				end)
			end
			v_u_5.PlayerAdded:Connect(v422)
			local v423 = next
			local v424, v425 = v_u_5:GetPlayers()
			local v_u_426 = v_u_416
			local v_u_427 = v_u_417
			while true do
				local v428
				v425, v428 = v423(v424, v425)
				if v425 == nil then
					break
				end
				if v428.Name ~= v_u_162 then
					v422(v428)
				end
			end
			v_u_5.PlayerRemoving:Connect(function(p429)
				-- upvalues: (ref) v_u_427, (ref) v_u_426
				local v430 = p429.Name
				if v_u_427[v430] then
					v_u_427[v430]:Destroy()
				end
				if v_u_426[p429] then
					v_u_426[p429]:Disconnect()
				end
			end)
			function ApplyESP(p431)
				if p431.Character and p431.Character:FindFirstChildOfClass("Humanoid") then
					p431.Character.Humanoid.NameDisplayDistance = 9000000000
					p431.Character.Humanoid.NameOcclusion = "NoOcclusion"
					p431.Character.Humanoid.HealthDisplayDistance = 9000000000
					p431.Character.Humanoid.HealthDisplayType = "AlwaysOn"
					p431.Character.Humanoid.Health = p431.Character.Humanoid.Health
				end
			end
			local v432, v433, v434 = pairs(game:GetService("Players"):GetPlayers())
			while true do
				local v_u_435
				v434, v_u_435 = v432(v433, v434)
				if v434 == nil then
					break
				end
				ApplyESP(v_u_435)
				v_u_435.CharacterAdded:Connect(function()
					-- upvalues: (ref) v_u_435
					task.wait(0.33)
					ApplyESP(v_u_435)
				end)
			end
			game:GetService("Players").PlayerAdded:Connect(function(p_u_436)
				ApplyESP(p_u_436)
				p_u_436.CharacterAdded:Connect(function()
					-- upvalues: (ref) p_u_436
					task.wait(0.33)
					ApplyESP(p_u_436)
				end)
			end)
		end
	})
	v344:CreateLabel("Clothing")
	v344:CreateButton({
		["Name"] = "PoliceUniform",
		["Interact"] = "",
		["Callback"] = function()
			local v437 = workspace.ServerFurniture
			local v438 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			local v439, v440, v441 = pairs(v437:GetDescendants())
			while true do
				local v442
				v441, v442 = v439(v440, v441)
				if v441 == nil then
					break
				end
				if v442:IsA("Model") and v442:GetAttribute("furnitureName") == "PoliceUniform" then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v442.PrimaryPart.CFrame
					task.wait(0.6)
					fireproximityprompt(v442.Handle.ProximityPrompt)
					task.wait(0.2)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v438
				end
			end
			local v443 = workspace.ServerFurniture
			local v444 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			local v445, v446, v447 = pairs(v443:GetDescendants())
			while true do
				local v448
				v447, v448 = v445(v446, v447)
				if v447 == nil then
					break
				end
				if v448:IsA("Model") and v448:GetAttribute("furnitureName") == "PoliceHat" then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v448.PrimaryPart.CFrame
					task.wait(0.6)
					fireproximityprompt(v448.Hitbox.ProximityPrompt)
					task.wait(0.2)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v444
				end
			end
		end
	})
	v344:CreateButton({
		["Name"] = "Clown Hat",
		["Interact"] = "",
		["Callback"] = function()
			local v449 = workspace.ServerFurniture
			local v450 = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			local v451, v452, v453 = pairs(v449:GetDescendants())
			while true do
				local v454
				v453, v454 = v451(v452, v453)
				if v453 == nil then
					break
				end
				if v454:GetAttribute("furnitureName") == "Clown" then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v454.WorldPivot * CFrame.new(0, 0, 3)
					task.wait(0.7)
					fireproximityprompt(v454.Hitbox.ProximityPrompt)
					task.wait(0.4)
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v450
				end
			end
		end
	})
	v344:CreateDropdown({
		["Name"] = "Animations",
		["Options"] = v288,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "Animss",
		["Callback"] = function(p455)
			-- upvalues: (ref) v_u_6
			SelectedAnim = p455
			local v456 = v_u_6.Character.Animate
			local v457 = game:GetService("ReplicatedStorage").Anims
			v456.idle.Animation1.AnimationId = v457[SelectedAnim].AnimationId
			v456.idle.Animation2.AnimationId = v457[SelectedAnim].AnimationId
			v456.walk:FindFirstChildWhichIsA("Animation").AnimationId = v457[SelectedAnim].AnimationId
			v456.run:FindFirstChildWhichIsA("Animation").AnimationId = v457[SelectedAnim].AnimationId
			v456.jump:FindFirstChildWhichIsA("Animation").AnimationId = v457[SelectedAnim].AnimationId
			v456.swim:FindFirstChildWhichIsA("Animation").AnimationId = v457[SelectedAnim].AnimationId
			v456.climb:FindFirstChildWhichIsA("Animation").AnimationId = v457[SelectedAnim].AnimationId
			v456.swimidle:FindFirstChildWhichIsA("Animation").AnimationId = v457[SelectedAnim].AnimationId
			v456.fall:FindFirstChildWhichIsA("Animation").AnimationId = v457[SelectedAnim].AnimationId
		end
	})
	local v458 = v336:CreateTab("Players", 13289762774)
	local v_u_460 = v458:CreateDropdown({
		["Name"] = "Players",
		["Options"] = v_u_282,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "PlayerTP",
		["Callback"] = function(p459)
			PlayerTP = p459
		end
	})
	v458:CreateButton({
		["Name"] = "Rescan",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_282, (ref) v_u_5, (ref) v_u_162, (ref) v_u_460
			v_u_282 = {}
			local v461 = v_u_5
			local v462, v463, v464 = pairs(v461:GetPlayers())
			while true do
				local v465
				v464, v465 = v462(v463, v464)
				if v464 == nil then
					break
				end
				if v465.Name ~= v_u_162 then
					table.insert(v_u_282, v465.Name)
				end
			end
			v_u_460:Refresh(v_u_282)
		end
	})
	v458:CreateButton({
		["Name"] = "TP",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_5, (ref) v_u_165
			if v_u_5[PlayerTP].UserId ~= v_u_165[table.find(v_u_165, v_u_5[PlayerTP].UserId)] then
				Teleport(v_u_5[PlayerTP].Character:FindFirstChild("HumanoidRootPart").CFrame)
			end
		end
	})
	v458:CreateToggle({
		["Name"] = "Spectate Selected Player",
		["Info"] = "",
		["CurrentValue"] = false,
		["Flag"] = "specplr",
		["Callback"] = function(p466)
			-- upvalues: (ref) v_u_5, (ref) v_u_10
			getgenv().specplayer = p466
			while getgenv().specplayer == true do
				task.wait(0.2)
				if getgenv().specplayer ~= true or not v_u_5[PlayerTP].Character or not v_u_5[PlayerTP].Character:FindFirstChild("Humanoid") then
					if getgenv().specplayer ~= true or v_u_5[PlayerTP].Character then
						if getgenv().specplayer == false then
							workspace.CurrentCamera.CameraSubject = v_u_10
						end
					else
						workspace.CurrentCamera.CameraSubject = v_u_10
					end
				else
					workspace.CurrentCamera.CameraSubject = v_u_5[PlayerTP].Character:FindFirstChild("Humanoid")
				end
			end
		end
	})
	v458:CreateToggle({
		["Name"] = "Auto TP Selected Player",
		["Info"] = "Loop Teleport To Selected Player",
		["CurrentValue"] = false,
		["Flag"] = "AutoTpPlayer",
		["Callback"] = function(p467)
			-- upvalues: (ref) v_u_163, (ref) v_u_10, (ref) v_u_5, (ref) v_u_165, (ref) v_u_12
			getgenv().TPPlayer = p467
			while true do
				if getgenv().TPPlayer ~= true then
					return
				end
				local v468 = v_u_163.CFrame
				aptpdfuncc = aptpdfunc or 3.8
				if v_u_10.Health <= 5 then
					if v_u_10.Health < 5 then
						v_u_10.Health = die
					end
					goto l12
				end
				if v_u_5[PlayerTP].UserId ~= v_u_165[table.find(v_u_165, v_u_5[PlayerTP].UserId)] and v_u_5[PlayerTP].Character and (v_u_5[PlayerTP].Character:FindFirstChild("HumanoidRootPart") and v_u_5[PlayerTP].Character:FindFirstChild("Humanoid")) then
					break
				end
				::l12::
				v_u_163.CFrame = v468
				v_u_12.RenderStepped:Wait()
			end
			while true do
				task.wait()
				aptpdfuncc = aptpdfunc or 4
				if v_u_5[PlayerTP].UserId ~= v_u_165[table.find(v_u_165, v_u_5[PlayerTP].UserId)] and v_u_5[PlayerTP].Character and (v_u_5[PlayerTP].Character:FindFirstChild("HumanoidRootPart") and v_u_5[PlayerTP].Character:FindFirstChild("Humanoid")) then
					v_u_163.CFrame = v_u_5[PlayerTP].Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, 0, aptpdfuncc)
				end
				if getgenv().TPPlayer == false or v_u_5[PlayerTP].Character == nil then
					goto l12
				end
			end
		end
	})
	v458:CreateToggle({
		["Name"] = "Auto Kill Selected Player",
		["Info"] = "",
		["CurrentValue"] = false,
		["Flag"] = "AutokillTpPlayer",
		["Callback"] = function(p469)
			-- upvalues: (ref) v_u_163, (ref) v_u_10, (ref) v_u_5
			-- block 62
			getgenv().TPKillPlayer = p469
			::l18::
			while true do
				if getgenv().TPKillPlayer ~= true then
					return
				end
				task.wait(0.03)
				aptpdfuncc = aptpdfunc or 3.8
				aptpdfuncunderu = aptpdfuncunder or -18
				local v470 = GetEquippedName()
				local v471 = v_u_163.CFrame
				if v_u_10.Health > 50 then
					break
				end
				if v_u_10.Health < 50 then
					v_u_10.Health = die
				end
			end
			::l11::
			if v_u_10.Sit == true then
				goto l15
			end
			if v_u_5[PlayerTP].Character and (v_u_5[PlayerTP].Character:FindFirstChild("HumanoidRootPart") and (v_u_5[PlayerTP].Character:FindFirstChild("Humanoid") and (v_u_5[PlayerTP].Character:FindFirstChild("Humanoid").Health > 1 and (v_u_5[PlayerTP].Character:FindFirstChild("Humanoid").Jump == false and not v_u_5[PlayerTP].Character:FindFirstChild("ForceField"))))) then
				goto l28
			end
			goto l18
			::l28::
			task.wait()
			aptpdfuncc = aptpdfunc or 3.8
			aptpdfuncunderu = aptpdfuncunder or -18
			if v_u_5[PlayerTP].Character and (v_u_5[PlayerTP].Character:FindFirstChild("HumanoidRootPart") and (v_u_5[PlayerTP].Character:FindFirstChild("Humanoid") and (v_u_5[PlayerTP].Character:FindFirstChild("Humanoid").Health > 1 and not v_u_5[PlayerTP].Character:FindFirstChild("ForceField")))) then
				equip("Fists")
				workspace.CurrentCamera.CameraSubject = v_u_5[PlayerTP].Character.Humanoid
				v_u_163.CFrame = v_u_5[PlayerTP].Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, aptpdfuncunderu, aptpdfuncc)
				killfunc(v_u_5[PlayerTP])
				stompfunc(v_u_5[PlayerTP])
			end
			if getgenv().TPKillPlayer ~= false and v_u_5[PlayerTP].Character ~= nil and (v_u_5[PlayerTP].Character:FindFirstChild("Humanoid").Health >= 1 and (not v_u_5[PlayerTP].Character:FindFirstChild("ForceField") and (v_u_10.Sit ~= true and v_u_10.Health >= 50))) then
				goto l28
			end
			workspace.CurrentCamera.CameraSubject = v_u_10
			v_u_163.CFrame = v471
			task.wait()
			equip(v470)
			goto l18
			::l15::
			if v_u_10.Sit == true then
				v_u_10.Jump = true
			end
			goto l18
		end
	})
	v458:CreateSlider({
		["Name"] = "CFrame Back Position",
		["Range"] = { -60, 60 },
		["Increment"] = 0.1,
		["Suffix"] = "Distance",
		["CurrentValue"] = 0,
		["Flag"] = "cframeback",
		["Callback"] = function(p472)
			aptpdfunc = p472
		end
	})
	v458:CreateSlider({
		["Name"] = "CFrame Under Position",
		["Range"] = { -22, 22 },
		["Increment"] = 0.1,
		["Suffix"] = "Distance",
		["CurrentValue"] = 0,
		["Flag"] = "cframeunder",
		["Callback"] = function(p473)
			aptpdfuncunder = p473
		end
	})
	v458:CreateToggle({
		["Name"] = "Fling Selected Player",
		["Info"] = "",
		["CurrentValue"] = false,
		["Flag"] = "flingplr",
		["Callback"] = function(p474)
			-- upvalues: (ref) v_u_163, (ref) v_u_5
			-- block 26
			getgenv().flingpowert = p474
			local v475 = v_u_163.CFrame
			local v476 = v_u_163.AssemblyLinearVelocity
			::l6::
			repeat
				if getgenv().flingpowert ~= true then
					return
				end
				task.wait(0.1)
			until v_u_5[PlayerTP].Character and (v_u_5[PlayerTP].Character:FindFirstChild("HumanoidRootPart") and (v_u_5[PlayerTP].Character:FindFirstChild("Humanoid") and v_u_163))
			::l12::
			task.wait()
			if v_u_5[PlayerTP].Character and (v_u_5[PlayerTP].Character:FindFirstChild("HumanoidRootPart") and (v_u_5[PlayerTP].Character:FindFirstChild("Humanoid") and v_u_163)) then
				v_u_163.CFrame = v_u_5[PlayerTP].Character.HumanoidRootPart.CFrame
				v_u_163.AssemblyLinearVelocity = Vector3.new(getgenv().flingpower, getgenv().flingpower, getgenv().flingpower)
			end
			if getgenv().flingpowert ~= false and v_u_5[PlayerTP].Character.Humanoid.FloorMaterial ~= Enum.Material.Air then
				goto l12
			end
			task.wait(0.1)
			v_u_163.AssemblyLinearVelocity = v476
			v_u_163.CFrame = v475
			goto l6
		end
	})
	v458:CreateSlider({
		["Name"] = "Fling Player [Set Power]",
		["Range"] = { 0, 999999 },
		["Increment"] = 0.1,
		["Suffix"] = "Fling Power",
		["CurrentValue"] = 0,
		["Flag"] = "flngplrpwr",
		["Callback"] = function(p477)
			getgenv().flingpower = p477
		end
	})
	v458:CreateLabel("Kill All")
	killplrsmodess = { "All", "Nearest" }
	v458:CreateDropdown({
		["Name"] = "Kill All Players Mode",
		["Options"] = killplrsmodess,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "modessssaplr",
		["Callback"] = function(p478)
			selectedmodekillplrs = p478
		end
	})
	v458:CreateToggle({
		["Name"] = "Auto Kill All",
		["Info"] = "Kills All",
		["CurrentValue"] = false,
		["Flag"] = "Autokillall",
		["Callback"] = function(p479)
			-- upvalues: (ref) v_u_163, (ref) v_u_6, (ref) v_u_10, (ref) v_u_162, (ref) v_u_164, (ref) v_u_165
			-- block 128
			getgenv().AutoKillAll = p479
			::l21::
			while true do
				if getgenv().AutoKillAll ~= true then
					return
				end
				task.wait(0.05)
				selectedmodekillplrsfunc = selectedmodekillplrs or "All"
				local v480 = GetEquipped()
				aptpdfuncc = aptpdfunc or 3.8
				killallwhendis = getgenv().killalldisfunc or 60
				aptpdfuncunderu = aptpdfuncunder or -20
				friendnokill = getFriends()
				equippedName = GetEquippedName()
				getPlayers()
				local v481 = v_u_163.CFrame
				if selectedmodekillplrsfunc == "Nearest" then
					break
				end
				if selectedmodekillplrsfunc == "All" then
					killAllPlayers()
				end
			end
			::l17::
			if #getPlayers() <= 0 then
				goto l21
			end
			local v482 = getPlayers()[math.random(1, #getPlayers())]
			if v_u_6.Character and (v_u_6.Character:FindFirstChild("HumanoidRootPart") and v_u_6.Character:FindFirstChild("Humanoid")) then
				goto l27
			end
			goto l21
			::l27::
			if v_u_10.Health <= 50 then
				goto l30
			end
			if v_u_6.Character:FindFirstChild("Humanoid").Sit ~= false then
				goto l33
			end
			if v482.Character and (v482.Character:FindFirstChild("HumanoidRootPart") and (v482.Character:FindFirstChild("Humanoid") and (v482.Character:FindFirstChild("Humanoid").Jump == false and (v482.Character:FindFirstChild("Head") and not v482.Character:FindFirstChild("ForceField"))))) then
				goto l45
			end
			goto l21
			::l45::
			dis = (v_u_6.Character.HumanoidRootPart.Position - v482.Character.HumanoidRootPart.Position).magnitude
			if dis <= killallwhendis and (v482.Name ~= v_u_162 and (friendnokill[table.find(friendnokill, v482.Name)] ~= v482.Name and (v_u_164[table.find(v_u_164, v482.Name)] ~= v482.Name and (v_u_165[table.find(v_u_165, v482.UserId)] ~= v482.UserId and v482.Character.Humanoid.Health > 1)))) then
				goto l29
			end
			goto l21
			::l29::
			::l3::
			::l18::
			::l20::
			::l2::
			::l57::
			task.wait()
			selectedmodekillplrsfunc = selectedmodekillplrs or "All"
			killallwhendis = getgenv().killalldisfunc or 60
			aptpdfuncc = aptpdfunc or 3.8
			aptpdfuncunderu = aptpdfuncunder or -20
			if v_u_6.Character and (v_u_6.Character:FindFirstChild("HumanoidRootPart") and (v_u_6.Character:FindFirstChild("Humanoid") and v482.Character and (v482.Character:FindFirstChild("HumanoidRootPart") and (v482.Character:FindFirstChild("Humanoid") and (v482.Character:FindFirstChild("Humanoid").Jump == false and (v482.Character:FindFirstChild("Head") and not v482.Character:FindFirstChild("ForceField"))))))) then
				dis = (v_u_6.Character.HumanoidRootPart.Position - v482.Character.HumanoidRootPart.Position).magnitude
				if dis <= killallwhendis and (v482.Name ~= v_u_162 and (friendnokill[table.find(friendnokill, v482.Name)] ~= v482.Name and (v_u_164[table.find(v_u_164, v482.Name)] ~= v482.Name and (v_u_165[table.find(v_u_165, v482.UserId)] ~= v482.UserId and v482.Character.Humanoid.Health > 1)))) then
					equipHash("Fists")
					workspace.CurrentCamera.CameraSubject = v482.Character.Humanoid
					v_u_163.CFrame = CFrame.lookAt(v_u_163.Position, v482.Character:FindFirstChild("HumanoidRootPart").Position)
					v_u_163.CFrame = v482.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0, aptpdfuncunderu, aptpdfuncc)
					killfunc(v482)
					stompfunc(v482)
				end
			end
			if getgenv().AutoKillAll == false or v482.Character == nil or (v482.Character:FindFirstChild("ForceField") or (v482.Character:FindFirstChild("Humanoid").Health < 1 or (v_u_6.Character:FindFirstChild("Humanoid").Sit == true or (v_u_10.Health < 50 or selectedmodekillplrsfunc ~= "Nearest")))) then
				goto l103
			else
				goto l57
			end
			::l103::
			if v482.Character and v482.Character:FindFirstChild("Head") then
				v_u_163.CFrame = v482.Character:FindFirstChild("Head").CFrame
			end
			v_u_163.CFrame = v481
			workspace.CurrentCamera.CameraSubject = v_u_10
			equipHash(v480)
			goto l21
			::l30::
			if v_u_10.Health < 50 then
				v_u_10.Health = die
			end
			goto l21
			::l33::
			if v_u_6.Character and v_u_6.Character:FindFirstChild("Humanoid").Sit == true then
				v_u_6.Character.Humanoid.Jump = true
			end
			goto l21
		end
	})
	v458:CreateSlider({
		["Name"] = "Distance KillAll",
		["Range"] = { 0, 250 },
		["Increment"] = 0.1,
		["Suffix"] = "Distance",
		["CurrentValue"] = 0.001,
		["Flag"] = "diskillall",
		["Callback"] = function(p483)
			getgenv().killalldisfunc = p483
		end
	})
	v458:CreateLabel("LoopBring [Client-Sided]")
	local v_u_485 = v458:CreateDropdown({
		["Name"] = "Players",
		["Options"] = v_u_282,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "briPLayer",
		["Callback"] = function(p484)
			Loopb = p484
		end
	})
	v458:CreateButton({
		["Name"] = "Rescan",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_282, (ref) v_u_5, (ref) v_u_162, (ref) v_u_485
			v_u_282 = {}
			local v486 = v_u_5
			local v487, v488, v489 = pairs(v486:GetPlayers())
			while true do
				local v490
				v489, v490 = v487(v488, v489)
				if v489 == nil then
					break
				end
				if v490.Name ~= v_u_162 then
					table.insert(v_u_282, v490.Name)
				end
			end
			v_u_485:Refresh(v_u_282)
		end
	})
	v458:CreateToggle({
		["Name"] = "Auto Bring",
		["Info"] = "Loop Teleport To Selected Player",
		["CurrentValue"] = false,
		["Flag"] = "loopbring",
		["Callback"] = function(p491)
			-- upvalues: (ref) v_u_5, (ref) v_u_163, (ref) v_u_12
			getgenv().loopbring = p491
			while getgenv().loopbring == true do
				if v_u_5[Loopb].Character and v_u_5[Loopb].Character:FindFirstChild("HumanoidRootPart") then
					v_u_5[Loopb].Character:FindFirstChild("HumanoidRootPart").CFrame = v_u_163.CFrame * CFrame.new(3, 0, -4)
				end
				v_u_12.Heartbeat:Wait()
			end
		end
	})
	v458:CreateLabel("PlayerCash")
	local v_u_494 = v458:CreateDropdown({
		["Name"] = "Player Cash",
		["Options"] = v_u_282,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "PLayerCash",
		["Callback"] = function(p492)
			-- upvalues: (ref) v_u_5, (ref) v_u_347
			Mon = p492
			local v493 = v_u_5[Mon].stats.Money.Value
			v_u_347:Notify({
				["Title"] = "Cash Check",
				["Content"] = Mon .. " Currently Has " .. v493,
				["Image"] = 14219740649
			})
		end
	})
	v458:CreateButton({
		["Name"] = "Rescan ",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_282, (ref) v_u_5, (ref) v_u_162, (ref) v_u_494
			v_u_282 = {}
			local v495 = v_u_5
			local v496, v497, v498 = pairs(v495:GetPlayers())
			while true do
				local v499
				v498, v499 = v496(v497, v498)
				if v498 == nil then
					break
				end
				if v499.Name ~= v_u_162 then
					table.insert(v_u_282, v499.Name)
				end
			end
			v_u_494:Refresh(v_u_282)
		end
	})
	local v500 = v336:CreateTab("Risky", 12077205368)
	v500:CreateLabel("Kill Aura & AutoStomp")
	v500:CreateToggle({
		["Name"] = "Kill Aura",
		["CurrentValue"] = false,
		["Flag"] = "killauraog",
		["Callback"] = function(p501)
			-- upvalues: (ref) v_u_6, (ref) v_u_162, (ref) v_u_164, (ref) v_u_165, (ref) v_u_12
			getgenv().killaura = p501
			while getgenv().killaura == true do
				friendnokill = getFriends()
				kvvald = kvald or 15
				plr = game:GetService("Players")
				v_u_6 = plr.LocalPlayer
				local v502 = next
				local v503, v504 = plr:GetPlayers()
				while true do
					local v505
					v504, v505 = v502(v503, v504)
					if v504 == nil then
						break
					end
					if v_u_6.Character and v_u_6.Character:FindFirstChild("HumanoidRootPart") then
						v_u_162 = v_u_6.Name
						lphumrootpart = v_u_6.Character.HumanoidRootPart
						if v505.Character and (not v505.Character:FindFirstChild("ForceField") and (v505.Character:FindFirstChild("HumanoidRootPart") and v505.Character:FindFirstChild("Humanoid"))) then
							vchar = v505.Character
							vuserid = v505.UserId
							vname = v505.Name
							vhumrootpart = v505.Character.HumanoidRootPart
							vhumanoid = v505.Character.Humanoid
							dis = (lphumrootpart.Position - vhumrootpart.Position).Magnitude
							if GetEquippedName() == "Fists" and (v_u_162 ~= vname and (friendnokill[table.find(friendnokill, vname)] ~= vname and (v_u_164[table.find(v_u_164, vname)] ~= vname and (v_u_165[table.find(v_u_165, vuserid)] ~= vuserid and (dis <= kvvald and (vhumanoid.Health ~= 0 and vhumanoid.Health > 7)))))) then
								args = {
									"player",
									{
										["meleeType"] = dmgt or "meleemegapunch",
										["hitPlayerId"] = vuserid
									}
								}
								reqload = require(game:GetService("ReplicatedStorage").devv).load
								loader = reqload("Signal")
								loader.FireServer("meleeItemHit", unpack(args))
							end
						end
					end
				end
				v_u_12.RenderStepped:Wait()
			end
		end
	})
	v500:CreateToggle({
		["Name"] = "KillAura While Knocked [TESTING]",
		["CurrentValue"] = false,
		["Flag"] = "kwkno",
		["Callback"] = function(p506)
			getgenv().autofist = p506
			Signals = game:GetService("ReplicatedStorage"):WaitForChild("devv"):WaitForChild("client"):WaitForChild("Helpers"):WaitForChild("remotes"):WaitForChild("Signal")
			if getgenv().autofist ~= true then
				if getgenv().autofist == false then
					getgenv().dehashConn:Disconnect()
				end
			else
				local v507 = next
				local v508, v509 = getupvalue(require(Signals).FireServer, 1)
				while true do
					local v_u_510, v_u_511 = v507(v508, v509)
					if v_u_510 == nil then
						break
					end
					v509 = v_u_510
					if getgenv().autofist == true then
						v_u_511.Name = v_u_510
						getgenv().dehashConn = v_u_511:GetPropertyChangedSignal("Name"):Connect(function()
							-- upvalues: (ref) v_u_511, (ref) v_u_510
							v_u_511.Name = v_u_510
						end)
					end
				end
			end
		end
	})
	v500:CreateDropdown({
		["Name"] = "Damage Type",
		["Options"] = v320,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "dmgmodess",
		["Callback"] = function(p512)
			dmgt = p512
		end
	})
	v500:CreateSlider({
		["Name"] = "Kill Aura Distance",
		["Range"] = { 1, 35 },
		["Increment"] = 1,
		["Suffix"] = "Distance",
		["CurrentValue"] = 1,
		["Flag"] = "Killauradis",
		["Callback"] = function(p513)
			kvald = p513
		end
	})
	v500:CreateToggle({
		["Name"] = "AutoStomp",
		["CurrentValue"] = false,
		["Flag"] = "autostomps",
		["Callback"] = function(p514)
			-- upvalues: (ref) v_u_6, (ref) v_u_162, (ref) v_u_164, (ref) v_u_165, (ref) v_u_17, (ref) v_u_12
			getgenv().autostomp = p514
			while getgenv().autostomp == true do
				friendnokill = getFriends()
				plr = game:GetService("Players")
				v_u_6 = plr.LocalPlayer
				local v515 = next
				local v516, v517 = plr:GetPlayers()
				while true do
					local v518
					v517, v518 = v515(v516, v517)
					if v517 == nil then
						break
					end
					if v_u_6.Character and v_u_6.Character:FindFirstChild("HumanoidRootPart") then
						v_u_162 = v_u_6.Name
						lphumrootpart = v_u_6.Character.HumanoidRootPart
						if v518.Character and (not v518.Character:FindFirstChild("ForceField") and (v518.Character:FindFirstChild("HumanoidRootPart") and v518.Character:FindFirstChild("Humanoid"))) then
							vchar = v518.Character
							vuserid = v518.UserId
							vname = v518.Name
							vhumrootpart = v518.Character.HumanoidRootPart
							vhumanoid = v518.Character.Humanoid
							dis = (lphumrootpart.Position - vhumrootpart.Position).Magnitude
							if dis <= 55 and (vname ~= v_u_162 and (friendnokill[table.find(friendnokill, vname)] ~= vname and (v_u_164[table.find(v_u_164, vname)] ~= vname and (v_u_165[table.find(v_u_165, vuserid)] ~= vuserid and (v_u_17[table.find(v_u_17, vname)] ~= vname and vhumanoid.Health < 35))))) then
								args = { v518 }
								reqload = require(game:GetService("ReplicatedStorage").devv).load
								loader = reqload("Signal")
								loader.FireServer("stomp", unpack(args))
							end
						end
					end
				end
				v_u_12.RenderStepped:Wait(0.1)
			end
		end
	})
	v500:CreateLabel("AutoGrab")
	v500:CreateToggle({
		["Name"] = "Auto Grab Nearest Player",
		["CurrentValue"] = false,
		["Flag"] = "grabply",
		["Callback"] = function(p519)
			-- upvalues: (ref) v_u_5, (ref) v_u_163, (ref) v_u_12
			getgenv().autograbv = p519
			while getgenv().autograbv == true do
				local v520 = v_u_5
				local v521, v522, v523 = pairs(v520:GetChildren())
				while true do
					local v524
					v523, v524 = v521(v522, v523)
					if v523 == nil then
						break
					end
					if v524.Character and (v524.Character:FindFirstChild("HumanoidRootPart") and v524.Character:FindFirstChild("Humanoid")) then
						mp = v524.Character:FindFirstChild("HumanoidRootPart")
						distance = (v_u_163.Position - mp.Position).magnitude
						if v524.Character.Humanoid.Health < 35 and distance <= 50 then
							argsb = { v524 }
							reqload = require(game:GetService("ReplicatedStorage").devv).load
							loader = reqload("Signal")
							loader.FireServer("grabPlayer", unpack(argsb))
						end
					end
				end
				v_u_12.Heartbeat:Wait()
			end
		end
	})
	v500:CreateLabel("Spam Msg/Call Nearest")
	tmsgrand = {}
	local v525, v526, v527 = pairs(chats)
	while true do
		local v528
		v527, v528 = v525(v526, v527)
		if v527 == nil then
			break
		end
		table.insert(tmsgrand, v528)
	end
	v500:CreateToggle({
		["Name"] = "Spam Call/Msg",
		["CurrentValue"] = false,
		["Flag"] = "Magickcall",
		["Callback"] = function(p529)
			-- upvalues: (ref) v_u_12, (ref) v_u_5, (ref) v_u_163, (ref) v_u_165, (ref) v_u_164, (ref) v_u_162
			getgenv().msgswitch = p529
			while getgenv().msgswitch == true do
				v_u_12.RenderStepped:Wait()
				callspamdisfunc = msgspamdis or 30
				friendnospam = getFriends()
				local v530 = v_u_5
				local v531, v532, v533 = pairs(v530:GetChildren())
				while true do
					local v534
					v533, v534 = v531(v532, v533)
					if v533 == nil then
						break
					end
					if v534.Character and (v534.Character:FindFirstChild("HumanoidRootPart") and v534.Character:FindFirstChild("Humanoid")) then
						vuserid = v534.UserId
						vname = v534.Name
						vchar = v534.Character
						vhumrootpart = v534.Character.HumanoidRootPart
						vhumanoid = v534.Character.Humanoid
						distance = (v_u_163.Position - vhumrootpart.Position).magnitude
						if friendnospam[table.find(friendnospam, vname)] ~= vname and (v_u_165[table.find(v_u_165, vuserid)] ~= vuserid and (v_u_164[table.find(v_u_164, vname)] ~= vname and (distance <= callspamdisfunc and (vname ~= v_u_162 and vhumanoid.Health ~= 0)))) then
							args = { vuserid, SpamMsg or tmsgrand[math.random(#tmsgrand)] }
							sendMessage(args)
							attemptCall(v534)
						end
					end
				end
			end
		end
	})
	v500:CreateSlider({
		["Name"] = "Call/Msg Distance",
		["Range"] = { 10, 200 },
		["Increment"] = 1,
		["Suffix"] = "Distance",
		["CurrentValue"] = 0.01,
		["Flag"] = "msgdis",
		["Callback"] = function(p535)
			msgspamdis = p535
		end
	})
	v500:CreateInput({
		["Name"] = "Message to spam",
		["PlaceholderText"] = "TeTraX OnTop!",
		["NumbersOnly"] = false,
		["CharacterLimit"] = 120,
		["OnEnter"] = true,
		["RemoveTextAfterFocusLost"] = false,
		["Callback"] = function(p536)
			SpamMsg = p536
		end
	})
	v500:CreateLabel("Other")
	v500:CreateToggle({
		["Name"] = "Antigrab",
		["CurrentValue"] = false,
		["Flag"] = "Antigrabbe",
		["Callback"] = function(p537)
			-- upvalues: (ref) v_u_12
			getgenv().antigrab = p537
			while getgenv().antigrab == true do
				antiGrab()
				v_u_12.RenderStepped:Wait()
			end
		end
	})
	v500:CreateToggle({
		["Name"] = "AntiRagdoll",
		["CurrentValue"] = false,
		["Flag"] = "antirag",
		["Callback"] = function(p538)
			-- upvalues: (ref) v_u_6, (ref) v_u_12
			getgenv().antiragdoll = p538
			while getgenv().antiragdoll == true do
				if v_u_6:GetAttribute("isRagdoll") == true then
					l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage")
					l_load_0 = require(l_ReplicatedStorage_0.devv).load
					v14 = l_load_0("ClientRagdoll")
					task.spawn(v14.SetRagdoll, v_u_6, false)
				end
				v_u_12.RenderStepped:Wait(0.1)
			end
		end
	})
	v500:CreateToggle({
		["Name"] = "Silent Block",
		["CurrentValue"] = false,
		["Flag"] = "silentBloc",
		["Callback"] = function(p539)
			-- upvalues: (ref) v_u_12
			getgenv().silentblock = p539
			if getgenv().silentblock ~= true then
				if getgenv().silentblock == false then
					getgenv().silentblocker = false
					silentBlock()
				end
			else
				getgenv().silentblocker = true
				while getgenv().silentblock == true do
					silentBlock()
					v_u_12.RenderStepped:Wait()
				end
			end
		end
	})
	v500:CreateToggle({
		["Name"] = "Auto Destroy Nearest Vehicle",
		["CurrentValue"] = false,
		["Flag"] = "destroyveh",
		["Callback"] = function(p540)
			-- upvalues: (ref) v_u_163, (ref) v_u_321, (ref) v_u_8, (ref) v_u_12
			getgenv().destroyveh = p540
			while getgenv().destroyveh == true do
				allfriends = getFriendsID()
				local v541, v542, v543 = pairs(workspace.Game.Vehicles:GetChildren())
				while true do
					local v544
					v543, v544 = v541(v542, v543)
					if v543 == nil then
						break
					end
					equippedName = GetEquippedName()
					if v544.PrimaryPart then
						distance = (v_u_163.Position - v544.PrimaryPart.Position).magnitude
						if distance > 50 or (v544.Name ~= v_u_321[table.find(v_u_321, v544.Name)] or (v544:GetAttribute("owner") == v_u_8 or (v544:GetAttribute("owner") == allfriends[table.find(allfriends, v544:GetAttribute("owner"))] or (equippedName ~= "Fists" or distance > 50)))) then
							if v544.Name == "Armored Truck" and (v544.Name ~= v_u_321[table.find(v_u_321, v544.Name)] and (equippedName == "Fists" and distance <= 50)) then
								local v545 = {
									"vehicle",
									{
										["meleeType"] = "meleemegapunch",
										["guid"] = v544.GUID.Value
									}
								}
								game:GetService("ReplicatedStorage").devv.remoteStorage[tostring(getupvalue(require(game:GetService("ReplicatedStorage").devv.client.Helpers.remotes.Signal).FireServer, 1).meleeItemHit)]:FireServer(unpack(v545))
							end
						else
							local v546 = {
								"vehicle",
								{
									["meleeType"] = "meleemegapunch",
									["guid"] = v544.GUID.Value
								}
							}
							game:GetService("ReplicatedStorage").devv.remoteStorage[tostring(getupvalue(require(game:GetService("ReplicatedStorage").devv.client.Helpers.remotes.Signal).FireServer, 1).meleeItemHit)]:FireServer(unpack(v546))
						end
					end
				end
				v_u_12.Heartbeat:Wait()
			end
		end
	})
	local v547 = v336:CreateTab("Magick Tab", 18380233581)
	v547:CreateLabel("HitPart [SET THIS]")
	v_u_349.Dropdownhitpart = v547:CreateDropdown({
		["Name"] = "Select HitPart [SET THIS]",
		["Options"] = v323,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "hitpartg",
		["Callback"] = function(p548)
			SelHitpart = p548
		end
	})
	v547:CreateLabel("Magick Bullet")
	v_u_349.Togglebullet = v547:CreateToggle({
		["Name"] = "Kill Nearest",
		["CurrentValue"] = false,
		["Flag"] = "MagickBulletsGun",
		["Callback"] = function(p549)
			-- upvalues: (ref) v_u_12, (ref) v_u_268, (ref) v_u_5, (ref) v_u_6, (ref) v_u_165, (ref) v_u_17, (ref) v_u_164
			getgenv().magicswitch = p549
			if getgenv().magicswitch ~= true then
				if getgenv().magicswitch == false then
					getgenv().magickkillfunc:Disconnect()
				end
			else
				guid = require(game:GetService("ReplicatedStorage").devv.shared.Helpers.string.GUID)
				same = {}
				table.insert(same, guid())
				getgenv().magickkillfunc = v_u_12.Heartbeat:connect(function()
					-- upvalues: (ref) v_u_268, (ref) v_u_5, (ref) v_u_6, (ref) v_u_165, (ref) v_u_17, (ref) v_u_164
					friendnokill = getFriends()
					local v550 = SelHitpart or "HumanoidRootPart"
					local v551 = GetEquipped()
					local v552 = GetEquippedName()
					magdisss = magdis or 80
					v_u_268 = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
					local v553 = v_u_5
					local v554, v555, v556 = pairs(v553:GetChildren())
					while true do
						local v557
						v556, v557 = v554(v555, v556)
						if v556 == nil then
							break
						end
						if v_u_6.Character and (v_u_6.Character:FindFirstChild("HumanoidRootPart") and v557.Character and (v557.Character:FindFirstChild("HumanoidRootPart") and (v557.Character:FindFirstChild("Humanoid") and v557.Character:FindFirstChild(v550)))) then
							distance = (v_u_6.Character.HumanoidRootPart.Position - v557.Character.HumanoidRootPart.Position).magnitude
							if not v557.Character:FindFirstChild("ForceField") and (v552 == tostring(Selammogun) and (v557.Character.Humanoid.Health ~= 0 and (v_u_165[table.find(v_u_165, v557.UserId)] ~= v557.UserId and (friendnokill[table.find(friendnokill, v557.Name)] ~= v557.Name and (v_u_17[table.find(v_u_17, v557.Name)] ~= v557.Name and (v_u_164[table.find(v_u_164, v557.Name)] ~= v557.Name and (distance <= magdisss and (v557.Name ~= v_u_6.Name and v557.Character.Humanoid.Health > 7)))))))) then
								local v558 = { v551 }
								local v559 = {
									{ same[1], v557.Character:FindFirstChild(v550).CFrame }
								}
								v558[2] = v559
								v558[3] = fireratem or "auto"
								replicateProjectiles(v558)
								local v560 = {
									same[1],
									"player",
									{
										["hitPart"] = v557.Character:FindFirstChild(v550),
										["hitPlayerId"] = v557.UserId,
										["hitSize"] = v557.Character:FindFirstChild(v550).Size,
										["pos"] = v557.Character:FindFirstChild(v550).Position
									}
								}
								projectileHit(v560)
								buyAmmo(v552)
								Reload(v551)
							end
						end
					end
				end)
			end
		end
	})
	v_u_349.Dropdownselammo = v547:CreateDropdown({
		["Name"] = "Select Ammo [SET THIS]",
		["Options"] = v322,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "gunammo",
		["Callback"] = function(p561)
			Selammogun = p561
		end
	})
	v_u_349.Dropdownfirerate = v547:CreateDropdown({
		["Name"] = "Fire Rate",
		["Options"] = v273,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "gunrate",
		["Callback"] = function(p562)
			fireratem = p562
		end
	})
	v_u_349.Sliderdisbull = v547:CreateSlider({
		["Name"] = "Magick Bullet Distance",
		["Range"] = { 1, 900 },
		["Increment"] = 1,
		["Suffix"] = "Distance",
		["CurrentValue"] = 1,
		["Flag"] = "bulletdis",
		["Callback"] = function(p563)
			magdis = p563
		end
	})
	v547:CreateLabel("Magick Flame/Acid Hit")
	v_u_349.Toggleacid = v547:CreateToggle({
		["Name"] = "Flame/Acid Kill Nearest",
		["CurrentValue"] = false,
		["Flag"] = "MagickAcidGun",
		["Callback"] = function(p564)
			-- upvalues: (ref) v_u_12, (ref) v_u_268, (ref) v_u_5, (ref) v_u_163, (ref) v_u_164, (ref) v_u_17, (ref) v_u_165, (ref) v_u_162
			getgenv().flameHitPlayer = p564
			guid = require(game:GetService("ReplicatedStorage").devv.shared.Helpers.string.GUID)
			same = {}
			table.insert(same, guid())
			while getgenv().flameHitPlayer == true do
				v_u_12.Heartbeat:Wait()
				friendnokill = getFriends()
				local v565 = SelHitpart or "HumanoidRootPart"
				local v566 = GetEquipped()
				local v567 = GetEquippedName()
				v_u_268 = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
				magdissFlame = magdisFlame or 60
				local v568 = v_u_5
				local v569, v570, v571 = pairs(v568:GetPlayers())
				while true do
					local v572
					v571, v572 = v569(v570, v571)
					if v571 == nil then
						break
					end
					if v572.Character and (v572.Character:FindFirstChild("HumanoidRootPart") and (v572.Character:FindFirstChild("Humanoid") and (v572.Character:FindFirstChild(v565) and not v572.Character:FindFirstChild("ForceField")))) then
						distance = (v_u_163.Position - v572.Character:FindFirstChild("HumanoidRootPart").Position).magnitude
						if v567 == "Flamethrower" then
							if distance <= magdissFlame and (v572.Character.Humanoid.Health ~= 0 and (friendnokill[table.find(friendnokill, v572.Name)] ~= v572.Name and (v_u_164[table.find(v_u_164, v572.Name)] ~= v572.Name and (v_u_17[table.find(v_u_17, v572.Name)] ~= v572.Name and (v_u_165[table.find(v_u_165, v572.UserId)] ~= v572.UserId and v572.Name ~= v_u_162))))) then
								local v573 = { v566 }
								local v574 = {
									{ same[1], v572.Character:FindFirstChild(v565).CFrame }
								}
								v573[2] = v574
								v573[3] = "auto"
								replicateProjectiles(v573)
								local v575 = { same[1], guid(), v572.Character:FindFirstChild(v565).Position }
								flameHit(v575)
								flameHit(v575)
								flameHit(v575)
								local v576 = {
									same[1],
									"player",
									{
										["hitSize"] = v572.Character:FindFirstChild(v565).Size,
										["hitPart"] = v572.Character:FindFirstChild(v565),
										["pos"] = v572.Character:FindFirstChild(v565).Position,
										["hitPlayerId"] = v572.UserId
									}
								}
								projectileHit(v576)
								buyAmmo("Flamethrower")
								Reload(v566)
							end
						elseif v567 == "Acid Gun" and (distance <= magdissFlame and (v572.Character.Humanoid.Health ~= 0 and (friendnokill[table.find(friendnokill, v572.Name)] ~= v572.Name and (v_u_164[table.find(v_u_164, v572.Name)] ~= v572.Name and (v_u_17[table.find(v_u_17, v572.Name)] ~= v572.Name and (v_u_165[table.find(v_u_165, v572.UserId)] ~= v572.UserId and v572.Name ~= v_u_162)))))) then
							local v577 = { v566 }
							local v578 = {
								{ same[1], v572.Character:FindFirstChild(v565).CFrame }
							}
							v577[2] = v578
							v577[3] = "semi"
							replicateProjectiles(v577)
							local v579 = { same[1], guid(), v572.Character:FindFirstChild(v565).Position }
							acidHit(v579)
							acidHit(v579)
							acidHit(v579)
							local v580 = {
								same[1],
								"player",
								{
									["hitSize"] = v572.Character:FindFirstChild(v565).Size,
									["hitPart"] = v572.Character:FindFirstChild(v565),
									["pos"] = v572.Character:FindFirstChild(v565).Position,
									["hitPlayerId"] = v572.UserId
								}
							}
							projectileHit(v580)
							buyAmmo("Acid Gun")
							Reload(v566)
						end
					end
				end
			end
		end
	})
	v_u_349.Slideracidd = v547:CreateSlider({
		["Name"] = "Flame/Acid Distance",
		["Range"] = { 1, 900 },
		["Increment"] = 1,
		["Suffix"] = "Distance",
		["CurrentValue"] = 1,
		["Flag"] = "aciddis",
		["Callback"] = function(p581)
			magdisFlame = p581
		end
	})
	v547:CreateLabel("Magick RPG/Trident Spammers")
	v_u_349.Togglerpgspamd = v547:CreateToggle({
		["Name"] = "RPG Knock Nearest",
		["CurrentValue"] = false,
		["Flag"] = "rpgspammerog",
		["Callback"] = function(p582)
			-- upvalues: (ref) v_u_12, (ref) v_u_5, (ref) v_u_268, (ref) v_u_163, (ref) v_u_164, (ref) v_u_165, (ref) v_u_17, (ref) v_u_162
			getgenv().magicswitchRPG = p582
			guid = require(game:GetService("ReplicatedStorage").devv.shared.Helpers.string.GUID)
			same = {}
			table.insert(same, guid())
			while getgenv().magicswitchRPG == true do
				v_u_12.Heartbeat:Wait()
				friendnokill = getFriends()
				local v583 = GetEquippedName()
				local v584 = SelHitpart or "HumanoidRootPart"
				local v585 = GetEquipped()
				magdisRPGGG = magdisRPG or 100
				rpgwhenn = rpgwhen or 0.3
				local v586 = v_u_5
				local v587, v588, v589 = pairs(v586:GetChildren())
				while true do
					local v590
					v589, v590 = v587(v588, v589)
					if v589 == nil then
						break
					end
					v_u_268 = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
					if v590.Character and (v590.Character:FindFirstChild("HumanoidRootPart") and (v590.Character:FindFirstChild("Humanoid") and v590.Character:FindFirstChild(v584))) then
						distance = (v_u_163.Position - v590.Character:FindFirstChild("HumanoidRootPart").Position).magnitude
						if v583 == "RPG" then
							if friendnokill[table.find(friendnokill, v590.Name)] ~= v590.Name and (v_u_164[table.find(v_u_164, v590.Name)] ~= v590.Name and (v_u_165[table.find(v_u_165, v590.UserId)] ~= v590.UserId and (v_u_17[table.find(v_u_17, v590.Name)] ~= v590.Name and (v590.Name ~= v_u_162 and (distance <= magdisRPGGG and v590.Character.Humanoid.Health > rpgwhenn))))) then
								local v591 = { v585 }
								local v592 = {
									{ same[1], v590.Character:FindFirstChild(v584).CFrame }
								}
								v591[2] = v592
								v591[3] = "semi"
								replicateProjectiles(v591)
								local v593 = { same[1], guid(), v590.Character:FindFirstChild(v584).Position }
								rocketHit(v593)
								rocketHit(v593)
								rocketHit(v593)
								rocketHit(v593)
								rocketHit(v593)
								buyAmmo("RPG")
								Reload(v585)
							end
						elseif v583 == "Trident" and (friendnokill[table.find(friendnokill, v590.Name)] ~= v590.Name and (v_u_164[table.find(v_u_164, v590.Name)] ~= v590.Name and (v_u_17[table.find(v_u_17, v590.Name)] ~= v590.Name and (v_u_165[table.find(v_u_165, v590.UserId)] ~= v590.UserId and (v590.Name ~= v_u_162 and (distance <= magdisRPGGG and v590.Character.Humanoid.Health > rpgwhenn)))))) then
							local v594 = { v585 }
							local v595 = {
								{ same[1], v590.Character:FindFirstChild(v584).CFrame },
								{ guid(), v590.Character:FindFirstChild(v584).CFrame },
								{ guid(), v590.Character:FindFirstChild(v584).CFrame }
							}
							v594[2] = v595
							v594[3] = "semi"
							replicateProjectiles(v594)
							local v596 = { same[1], guid(), v590.Character:FindFirstChild(v584).Position }
							rocketHit(v596)
							rocketHit(v596)
							rocketHit(v596)
							rocketHit(v596)
							rocketHit(v596)
							buyAmmo("Trident")
							Reload(v585)
						end
					end
				end
			end
		end
	})
	v_u_349.Sliderrpghdiss = v547:CreateSlider({
		["Name"] = "RPG/Trident Enemy Health [SET THIS]",
		["Range"] = { 1, 30 },
		["Increment"] = 1,
		["Suffix"] = "Health",
		["CurrentValue"] = 1,
		["Flag"] = "rpgdishealth",
		["Callback"] = function(p597)
			rpgwhen = p597
		end
	})
	v_u_349.Sliderrpgdis = v547:CreateSlider({
		["Name"] = "RPG/Trident Distance [SET THIS]",
		["Range"] = { 1, 9999 },
		["Increment"] = 1,
		["Suffix"] = "Distance",
		["CurrentValue"] = 1,
		["Flag"] = "rpgdis",
		["Callback"] = function(p598)
			magdisRPG = p598
		end
	})
	v_u_349.Togglerpglockplrs = v547:CreateToggle({
		["Name"] = "RPG Lock OnPlayers",
		["CurrentValue"] = false,
		["Flag"] = "rpgspammermultitarget",
		["Callback"] = function(p599)
			-- upvalues: (ref) v_u_18, (ref) v_u_268, (ref) v_u_165, (ref) v_u_12
			getgenv().magicswitchRPGP = p599
			guid = require(game:GetService("ReplicatedStorage").devv.shared.Helpers.string.GUID)
			same = {}
			table.insert(same, guid())
			while getgenv().magicswitchRPGP == true do
				local v600 = SelHitpart or "HumanoidRootPart"
				local v601 = GetEquippedName()
				local v602 = GetEquipped()
				local v603, v604, v605 = pairs(v_u_18)
				while true do
					local v606
					v605, v606 = v603(v604, v605)
					if v605 == nil then
						break
					end
					if v606.Character and (v606.Character:FindFirstChild("HumanoidRootPart") and (v606.Character:FindFirstChild("Humanoid") and v606.Character:FindFirstChild(v600))) then
						v_u_268 = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
						if v601 == "RPG" and v606.UserId ~= v_u_165[table.find(v_u_165, v606.UserId)] then
							local v607 = { v602 }
							local v608 = {
								{ same[1], v606.Character:FindFirstChild(v600).CFrame }
							}
							v607[2] = v608
							v607[3] = "semi"
							replicateProjectiles(v607)
							local v609 = { same[1], guid(), v606.Character:FindFirstChild(v600).Position }
							rocketHit(v609)
							rocketHit(v609)
							rocketHit(v609)
							rocketHit(v609)
							rocketHit(v609)
							rocketHit(v609)
							rocketHit(v609)
							rocketHit(v609)
							buyAmmo("RPG")
							Reload(v602)
						end
					end
				end
				v_u_12.Heartbeat:Wait(0.1)
			end
		end
	})
	plrstohit = {}
	local v610, v611, v612 = pairs(v_u_5:GetChildren())
	while true do
		local v613
		v612, v613 = v610(v611, v612)
		if v612 == nil then
			break
		end
		if v613.Name ~= v_u_162 then
			table.insert(plrstohit, v613)
		end
	end
	v_u_349.Dropdownrpglockselplr = v547:CreateDropdown({
		["Name"] = "Select RPG Lock Players ",
		["Options"] = plrstohit,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "plrsrpg",
		["Callback"] = function(p614)
			-- upvalues: (ref) v_u_18
			table.insert(v_u_18, p614)
		end
	})
	v_u_349.Buttonrescanplrs = v547:CreateButton({
		["Name"] = "Rescan",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_5, (ref) v_u_162, (ref) v_u_349
			plrstohit = {}
			local v615 = v_u_5
			local v616, v617, v618 = pairs(v615:GetPlayers())
			while true do
				local v619
				v618, v619 = v616(v617, v618)
				if v618 == nil then
					break
				end
				if v619.Name ~= v_u_162 then
					table.insert(plrstohit, v619)
				end
			end
			v_u_349.Dropdownrpglockselplr:Refresh(plrstohit)
		end
	})
	v_u_349.Buttonremoveallplrs = v547:CreateButton({
		["Name"] = "Remove All",
		["Interact"] = "",
		["Callback"] = function(_)
			-- upvalues: (ref) v_u_18
			table.remove(v_u_18, v_u_18.wiperpgmulti)
		end
	})
	v547:CreateLabel("Magick Heal")
	local v_u_620 = {}
	v_u_349.Dropdownhealname = v547:CreateDropdown({
		["Name"] = "Select Healing Item Name",
		["Options"] = v_u_277,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "healthname",
		["Callback"] = function(p621)
			Healitemname = p621
		end
	})
	v_u_349.Buttonbuyhealty = v547:CreateButton({
		["Name"] = "Buy Heal Type",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_277, (ref) v_u_620
			va = v_u_277[math.random(4)]
			table.insert(v_u_620, va)
			buyItem(Healitemname or v_u_620[1])
		end
	})
	v_u_349.ToggleMagickhealacti = v547:CreateToggle({
		["Name"] = "Magick Heal Selected Item Slot",
		["CurrentValue"] = false,
		["Flag"] = "Magicheal",
		["Callback"] = function(p622)
			-- upvalues: (ref) v_u_10, (ref) v_u_620, (ref) v_u_12
			getgenv().magicswitchHeal = p622
			while getgenv().magicswitchHeal == true do
				local v623 = GetEquipped()
				healthtypee = healthtype or 85
				if v_u_10.Health ~= 0 and v_u_10.Health < healthtypee then
					buyAmmo(Healitemname or v_u_620[1])
					equip(Healitem)
					game:GetService("ReplicatedStorage").devv.remoteStorage:FindFirstChild("useConsumable"):FireServer(Healitem)
					equip(v623)
				end
				v_u_12.Heartbeat:Wait(0.1)
			end
		end
	})
	v_u_349.SliderHealthtypediss = v547:CreateSlider({
		["Name"] = "HealthType [SET THIS 2ND]",
		["Range"] = { 1, 190 },
		["Increment"] = 1,
		["Suffix"] = "Distance",
		["CurrentValue"] = 5,
		["Flag"] = "healset",
		["Callback"] = function(p624)
			healthtype = p624
		end
	})
	v_u_349.Dropdownselslotheal = v547:CreateDropdown({
		["Name"] = "Select Healing Item Slot",
		["Options"] = v_u_272,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "healitemzslot",
		["Callback"] = function(p625)
			Healitem = p625
		end
	})
	v_u_349.Buttonrescanitemzs = v547:CreateButton({
		["Name"] = "Rescan Item Slots",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_272, (ref) v_u_268, (ref) v_u_349
			v_u_272 = {}
			local v626, v627, v628 = pairs(v_u_268.inventory.ordered)
			while true do
				local v629
				v628, v629 = v626(v627, v628)
				if v628 == nil then
					break
				end
				table.insert(v_u_272, v629)
			end
			v_u_349.Dropdownselslotheal:Refresh(v_u_272)
		end
	})
	v547:CreateLabel("Spray")
	v_u_349.Dropdownspraykindd = v547:CreateDropdown({
		["Name"] = "Spray Type",
		["Options"] = v274,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "spraytypen",
		["Callback"] = function(p630)
			Spraytypething = p630
		end
	})
	v_u_349.Buttonspraytype = v547:CreateButton({
		["Name"] = "Buy Spray Type",
		["Interact"] = "",
		["Callback"] = function()
			buyItem(Spraytypething)
		end
	})
	v_u_349.ToggleSpraynearest = v547:CreateToggle({
		["Name"] = "Spray Nearest",
		["CurrentValue"] = false,
		["Flag"] = "Magicksprayn",
		["Callback"] = function(p631)
			-- upvalues: (ref) v_u_12, (ref) v_u_5, (ref) v_u_163, (ref) v_u_165, (ref) v_u_164, (ref) v_u_162
			getgenv().Spraycloud = p631
			guid = require(game:GetService("ReplicatedStorage").devv.shared.Helpers.string.GUID)
			same = {}
			table.insert(same, guid())
			while getgenv().Spraycloud == true do
				v_u_12.Heartbeat:Wait()
				friendnoeff = getFriends()
				local v632 = GetEquipped()
				local v633 = GetEquippedName()
				spraydizz = spraydiz or 80
				local v634 = SelHitpart or "HumanoidRootPart"
				item = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
				local v635 = v_u_5
				local v636, v637, v638 = pairs(v635:GetChildren())
				while true do
					local v639
					v638, v639 = v636(v637, v638)
					if v638 == nil then
						break
					end
					if v639.Character and (v639.Character:FindFirstChild("HumanoidRootPart") and (v639.Character:FindFirstChild("Humanoid") and v639.Character:FindFirstChild(v634))) then
						part = v639.Character:FindFirstChild("HumanoidRootPart")
						distance = (v_u_163.Position - part.Position).magnitude
						if not v639.Character:FindFirstChild("ForceField") then
							if v633 == "Pepper Spray" then
								if distance <= spraydizz and (friendnoeff[table.find(friendnoeff, v639.Name)] ~= v639.Name and (v_u_165[table.find(v_u_165, v639.UserId)] ~= v639.UserId and (v_u_164[table.find(v_u_164, v639.Name)] ~= v639.Name and (v639.Name ~= v_u_162 and v639.Character.Humanoid.Health ~= 1)))) then
									local v640 = { v632 }
									local v641 = {
										{ same[1], v639.Character:FindFirstChild(v634).CFrame }
									}
									v640[2] = v641
									v640[3] = "auto"
									replicateProjectiles(v640)
									local v642 = {
										same[1],
										"player",
										{
											["hitSize"] = v639.Character:FindFirstChild(v634).Size,
											["hitPart"] = v639.Character:FindFirstChild(v634),
											["pos"] = v639.Character:FindFirstChild(v634).Position,
											["hitPlayerId"] = v639.UserId
										}
									}
									pepperSprayHit(v642)
									Reload(v632)
								end
							elseif v633 == "Fire Extinguisher" and (distance <= spraydizz and (friendnoeff[table.find(friendnoeff, v639.Name)] ~= v639.Name and (v_u_165[table.find(v_u_165, v639.UserId)] ~= v639.UserId and (v_u_164[table.find(v_u_164, v639.Name)] ~= v639.Name and (v639.Name ~= v_u_162 and v639.Character.Humanoid.Health ~= 1))))) then
								local v643 = { v632 }
								local v644 = {
									{ same[1], v639.Character:FindFirstChild(v634).CFrame }
								}
								v643[2] = v644
								v643[3] = "auto"
								replicateProjectiles(v643)
								local v645 = {
									same[1],
									"player",
									{
										["hitSize"] = v639.Character:FindFirstChild(v634).Size,
										["hitPart"] = v639.Character:FindFirstChild(v634),
										["pos"] = v639.Character:FindFirstChild(v634).Position,
										["hitPlayerId"] = v639.UserId
									}
								}
								pepperSprayHit(v645)
								Reload(v632)
							end
						end
					end
				end
			end
		end
	})
	v_u_349.Sliderspraynear = v547:CreateSlider({
		["Name"] = "Distance [SET THIS 2ND]",
		["Range"] = { 1, 500 },
		["Increment"] = 1,
		["Suffix"] = "Distance",
		["CurrentValue"] = 1,
		["Flag"] = "spraydiss",
		["Callback"] = function(p646)
			spraydiz = p646
		end
	})
	local v647 = v336:CreateTab("Cash", 14219740649)
	v647:CreateSection("Auto", true)
	v647:CreateToggle({
		["Name"] = "Auto Claw Machine",
		["CurrentValue"] = false,
		["Flag"] = "clawmach",
		["Callback"] = function(p648)
			-- upvalues: (ref) v_u_6, (ref) v_u_163
			getgenv().aclmaca = p648
			while getgenv().aclmaca do
				task.wait(0.2)
				goodfarm = getdestroyedtypes()
				gemfarm = tablejewels()
				ServerFurniture = workspace.ServerFurniture
				slotsleft = v_u_6:GetAttribute("slotSpins") > 1
				bankthing = game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash")
				local v649 = v_u_163.CFrame
				local v650, v651, v652 = pairs(ServerFurniture:GetDescendants())
				while true do
					local v653
					v652, v653 = v650(v651, v652)
					if v652 == nil then
						break
					end
					if #bankthing:FindFirstChild("Cash"):GetChildren() == 0 and (v_u_163 and (slotsleft and v653:GetAttribute("furnitureName") == "SlotMachine")) then
						v653:FindFirstChild("Attachment", true).ProximityPrompt.MaxActivationDistance = 40
						repeat
							v_u_163.CFrame = CFrame.new(846.239685, 0.435377538, -919.226746, -0.999359787, 0.0311656408, 0.0175692085, 0.0265386514, 0.975102663, -0.220160127, -0.0239932127, -0.219552919, -0.975305498) * CFrame.new(10, -1.6, -5)
							task.wait()
							fireproximityprompt(v653:FindFirstChild("Attachment", true).ProximityPrompt)
						until v_u_6:GetAttribute("slotSpins") == 0 or getgenv().aclmaca == false
						v_u_163.CFrame = v649
					end
				end
			end
		end
	})
	v647:CreateToggle({
		["Name"] = "BlackMarket QuickSell Method [EQUIP ITEM]",
		["Info"] = "",
		["CurrentValue"] = false,
		["Flag"] = "BM",
		["Callback"] = function(p654)
			-- upvalues: (ref) v_u_12
			getgenv().AutoDealer = p654
			while getgenv().AutoDealer == true do
				selltype = {
					"Dark Matter Gem",
					"Void Gem",
					"Diamond Ring",
					"Diamond",
					"Rollie",
					"Watch",
					"Glock 18",
					"AR-15",
					"Amethyst",
					"Topaz",
					"Emerald",
					"Gold Bar",
					"Sapphire",
					"Ruby",
					"Emerald Ring",
					"Topaz Ring",
					"Amethyst Ring",
					"Sapphire Ring",
					"Ruby Ring",
					"AK-47",
					"Glock",
					"Raygun",
					"Gold AK-47",
					"Gold Deagle",
					"AS Val",
					"AUG",
					"Acid Gun",
					"P90",
					"Raygun",
					"RPK",
					"Sawn Off",
					"Scar L",
					"Saiga 12",
					"Tommy Gun",
					"Double Barrel",
					"Deagle",
					"Dragunov",
					"Flamethrower",
					"M249 SAW",
					"MP7",
					"Minigun",
					"M4A1",
					"Barrett M107",
					"Gravity Gun",
					"Seashell",
					"Blue Seashell",
					"Purple Seashell"
				}
				equippedName = GetEquippedName()
				if GetEquippedName() == selltype[table.find(selltype, GetEquippedName())] then
					fireproximityprompt(workspace.BlackMarket.Dealer.Dealer.ProximityPrompt)
				end
				v_u_12.Heartbeat:Wait()
			end
		end
	})
	v647:CreateToggle({
		["Name"] = "BlackMarket Sell All [NEW 20+ Items Needed]",
		["Info"] = "",
		["CurrentValue"] = false,
		["Flag"] = "BM20",
		["Callback"] = function(p655)
			getgenv().AutoDealer = p655
			while getgenv().AutoDealer == true do
				task.wait(0.3)
				getloc = require(game:GetService("ReplicatedStorage").devv.client.Objects.v3item)
				if getloc and (getloc.inventory and getloc.inventory.ordered) then
					countitems = getloc.inventory.ordered
					if #countitems > 20 then
						sellallitems()
					end
				end
			end
		end
	})
	v647:CreateToggle({
		["Name"] = "Destroy Nearest ATM [FISTS]",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "Autodestroynearatms",
		["Callback"] = function(_)
			-- upvalues: (ref) v_u_12
			getgenv().destroyatm = true
			while getgenv().destroyatm == true do
				DestroyNearestATM()
				v_u_12.Heartbeat:Wait()
			end
		end
	})
	v647:CreateToggle({
		["Name"] = "Auto Open",
		["Info"] = "",
		["CurrentValue"] = false,
		["Flag"] = "Autoopen",
		["Callback"] = function(p656)
			-- upvalues: (ref) v_u_163
			getgenv().AutoRSafe = p656
			while getgenv().AutoRSafe == true do
				task.wait(0.2)
				local v657, v658, v659 = pairs(workspace.BankRobbery:GetDescendants())
				while true do
					local v660
					v659, v660 = v657(v658, v659)
					if v659 == nil then
						break
					end
					if game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash") and game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash"):FindFirstChild("Cash") then
						bankthing = game:GetService("Workspace").BankRobbery:FindFirstChild("BankCash")
						if #bankthing:FindFirstChild("Cash"):GetChildren() > 0 and v660:IsA("ProximityPrompt") then
							fireproximityprompt(v660)
						end
					end
				end
				task.wait()
				local v661, v662, v663 = pairs(workspace.Game.Entities.LargeSafe:GetChildren())
				while true do
					local v664
					v663, v664 = v661(v662, v663)
					if v663 == nil then
						break
					end
					mp = v664.PrimaryPart
					distance = (v_u_163.Position - mp.Position).magnitude
					if v_u_163 and distance <= 45 then
						buyItem("Lockpick")
						if v664:FindFirstChild("ProximityPrompt") then
							fireproximityprompt(v664:FindFirstChild("ProximityPrompt", true))
						end
					end
				end
				task.wait()
				local v665, v666, v667 = pairs(workspace.Game.Entities.MediumSafe:GetChildren())
				while true do
					local v668
					v667, v668 = v665(v666, v667)
					if v667 == nil then
						break
					end
					mp = v668.PrimaryPart
					distance = (v_u_163.Position - mp.Position).magnitude
					if v_u_163 and distance <= 45 then
						buyItem("Lockpick")
						if v668:FindFirstChild("ProximityPrompt", true) then
							fireproximityprompt(v668:FindFirstChild("ProximityPrompt", true))
						end
					end
				end
				task.wait()
				local v669, v670, v671 = pairs(workspace.Game.Entities.SmallSafe:GetChildren())
				while true do
					local v672
					v671, v672 = v669(v670, v671)
					if v671 == nil then
						break
					end
					mp = v672.PrimaryPart
					distance = (v_u_163.Position - mp.Position).magnitude
					if v_u_163 and distance <= 45 then
						buyItem("Lockpick")
						if v672:FindFirstChild("ProximityPrompt", true) then
							fireproximityprompt(v672:FindFirstChild("ProximityPrompt", true))
						end
					end
				end
				openJewelSafes()
				local v673 = workspace.Game.Entities
				local v674, v675, v676 = pairs(v673.LargeChest:GetChildren())
				while true do
					local v677
					v676, v677 = v674(v675, v676)
					if v676 == nil then
						break
					end
					mp = v677.WorldPivot
					distance = (v_u_163.Position - mp.Position).magnitude
					if v_u_163 and distance <= 45 then
						buyItem("Lockpick")
						if v677:FindFirstChild("ProximityPrompt", true) then
							fireproximityprompt(v677:FindFirstChild("ProximityPrompt", true))
						end
					end
				end
				task.wait()
				local v678, v679, v680 = pairs(v673.SmallChest:GetChildren())
				while true do
					local v681
					v680, v681 = v678(v679, v680)
					if v680 == nil then
						break
					end
					mp = v681.WorldPivot
					distance = (v_u_163.Position - mp.Position).magnitude
					if v_u_163 and distance <= 45 then
						buyItem("Lockpick")
						if v681:FindFirstChild("ProximityPrompt", true) then
							fireproximityprompt(v681:FindFirstChild("ProximityPrompt", true))
						end
					end
				end
			end
		end
	})
	v647:CreateToggle({
		["Name"] = "CashAura",
		["CurrentValue"] = false,
		["Flag"] = "caura",
		["Callback"] = function(p682)
			-- upvalues: (ref) v_u_163
			getgenv().cashauraa = p682
			while getgenv().cashauraa == true do
				task.wait()
				local v683, v684, v685 = pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetChildren())
				while true do
					local v686
					v685, v686 = v683(v684, v685)
					if v685 == nil then
						break
					end
					if v686:FindFirstChildOfClass("Part") then
						mp = v686:FindFirstChildOfClass("Part")
						distance = (v_u_163.Position - mp.Position).magnitude
						if v_u_163 and (distance <= 30 and v686:FindFirstChildOfClass("ClickDetector")) then
							fireclickdetector(v686:FindFirstChildOfClass("ClickDetector"))
						end
					end
				end
			end
		end
	})
	v647:CreateToggle({
		["Name"] = "ItemAura",
		["Info"] = "",
		["CurrentValue"] = false,
		["Flag"] = "itemaura",
		["Callback"] = function(p687)
			-- upvalues: (ref) v_u_163
			getgenv().itemau = p687
			pickuptype = {
				"Dark Matter Gem",
				"Void Gem",
				"Diamond Ring",
				"Diamond",
				"Rollie",
				"Watch",
				"Glock 18",
				"AR-15",
				"Amethyst",
				"Topaz",
				"Emerald",
				"Gold Bar",
				"Sapphire",
				"Ruby",
				"Emerald Ring",
				"Topaz Ring",
				"Amethyst Ring",
				"Sapphire Ring",
				"Ruby Ring",
				"AK-47",
				"Glock",
				"Raygun",
				"Gold AK-47",
				"Gold Deagle",
				"AS Val",
				"AUG",
				"Acid Gun",
				"P90",
				"Raygun",
				"RPK",
				"Sawn Off",
				"Scar L",
				"Saiga 12",
				"Tommy Gun",
				"Double Barrel",
				"Deagle",
				"Dragunov",
				"Flamethrower",
				"M249 SAW",
				"MP7",
				"Minigun",
				"M4A1",
				"Barrett M107",
				"Gravity Gun",
				"Gold Lucky Block",
				"Orange Lucky Block",
				"Purple Lucky Block",
				"Green Lucky Block",
				"Red Lucky Block",
				"Blue Lucky Block",
				"Treasure Map",
				"Pearl Necklace",
				"Military Armory Keycard",
				"Police Armory Keycard",
				"Money Printer",
				"RPG",
				"Trident",
				"Gold Crown",
				"Gold Cup",
				"Heavy Vest",
				"Military Vest"
			}
			while getgenv().itemau == true do
				task.wait(0.3)
				allitems = GetItems()
				local v688, v689, v690 = pairs(pickuptype)
				while true do
					local v691
					v690, v691 = v688(v689, v690)
					if v690 == nil then
						break
					end
					local v692, v693, v694 = pairs(allitems)
					while true do
						local v695
						v694, v695 = v692(v693, v694)
						if v694 == nil then
							break
						end
						main = v695:FindFirstChildOfClass("Part")
						mp = v695:FindFirstChild("Part", true) or main
						if main or mp then
							distance = (v_u_163.Position - mp.Position).magnitude
							if v_u_163 and (distance <= 27 and v695:GetAttribute("itemName") == v691) then
								if v695:FindFirstChildOfClass("ClickDetector") then
									fireclickdetector(v695:FindFirstChildOfClass("ClickDetector"))
								elseif v695:FindFirstChildOfClass("Part") then
									maincrap = v695:FindFirstChildOfClass("Part")
									if maincrap then
										fireclickdetector(maincrap:FindFirstChildOfClass("ClickDetector"))
									end
								end
							end
						end
					end
				end
			end
		end
	})
	v647:CreateButton({
		["Name"] = "No Delay ProximityPrompt",
		["Interact"] = "",
		["Callback"] = function()
			local v696, v697, v698 = pairs(game:GetService("Workspace"):GetDescendants())
			while true do
				local v699
				v698, v699 = v696(v697, v698)
				if v698 == nil then
					break
				end
				if v699:IsA("ProximityPrompt") then
					v699.HoldDuration = 0
				end
			end
			game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(p700)
				p700.HoldDuration = 0
			end)
		end
	})
	v647:CreateSection("AutoFarm", true)
	atmmodes = { "AFK", "Regular" }
	v647:CreateDropdown({
		["Name"] = "Select Farm Mode",
		["Options"] = atmmodes,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "atmmodess",
		["Callback"] = function(p701)
			farmmodes = p701
		end
	})
	v647:CreateToggle({
		["Name"] = "Farm Halloween Event",
		["Info"] = "Farms Event",
		["CurrentValue"] = false,
		["Flag"] = "Halloweeneve",
		["Callback"] = function(p702)
			-- upvalues: (ref) v_u_347
			getgenv().farmhallowmobs = p702
			while getgenv().farmhallowmobs == true do
				task.wait(0.1)
				if game:GetService("Workspace"):FindFirstChild("Halloween") then
					hallowalert = workspace.Halloween:GetChildren()
					if #hallowalert > 0 then
						hallowimages = { 11183605264, 6597653340, 91262225685954 }
						v_u_347:Notify({
							["Title"] = "Halloween Event",
							["Content"] = "Destroying all mobs and collecting candy!",
							["Image"] = hallowimages[math.random(3)]
						})
						allmobs = getHalloweenMobs()
						task.spawn(function()
							while getgenv().farmhallowmobs == true do
								task.wait(0.1)
								CollectCandy()
								local v703, v704, v705 = pairs(allmobs)
								while true do
									local v706
									v705, v706 = v703(v704, v705)
									if v705 == nil then
										break
									end
									if v706.PrimaryPart and v706:GetAttribute("health") ~= 0 then
										v706:SetAttribute("health", 0)
									end
								end
							end
						end)
						task.wait(50)
					end
				end
			end
		end
	})
	v647:CreateToggle({
		["Name"] = "Farm ATMS/CashRegisters",
		["Info"] = "Farms ATM",
		["CurrentValue"] = false,
		["Flag"] = "Autorobatm",
		["Callback"] = function(p707)
			getgenv().AutoRobATM = p707
			while getgenv().AutoRobATM == true do
				task.wait(0.02)
				getgenv().farmmode = farmmodes or "Regular"
				if getgenv().AutoRobATM ~= true or getgenv().farmmode ~= "AFK" then
					if getgenv().AutoRobATM == true and getgenv().farmmode == "Regular" then
						ATMFarm()
					end
				else
					ATMFarmAFK()
				end
			end
		end
	})
	v647:CreateToggle({
		["Name"] = "Farm Bank",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "Autorobbank",
		["Callback"] = function(p708)
			getgenv().RobBankk = p708
			while getgenv().RobBankk == true do
				task.wait(0.1)
				getgenv().farmmode = farmmodes or "Regular"
				if getgenv().RobBankk ~= true or getgenv().farmmode ~= "AFK" then
					if getgenv().RobBankk == true and getgenv().farmmode == "Regular" then
						FarmBank()
					end
				else
					FarmBankAFK()
				end
			end
		end
	})
	v647:CreateToggle({
		["Name"] = "Collect TruckCash [Nearest]",
		["CurrentValue"] = false,
		["Flag"] = "farmtruc",
		["Callback"] = function(p709)
			-- upvalues: (ref) v_u_163
			getgenv().autotruck = p709
			while getgenv().autotruck == true do
				task.wait()
				allvehs = getVehicles()
				local v710, v711, v712 = pairs(allvehs)
				while true do
					local v713
					v712, v713 = v710(v711, v712)
					if v712 == nil then
						break
					end
					if v713.PrimaryPart then
						dis = (v_u_163.Position - v713.PrimaryPart.Position).magnitude
						if v713.Name == "Armored Truck" and (v713:FindFirstChild("TruckCash") and (dis <= 10000000 and v713:FindFirstChild("TruckCash"))) then
							fireproximityprompt(v713:FindFirstChild("TruckCash").Main.Attachment.ProximityPrompt)
						end
					end
				end
			end
		end
	})
	v647:CreateToggle({
		["Name"] = "Farm JewelryCases [RARE GEMS]",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "Arrgs",
		["Callback"] = function(p714)
			-- upvalues: (ref) v_u_163, (ref) v_u_276, (ref) v_u_10
			-- block 34
			getgenv().AutoCase = p714
			::l33::
			if getgenv().AutoCase ~= true then
				return
			end
			task.wait(0.1)
			local v715 = GetEquipped()
			local v716 = v_u_163.CFrame
			jewelrycases = allJewelryCases()
			local v717, v718, v719 = pairs(jewelrycases)
			::l4::
			local v_u_720
			v719, v_u_720 = v717(v718, v719)
			if v719 ~= nil then
				local v721, v722
				v721, v722, v725 = pairs(v_u_276)
				goto l6
			end
			goto l33
			::l0::
			goto l14
			::l2::
			goto l6
			::l3::
			goto l12
			::l5::
			goto l9
			::l9::
			goto l2
			::l12::
			dis = (v_u_163.Position - v_u_720:FindFirstChild(v_u_726).PrimaryPart.Position).magnitude
			if v_u_163 and #bankthing:FindFirstChild("Cash"):GetChildren() == 0 then
				goto l16
			end
			goto l6
			::l14::
			goto l3
			::l16::
			if v_u_10.Health <= 50 then
				if v_u_10.Health < 50 then
					v_u_163.CFrame = CFrame.new(823.8939208984375, 83.43997192382812, -146.0994110107422)
					task.wait(10)
				end
				goto l6
			end
			::l18::
			task.wait()
			getCaseGUID = getJewelryGUID()
			if v_u_720:FindFirstChild(v_u_726) then
				v_u_163.CFrame = v_u_720:FindFirstChild(v_u_726).WorldPivot * CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(90), 0, 0)
				equip("Fists")
				task.spawn(function()
					-- upvalues: (ref) v_u_720, (ref) v_u_726
					local v723 = {
						"jewelcase",
						{
							["meleeType"] = "meleepunch",
							["guid"] = getCaseGUID[math.random(1, 2)]
						}
					}
					meleeItemHit(v723)
					if v_u_720:FindFirstChild(v_u_726) then
						fireproximityprompt(v_u_720:FindFirstChild(v_u_726):FindFirstChild("ProximityPrompt", true))
					end
				end)
			end
			if getgenv().AutoCase == false or v_u_720:FindFirstChild(v_u_726) == nil then
				goto l25
			else
				goto l18
			end
			::l25::
			task.wait(0.2)
			local v724 = TweenInfo.new(0.09, Enum.EasingStyle.Linear)
			game:GetService("TweenService"):Create(v_u_163, v724, {
				["CFrame"] = v716
			}):Play()
			equip(v715)
			::l6::
			local v725, v_u_726 = v721(v722, v725)
			if v725 == nil then
				goto l32
			end
			if not game:GetService("Workspace"):FindFirstChild("BankRobbery") then
				goto l6
			end
			bankthing = game:GetService("Workspace").BankRobbery:WaitForChild("BankCash")
			if v_u_720:FindFirstChild(v_u_726) then
				goto l0
			else
				goto l5
			end
			::l32::
			goto l4
		end
	})
	v647:CreateToggle({
		["Name"] = "Farm JewelryCases [ALL GEMS]",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "Aroballgems",
		["Callback"] = function(p727)
			-- upvalues: (ref) v_u_163, (ref) v_u_275, (ref) v_u_10
			-- block 34
			getgenv().AutoCaseAll = p727
			::l33::
			if getgenv().AutoCaseAll ~= true then
				return
			end
			task.wait(0.1)
			goodfarm = getdestroyedtypes()
			local v728 = GetEquipped()
			local v729 = v_u_163.CFrame
			jewelrycases = allJewelryCases()
			local v730, v731, v732 = pairs(jewelrycases)
			::l4::
			local v733
			v732, v733 = v730(v731, v732)
			if v732 ~= nil then
				local v734, v735
				v734, v735, v738 = pairs(v_u_275)
				goto l6
			end
			goto l33
			::l0::
			goto l2
			::l2::
			goto l3
			::l3::
			goto l9
			::l5::
			goto l0
			::l9::
			bankthing = game:GetService("Workspace").BankRobbery:WaitForChild("BankCash")
			if v733:FindFirstChild(v739) and v_u_163 and #bankthing:FindFirstChild("Cash"):GetChildren() == 0 then
				goto l15
			end
			goto l6
			::l13::
			goto l6
			::l15::
			if v_u_10.Health <= 50 then
				if v_u_10.Health < 50 then
					v_u_163.CFrame = CFrame.new(823.8939208984375, 83.43997192382812, -146.0994110107422)
					task.wait(10)
				end
				goto l6
			end
			::l17::
			task.wait()
			getCaseGUID = getJewelryGUIDALL()
			if v733:FindFirstChild(v739) then
				v_u_163.CFrame = v733:FindFirstChild(v739).WorldPivot * CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(90), 0, 0)
				equip("Fists")
				local v736 = {
					"jewelcase",
					{
						["meleeType"] = "meleepunch",
						["guid"] = getCaseGUID[math.random(1, 2)]
					}
				}
				meleeItemHit(v736)
				if v733:FindFirstChild(v739) then
					fireproximityprompt(v733:FindFirstChild(v739):FindFirstChild("ProximityPrompt", true))
				end
			end
			if getgenv().AutoCaseAll == false or v733:FindFirstChild(v739) == nil then
				goto l26
			else
				goto l17
			end
			::l20::
			goto l4
			::l23::
			goto l25
			::l25::
			goto l13
			::l26::
			task.wait(0.2)
			local v737 = TweenInfo.new(0.09, Enum.EasingStyle.Linear)
			game:GetService("TweenService"):Create(v_u_163, v737, {
				["CFrame"] = v729
			}):Play()
			equip(v728)
			::l6::
			local v738, v739 = v734(v735, v738)
			if v738 == nil then
				goto l20
			end
			if game:GetService("Workspace"):FindFirstChild("BankRobbery") then
				goto l5
			else
				goto l23
			end
		end
	})
	v647:CreateToggle({
		["Name"] = "CashFarm [200+]",
		["CurrentValue"] = false,
		["Flag"] = "cashfarm",
		["Callback"] = function(p740)
			-- upvalues: (ref) v_u_163
			-- block 32
			getgenv().CashFarm = p740
			::l31::
			if getgenv().CashFarm ~= true then
				return
			end
			task.wait(0.2)
			gemfarm = tablejewels()
			local v741 = GetBundles()
			local v742 = v_u_163.CFrame
			local v743 = GetCash()
			local v744, v745, v746 = pairs(v743)
			goto l4
			::l2::
			goto l9
			::l3::
			goto l27
			::l9::
			dis = (v_u_163.Position - v747.PrimaryPart.Position).magnitude
			if #v741:FindFirstChild("Cash"):GetChildren() == 0 and (v_u_163 and v747:FindFirstChildWhichIsA("IntValue").Value > 300) then
				goto l15
			end
			goto l4
			::l15::
			task.wait()
			v741 = GetBundles()
			if v747.PrimaryPart and (#v741:FindFirstChild("Cash"):GetChildren() == 0 and (v_u_163 and v747:FindFirstChildWhichIsA("IntValue").Value > 300)) then
				TweenTeleport(v747.WorldPivot)
				cashpickup()
			end
			if getgenv().CashFarm ~= false and v747.PrimaryPart then
				goto l15
			end
			task.wait()
			TweenTeleport(v742)
			::l4::
			local v747
			v746, v747 = v744(v745, v746)
			if v746 == nil then
				goto l31
			end
			if v747.PrimaryPart and v747:FindFirstChildWhichIsA("IntValue") then
				goto l3
			else
				goto l18
			end
			::l18::
			goto l4
			::l27::
			goto l2
		end
	})
	v647:CreateToggle({
		["Name"] = "Farm Treasure",
		["CurrentValue"] = false,
		["Flag"] = "ftres",
		["Callback"] = function(p748)
			-- upvalues: (ref) v_u_163
			-- block 26
			getgenv().treasfa = p748
			::l25::
			if getgenv().treasfa ~= true then
				return
			end
			task.wait(0.1)
			amountt = getTreasure()
			equippedName = GetEquippedName()
			local v749 = v_u_163.CFrame
			local v750 = workspace.Game.Local.Debris
			local v751, v752, v753 = pairs(v750:GetChildren())
			::l4::
			::l2::
			::l9::
			task.wait()
			if equippedName == "Treasure Map" and #amountt > 0 then
				goto = v754.CFrame
				new_CFrame = goto
				ts = game:GetService("TweenService")
				part = v_u_163
				ti = TweenInfo.new(0.01, Enum.EasingStyle.Linear)
				tp = {
					["CFrame"] = new_CFrame
				}
				tstime = ts:Create(part, ti, tp)
				tstime:Play()
				if v754:FindFirstChild("ProximityPrompt", true) then
					fireproximityprompt(v754:FindFirstChild("ProximityPrompt", true))
					cashpickup()
				end
			end
			if getgenv().treasfa == false or (not v754:FindFirstChild("ProximityPrompt", true) or #amountt == 0) then
				goto l19
			else
				goto l9
			end
			::l19::
			v_u_163.CFrame = v749
			::l4::
			local v754
			v753, v754 = v751(v752, v753)
			if v753 == nil then
				goto l25
			end
			if equippedName ~= "Treasure Map" or #amountt <= 0 then
				goto l11
			else
				goto l4
			end
			::l11::
			::l3::
			goto l4
		end
	})
	v647:CreateToggle({
		["Name"] = "Farm Weight ",
		["CurrentValue"] = false,
		["Flag"] = "weightf",
		["Callback"] = function(p755)
			getgenv().liftweight = p755
			while getgenv().liftweight == true do
				task.wait()
				equippedName = GetEquippedName()
				if equippedName == "Dumbell" then
					liftDumbell()
				end
			end
		end
	})
	local v756 = v336:CreateTab("Item AutoFarm", 713512637)
	local v_u_757 = GetItems()
	v756:CreateToggle({
		["Name"] = "Treasure Items",
		["CurrentValue"] = false,
		["Flag"] = "farmmap",
		["Callback"] = function(p758)
			-- upvalues: (ref) v_u_163, (ref) v_u_757
			getgenv().tremap = p758
			while true do
				if getgenv().tremap ~= true then
					return
				end
				task.wait(0.3)
				mappsss = {
					"Treasure Map",
					"Pearl Necklace",
					"Seashell",
					"Purple Seashell",
					"Blue Seashell"
				}
				local v759 = v_u_163.CFrame
				v_u_757 = GetItems()
				local v760, v761, v762 = pairs(mappsss)
				while true do
					local v763
					v762, v763 = v760(v761, v762)
					if v762 == nil then
						break
					end
					local v764, v765, v766 = pairs(v_u_757)
					while true do
						local v767
						v766, v767 = v764(v765, v766)
						if v766 == nil then
							break
						end
						if v_u_163 and v767:GetAttribute("itemName") == v763 then
							if v767.PrimaryPart then
								while true do
									task.wait()
									if v767.PrimaryPart then
										TweenTeleport(v767.PrimaryPart.CFrame)
										Collect(v767)
									end
									if getgenv().tremap == false or not v767.PrimaryPart then
										goto l14
									end
								end
							end
							::l14::
							task.wait(0.1)
							v_u_163.CFrame = v759
						end
					end
				end
			end
		end
	})
	v756:CreateToggle({
		["Name"] = "Component Boxes",
		["CurrentValue"] = false,
		["Flag"] = "compboxy",
		["Callback"] = function(p768)
			-- upvalues: (ref) v_u_757, (ref) v_u_163
			getgenv().cboxxx = p768
			while true do
				if getgenv().cboxxx ~= true then
					return
				end
				task.wait(0.3)
				v_u_757 = GetItems()
				local v769 = v_u_163.CFrame
				local v770, v771, v772 = pairs(v_u_757)
				while true do
					local v773
					v772, v773 = v770(v771, v772)
					if v772 == nil then
						break
					end
					if v_u_163 and v773:GetAttribute("itemName") == "Component Box" then
						if v773.PrimaryPart then
							while true do
								task.wait()
								if v773.PrimaryPart then
									TweenTeleport(v773.PrimaryPart.CFrame)
									Collect(v773)
								end
								if getgenv().cboxxx == false or not v773.PrimaryPart then
									goto l12
								end
							end
						end
						::l12::
						task.wait(0.1)
						v_u_163.CFrame = v769
					end
				end
			end
		end
	})
	v756:CreateToggle({
		["Name"] = "Gold Guns",
		["CurrentValue"] = false,
		["Flag"] = "goldak",
		["Callback"] = function(p774)
			-- upvalues: (ref) v_u_163, (ref) v_u_757
			getgenv().akks = p774
			while true do
				if getgenv().akks ~= true then
					return
				end
				task.wait(0.3)
				goldguns = { "Gold AK-47", "Gold Deagle" }
				local v775 = v_u_163.CFrame
				v_u_757 = GetItems()
				local v776, v777, v778 = pairs(goldguns)
				while true do
					local v779
					v778, v779 = v776(v777, v778)
					if v778 == nil then
						break
					end
					local v780, v781, v782 = pairs(v_u_757)
					while true do
						local v783
						v782, v783 = v780(v781, v782)
						if v782 == nil then
							break
						end
						if v_u_163 and v783:GetAttribute("itemName") == v779 then
							if v783.PrimaryPart then
								while true do
									task.wait()
									if v783.PrimaryPart then
										TweenTeleport(v783.PrimaryPart.CFrame)
										Collect(v783)
									end
									if getgenv().akks == false or not v783.PrimaryPart then
										goto l14
									end
								end
							end
							::l14::
							task.wait(0.1)
							v_u_163.CFrame = v775
						end
					end
				end
			end
		end
	})
	v756:CreateToggle({
		["Name"] = "Presents/LuckyBlocks",
		["CurrentValue"] = false,
		["Flag"] = "medpres",
		["Callback"] = function(p784)
			-- upvalues: (ref) v_u_163, (ref) v_u_757
			getgenv().medpres = p784
			while true do
				if getgenv().medpres ~= true then
					return
				end
				task.wait(0.3)
				gemfarm = tablejewels()
				presentss = {
					"Small Present",
					"Medium Present",
					"Large Present",
					"Gold Lucky Block",
					"Orange Lucky Block",
					"Purple Lucky Block",
					"Green Lucky Block",
					"Red Lucky Block",
					"Blue Lucky Block"
				}
				local v785 = v_u_163.CFrame
				v_u_757 = GetItems()
				local v786, v787, v788 = pairs(presentss)
				while true do
					local v789
					v788, v789 = v786(v787, v788)
					if v788 == nil then
						break
					end
					local v790, v791, v792 = pairs(v_u_757)
					while true do
						local v793
						v792, v793 = v790(v791, v792)
						if v792 == nil then
							break
						end
						if v_u_163 and v793:GetAttribute("itemName") == v789 then
							if v793.PrimaryPart then
								while true do
									task.wait()
									if v793.PrimaryPart then
										TweenTeleport(v793.PrimaryPart.CFrame)
										Collect(v793)
									end
									if getgenv().medpres == false or not v793.PrimaryPart then
										goto l14
									end
								end
							end
							::l14::
							task.wait(0.1)
							v_u_163.CFrame = v785
						end
					end
				end
			end
		end
	})
	v756:CreateToggle({
		["Name"] = "Rarest Gems",
		["CurrentValue"] = false,
		["Flag"] = "diaring",
		["Callback"] = function(p794)
			-- upvalues: (ref) v_u_163, (ref) v_u_757
			getgenv().dring = p794
			while true do
				if getgenv().dring ~= true then
					return
				end
				task.wait(0.2)
				diamondtype = {
					"Diamond",
					"Diamond Ring",
					"Diamond Ore",
					"Rollie",
					"Dark Matter Gem",
					"Void Gem",
					"Gold Cup",
					"Gold Crown"
				}
				local v795 = v_u_163.CFrame
				v_u_757 = GetItems()
				local v796, v797, v798 = pairs(diamondtype)
				while true do
					local v799
					v798, v799 = v796(v797, v798)
					if v798 == nil then
						break
					end
					local v800, v801, v802 = pairs(v_u_757)
					while true do
						local v803
						v802, v803 = v800(v801, v802)
						if v802 == nil then
							break
						end
						if v_u_163 and v803:GetAttribute("itemName") == v799 then
							if v803.PrimaryPart then
								while true do
									task.wait()
									if v803.PrimaryPart then
										TweenTeleport(v803.PrimaryPart.CFrame)
										Collect(v803)
									end
									if getgenv().dring == false or not v803.PrimaryPart then
										goto l14
									end
								end
							end
							::l14::
							task.wait(0.1)
							v_u_163.CFrame = v795
						end
					end
				end
			end
		end
	})
	balloontype = {
		"Dollar Balloon",
		"Candy Cane",
		"Easter Basket",
		"Diamond Glock",
		"Clover Balloon",
		"Heart Balloon",
		"Ghost Balloon",
		"Nuke Case",
		"NextBot Grenade",
		"Pulse Rifle",
		"Trident",
		"El Fuego"
	}
	v756:CreateToggle({
		["Name"] = "Very Rare Items",
		["CurrentValue"] = false,
		["Flag"] = "rareitemzss",
		["Callback"] = function(p804)
			-- upvalues: (ref) v_u_163, (ref) v_u_757
			getgenv().balloony = p804
			while true do
				if getgenv().balloony ~= true then
					return
				end
				task.wait(0.3)
				local v805 = v_u_163.CFrame
				v_u_757 = GetItems()
				local v806, v807, v808 = pairs(balloontype)
				while true do
					local v809
					v808, v809 = v806(v807, v808)
					if v808 == nil then
						break
					end
					local v810, v811, v812 = pairs(v_u_757)
					while true do
						local v813
						v812, v813 = v810(v811, v812)
						if v812 == nil then
							break
						end
						if v_u_163 and v813:GetAttribute("itemName") == v809 then
							if v813.PrimaryPart then
								while true do
									task.wait()
									if v813.PrimaryPart then
										TweenTeleport(v813.PrimaryPart.CFrame)
										Collect(v813)
									end
									if getgenv().balloony == false or not v813.PrimaryPart then
										goto l14
									end
								end
							end
							::l14::
							task.wait(0.1)
							v_u_163.CFrame = v805
						end
					end
				end
			end
		end
	})
	v756:CreateToggle({
		["Name"] = "Blue Card",
		["CurrentValue"] = false,
		["Flag"] = "bluecard",
		["Callback"] = function(p814)
			-- upvalues: (ref) v_u_163, (ref) v_u_757
			getgenv().policak = p814
			while true do
				if getgenv().policak ~= true then
					return
				end
				task.wait(0.3)
				gemfarm = tablejewels()
				local v815 = v_u_163.CFrame
				v_u_757 = GetItems()
				local v816, v817, v818 = pairs(v_u_757)
				while true do
					local v819
					v818, v819 = v816(v817, v818)
					if v818 == nil then
						break
					end
					if v_u_163 and v819:GetAttribute("itemName") == "Police Armory Keycard" then
						if v819.PrimaryPart then
							while true do
								task.wait()
								if v819.PrimaryPart then
									TweenTeleport(v819.PrimaryPart.CFrame)
									Collect(v819)
								end
								if getgenv().policak == false or not v819.PrimaryPart then
									goto l12
								end
							end
						end
						::l12::
						task.wait(0.1)
						v_u_163.CFrame = v815
					end
				end
			end
		end
	})
	v756:CreateToggle({
		["Name"] = "Red Card",
		["CurrentValue"] = false,
		["Flag"] = "redcard",
		["Callback"] = function(p820)
			-- upvalues: (ref) v_u_163, (ref) v_u_757
			getgenv().milark = p820
			while true do
				if getgenv().milark ~= true then
					return
				end
				task.wait(0.3)
				local v821 = v_u_163.CFrame
				v_u_757 = GetItems()
				local v822, v823, v824 = pairs(v_u_757)
				while true do
					local v825
					v824, v825 = v822(v823, v824)
					if v824 == nil then
						break
					end
					if v_u_163 and v825:GetAttribute("itemName") == "Military Armory Keycard" then
						if v825.PrimaryPart then
							while true do
								task.wait()
								if v825.PrimaryPart then
									TweenTeleport(v825.PrimaryPart.CFrame)
									Collect(v825)
								end
								if getgenv().milark == false or not v825.PrimaryPart then
									goto l12
								end
							end
						end
						::l12::
						task.wait(0.1)
						v_u_163.CFrame = v821
					end
				end
			end
		end
	})
	v756:CreateToggle({
		["Name"] = "Money Printer",
		["CurrentValue"] = false,
		["Flag"] = "printerf",
		["Callback"] = function(p826)
			-- upvalues: (ref) v_u_163, (ref) v_u_757
			getgenv().Mprinter = p826
			while true do
				if getgenv().Mprinter ~= true then
					return
				end
				task.wait(0.3)
				local v827 = v_u_163.CFrame
				v_u_757 = GetItems()
				local v828, v829, v830 = pairs(v_u_757)
				while true do
					local v831
					v830, v831 = v828(v829, v830)
					if v830 == nil then
						break
					end
					if v_u_163 and v831:GetAttribute("itemName") == "Money Printer" then
						if v831.PrimaryPart then
							while true do
								task.wait()
								if v831.PrimaryPart then
									TweenTeleport(v831.PrimaryPart.CFrame)
									Collect(v831)
								end
								if getgenv().Mprinter == false or not v831.PrimaryPart then
									goto l12
								end
							end
						end
						::l12::
						task.wait(0.1)
						v_u_163.CFrame = v827
					end
				end
			end
		end
	})
	v756:CreateToggle({
		["Name"] = "Gold Bar",
		["CurrentValue"] = false,
		["Flag"] = "goldbarf",
		["Callback"] = function(p832)
			-- upvalues: (ref) v_u_163, (ref) v_u_757
			getgenv().gbarr = p832
			while true do
				if getgenv().gbarr ~= true then
					return
				end
				task.wait(0.3)
				local v833 = v_u_163.CFrame
				v_u_757 = GetItems()
				local v834, v835, v836 = pairs(v_u_757)
				while true do
					local v837
					v836, v837 = v834(v835, v836)
					if v836 == nil then
						break
					end
					if v_u_163 and v837:GetAttribute("itemName") == "Gold Bar" then
						if v837.PrimaryPart then
							while true do
								task.wait()
								if v837.PrimaryPart then
									TweenTeleport(v837.PrimaryPart.CFrame)
									Collect(v837)
								end
								if getgenv().gbarr == false or not v837.PrimaryPart then
									goto l12
								end
							end
						end
						::l12::
						task.wait(0.1)
						v_u_163.CFrame = v833
					end
				end
			end
		end
	})
	v756:CreateToggle({
		["Name"] = "BoomBox",
		["CurrentValue"] = false,
		["Flag"] = "boomboxf",
		["Callback"] = function(p838)
			-- upvalues: (ref) v_u_163, (ref) v_u_757
			getgenv().boombox = p838
			while true do
				if getgenv().boombox ~= true then
					return
				end
				task.wait(0.3)
				local v839 = v_u_163.CFrame
				v_u_757 = GetItems()
				local v840, v841, v842 = pairs(v_u_757)
				while true do
					local v843
					v842, v843 = v840(v841, v842)
					if v842 == nil then
						break
					end
					if v_u_163 and v843:GetAttribute("itemName") == "Boombox" then
						if v843.PrimaryPart then
							while true do
								task.wait()
								if v843.PrimaryPart then
									TweenTeleport(v843.PrimaryPart.CFrame)
									Collect(v843)
								end
								if getgenv().boombox == false or not v843.PrimaryPart then
									goto l12
								end
							end
						end
						::l12::
						task.wait(0.1)
						v_u_163.CFrame = v839
					end
				end
			end
		end
	})
	v756:CreateToggle({
		["Name"] = "Vehicle Keys",
		["CurrentValue"] = false,
		["Flag"] = "cruiserk",
		["Callback"] = function(p844)
			-- upvalues: (ref) v_u_163, (ref) v_u_757
			getgenv().crkey = p844
			while true do
				if getgenv().crkey ~= true then
					return
				end
				task.wait(0.3)
				keyssz = {
					"Mustang Key",
					"Cruiser Key",
					"Helicopter Key",
					"Airdrop Marker"
				}
				local v845 = v_u_163.CFrame
				v_u_757 = GetItems()
				local v846, v847, v848 = pairs(keyssz)
				while true do
					local v849
					v848, v849 = v846(v847, v848)
					if v848 == nil then
						break
					end
					local v850, v851, v852 = pairs(v_u_757)
					while true do
						local v853
						v852, v853 = v850(v851, v852)
						if v852 == nil then
							break
						end
						if v_u_163 and v853:GetAttribute("itemName") == v849 then
							if v853.PrimaryPart then
								while true do
									task.wait()
									if v853.PrimaryPart then
										TweenTeleport(v853.PrimaryPart.CFrame)
										Collect(v853)
									end
									if getgenv().crkey == false or not v853.PrimaryPart then
										goto l14
									end
								end
							end
							::l14::
							task.wait(0.1)
							v_u_163.CFrame = v845
						end
					end
				end
			end
		end
	})
	local v854 = v336:CreateTab("Notifications", 17328930401)
	v854:CreateLabel("Bank & Jewelry")
	v854:CreateToggle({
		["Name"] = "BankReset",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "notifbank",
		["Callback"] = function(p855)
			-- upvalues: (ref) v_u_347, (ref) v_u_6, (ref) v_u_163
			getgenv().BankNotif = p855
			while getgenv().BankNotif == true do
				task.wait(0.6)
				local v_u_856 = workspace.BankRobbery:WaitForChild("BankCash")
				local v_u_857 = game:GetService("Workspace"):WaitForChild("BankRobbery"):WaitForChild("BankCash"):WaitForChild("Main")
				if #v_u_856:WaitForChild("Cash"):GetChildren() > 0 then
					v_u_347:Notify({
						["Title"] = "The Bank Safe Has Reset!",
						["Content"] = "",
						["Duration"] = 2,
						["Image"] = 14219740649,
						["Actions"] = {
							["Ignore"] = {
								["Name"] = "Ignore",
								["Callback"] = function() end
							},
							{
								["Name"] = "TP",
								["Callback"] = function()
									-- upvalues: (ref) v_u_6, (ref) v_u_163, (ref) v_u_856, (ref) v_u_857
									local v858 = v_u_6.Character.HumanoidRootPart.CFrame
									if v_u_163 and #v_u_856:WaitForChild("Cash"):GetChildren() > 0 then
										while true do
											local v859 = v_u_857.CFrame * CFrame.new(0, -2.7, -1) * CFrame.Angles(math.rad(90), 0, 0)
											local v860 = TweenInfo.new(0, Enum.EasingStyle.Linear)
											local v861 = game:GetService("TweenService"):Create(v_u_163, v860, {
												["CFrame"] = v859
											})
											task.wait()
											local v862, v863, v864 = pairs(workspace:WaitForChild("BankRobbery"):GetDescendants())
											while true do
												local v865
												v864, v865 = v862(v863, v864)
												if v864 == nil then
													break
												end
												if v865:IsA("ProximityPrompt") then
													fireproximityprompt(v865)
												end
											end
											v861:Play()
											if #v_u_856:WaitForChild("Cash"):GetChildren() == 0 or getgenv().BankNotif == false then
												task.wait(0.5)
												local v866 = TweenInfo.new(0.02, Enum.EasingStyle.Linear)
												game:GetService("TweenService"):Create(v_u_163, v866, {
													["CFrame"] = v858
												}):Play()
												goto l3
											end
										end
									else
										::l3::
										return
									end
								end
							}
						}
					})
					task.wait(156)
				end
			end
		end
	})
	v854:CreateToggle({
		["Name"] = "JewelReset",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "JewelNotif",
		["Callback"] = function(p867)
			-- upvalues: (ref) v_u_347
			getgenv().RobJewNot = p867
			while getgenv().RobJewNot == true do
				task.wait(0.6)
				gem = game:GetService("Workspace").GemRobbery:WaitForChild("Rubble")
				if #gem:GetChildren() > 0 then
					v_u_347:Notify({
						["Title"] = "The Jewelry Safe Has Reset!",
						["Content"] = "",
						["Duration"] = 2,
						["Image"] = 713512637,
						["Actions"] = {
							["Ignore"] = {
								["Name"] = "Ignore",
								["Callback"] = function() end
							},
							{
								["Name"] = "TP",
								["Callback"] = function()
									TweenTeleport(workspace.ItemsOnSale["Bundle of TNT"].TouchDetector.CFrame * CFrame.new(0, 0, 1))
									buyItem("Bundle of TNT")
								end
							}
						}
					})
					wait(240)
				end
			end
		end
	})
	v854:CreateLabel("Chests")
	v854:CreateToggle({
		["Name"] = "SmallChest Spawn",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "SmallChestNotif",
		["Callback"] = function(p868)
			-- upvalues: (ref) v_u_347, (ref) v_u_163
			getgenv().SmallChest = p868
			while getgenv().SmallChest == true do
				task.wait(0.6)
				schest = game:GetService("Workspace").Game.Entities.SmallChest
				local v869, v870, v871 = pairs(schest:GetChildren())
				while true do
					local v_u_872
					v871, v_u_872 = v869(v870, v871)
					if v871 == nil then
						break
					end
					if v_u_872.PrimaryPart then
						v_u_347:Notify({
							["Title"] = "SmallChest Spawned!",
							["Content"] = "",
							["Duration"] = 2,
							["Image"] = 970263355,
							["Actions"] = {
								["Ignore"] = {
									["Name"] = "Ignore",
									["Callback"] = function() end
								},
								{
									["Name"] = "TP",
									["Callback"] = function()
										-- upvalues: (ref) v_u_872, (ref) v_u_163
										TweenTeleport(v_u_872.PrimaryPart.CFrame)
										local v873, v874, v875 = pairs(schest:GetChildren())
										while true do
											local v876
											v875, v876 = v873(v874, v875)
											if v875 == nil then
												break
											end
											mp = v876.WorldPivot
											distance = (v_u_163.Position - mp.Position).magnitude
											if v_u_163 and distance <= 20 then
												buyItem("Lockpick")
												if v876:FindFirstChild("ProximityPrompt", true) then
													fireproximityprompt(v876:FindFirstChild("ProximityPrompt", true))
												end
											end
										end
									end
								}
							}
						})
						wait(90)
					end
				end
			end
		end
	})
	v854:CreateToggle({
		["Name"] = "LargeChest Spawn",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "LargeChestNotif",
		["Callback"] = function(p877)
			-- upvalues: (ref) v_u_347
			getgenv().lcns = p877
			while getgenv().lcns == true do
				task.wait(0.6)
				lchest = game:GetService("Workspace").Game.Entities.LargeChest
				local v878, v879, v880 = pairs(lchest:GetChildren())
				while true do
					local v_u_881
					v880, v_u_881 = v878(v879, v880)
					if v880 == nil then
						break
					end
					if v_u_881.PrimaryPart then
						v_u_347:Notify({
							["Title"] = "LargeChest Spawned!",
							["Content"] = "",
							["Duration"] = 2,
							["Image"] = 970263355,
							["Actions"] = {
								["Ignore"] = {
									["Name"] = "Ignore",
									["Callback"] = function() end
								},
								{
									["Name"] = "TP",
									["Callback"] = function()
										-- upvalues: (ref) v_u_881
										if v_u_881.PrimaryPart then
											TweenTeleport(v_u_881.PrimaryPart.CFrame)
										end
									end
								}
							}
						})
						wait(90)
					end
				end
			end
		end
	})
	v854:CreateLabel("Safes")
	v854:CreateToggle({
		["Name"] = "SmallSafe Spawn",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "SmallSafeNotif",
		["Callback"] = function(p882)
			-- upvalues: (ref) v_u_347, (ref) v_u_163
			getgenv().ssns = p882
			while getgenv().ssns == true do
				task.wait(0.6)
				ss = game:GetService("Workspace").Game.Entities.SmallSafe
				local v883, v884, v885 = pairs(ss:GetChildren())
				while true do
					local v_u_886
					v885, v_u_886 = v883(v884, v885)
					if v885 == nil then
						break
					end
					if v_u_886.PrimaryPart then
						v_u_347:Notify({
							["Title"] = "Small Safe Spawned!",
							["Content"] = "",
							["Duration"] = 2,
							["Image"] = 12525009855,
							["Actions"] = {
								["Ignore"] = {
									["Name"] = "Ignore",
									["Callback"] = function() end
								},
								{
									["Name"] = "TP",
									["Callback"] = function()
										-- upvalues: (ref) v_u_886, (ref) v_u_163
										TweenTeleport(v_u_886.PrimaryPart.CFrame)
										task.wait(0.7)
										local v887, v888, v889 = pairs(workspace.Game.Entities.SmallSafe:GetChildren())
										while true do
											local v_u_890
											v889, v_u_890 = v887(v888, v889)
											if v889 == nil then
												break
											end
											mp = v_u_890.WorldPivot
											distance = (v_u_163.Position - mp.Position).magnitude
											if v_u_163 and distance <= 23 then
												buyItem("Lockpick")
												pcall(function()
													-- upvalues: (ref) v_u_890
													local v891 = v_u_890
													fireproximityprompt(v891:FindFirstChild("ProximityPrompt", true))
												end)
											end
										end
									end
								}
							}
						})
						wait(200)
					end
				end
			end
		end
	})
	v854:CreateToggle({
		["Name"] = "MediumSafe Spawn",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "MediumSafeNotif",
		["Callback"] = function(p892)
			-- upvalues: (ref) v_u_347, (ref) v_u_163
			getgenv().msns = p892
			while getgenv().msns == true do
				task.wait(0.6)
				ms = game:GetService("Workspace").Game.Entities.MediumSafe
				local v893, v894, v895 = pairs(ms:GetChildren())
				while true do
					local v896
					v895, v896 = v893(v894, v895)
					if v895 == nil then
						break
					end
					if v896.PrimaryPart then
						v_u_347:Notify({
							["Title"] = "Medium Safe Spawned!",
							["Content"] = "",
							["Duration"] = 5,
							["Image"] = 12525009855,
							["Actions"] = {
								["Ignore"] = {
									["Name"] = "Ignore",
									["Callback"] = function() end
								},
								{
									["Name"] = "TP",
									["Callback"] = function()
										-- upvalues: (ref) v_u_163
										TweenTeleport(ms.MediumSafe.WorldPivot)
										task.wait(0.7)
										local v897, v898, v899 = pairs(workspace.Game.Entities.MediumSafe:GetChildren())
										while true do
											local v_u_900
											v899, v_u_900 = v897(v898, v899)
											if v899 == nil then
												break
											end
											mp = v_u_900.WorldPivot
											distance = (v_u_163.Position - mp.Position).magnitude
											if v_u_163 and distance <= 23 then
												buyItem("Lockpick")
												pcall(function()
													-- upvalues: (ref) v_u_900
													local v901 = v_u_900
													fireproximityprompt(v901:FindFirstChild("ProximityPrompt", true))
												end)
											end
										end
									end
								}
							}
						})
						wait(200)
					end
				end
			end
		end
	})
	v854:CreateToggle({
		["Name"] = "LargeSafe Spawn",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "LargeSafeNotif",
		["Callback"] = function(p902)
			-- upvalues: (ref) v_u_347, (ref) v_u_163
			getgenv().lsns = p902
			while getgenv().lsns == true do
				task.wait(0.6)
				ls = game:GetService("Workspace").Game.Entities.LargeSafe
				local v903, v904, v905 = pairs(ls:GetChildren())
				while true do
					local v906
					v905, v906 = v903(v904, v905)
					if v905 == nil then
						break
					end
					if v906.PrimaryPart then
						v_u_347:Notify({
							["Title"] = "Large Safe Spawned!",
							["Content"] = "",
							["Duration"] = 2,
							["Image"] = 12525009855,
							["Actions"] = {
								["Ignore"] = {
									["Name"] = "Ignore",
									["Callback"] = function() end
								},
								{
									["Name"] = "TP",
									["Callback"] = function()
										-- upvalues: (ref) v_u_163
										TweenTeleport(ls.LargeSafe.WorldPivot)
										task.wait(0.7)
										local v907, v908, v909 = pairs(workspace.Game.Entities.LargeSafe:GetChildren())
										while true do
											local v_u_910
											v909, v_u_910 = v907(v908, v909)
											if v909 == nil then
												break
											end
											mp = v_u_910.WorldPivot
											distance = (v_u_163.Position - mp.Position).magnitude
											if v_u_163 and distance <= 23 then
												buyItem("Lockpick")
												pcall(function()
													-- upvalues: (ref) v_u_910
													local v911 = v_u_910
													fireproximityprompt(v911:FindFirstChild("ProximityPrompt", true))
												end)
											end
										end
									end
								}
							}
						})
						wait(200)
					end
				end
			end
		end
	})
	v854:CreateLabel("Airdrops")
	v854:CreateToggle({
		["Name"] = "Airdrop Spawn",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "AirdropNotif",
		["Callback"] = function(p912)
			-- upvalues: (ref) v_u_163, (ref) v_u_347
			getgenv().airdropn = p912
			while getgenv().airdropn == true do
				task.wait(0.6)
				local _ = v_u_163.CFrame
				adn = game:GetService("Workspace").Game.Airdrops
				if #adn:GetChildren() > 0 then
					v_u_347:Notify({
						["Title"] = "Airdrop Has Spawned!",
						["Content"] = "",
						["Duration"] = 2,
						["Image"] = 6462872654,
						["Actions"] = {
							["Ignore"] = {
								["Name"] = "Ignore",
								["Callback"] = function() end
							},
							{
								["Name"] = "TP",
								["Callback"] = function()
									TweenTeleport(adn.Airdrop.WorldPivot)
								end
							}
						}
					})
					wait(246)
				end
			end
		end
	})
	v854:CreateLabel("Rare Ores")
	v854:CreateToggle({
		["Name"] = "Rare Ore Spawn",
		["Info"] = "Auto",
		["CurrentValue"] = false,
		["Flag"] = "DiamondOreNotif",
		["Callback"] = function(p913)
			-- upvalues: (ref) v_u_347
			getgenv().dore = p913
			oresss = { "Diamond Ore", "Gold Ore" }
			while getgenv().dore == true do
				task.wait(0.6)
				local v914, v915, v916 = pairs(oresss)
				while true do
					local v917
					v916, v917 = v914(v915, v916)
					if v916 == nil then
						break
					end
					local v918, v919, v920 = pairs(workspace.Rocks:GetChildren())
					while true do
						local v_u_921
						v920, v_u_921 = v918(v919, v920)
						if v920 == nil then
							break
						end
						if v_u_921:GetAttribute("oreName") == v917 then
							v_u_347:Notify({
								["Title"] = "Rare Ore Spawned!",
								["Content"] = "",
								["Duration"] = 2,
								["Image"] = 713512637,
								["Actions"] = {
									["Ignore"] = {
										["Name"] = "Ignore",
										["Callback"] = function() end
									},
									{
										["Name"] = "TP",
										["Callback"] = function()
											-- upvalues: (ref) v_u_921
											TweenTeleport(v_u_921.WorldPivot)
										end
									}
								}
							})
							wait(60)
						end
					end
				end
			end
		end
	})
	local v922 = v336:CreateTab("Scans", 15999597350)
	v922:CreateLabel("AirDrops")
	local v_u_924 = v922:CreateDropdown({
		["Name"] = "Airdrops",
		["Options"] = v_u_298,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "adsTP",
		["Callback"] = function(p923)
			-- upvalues: (ref) v_u_163
			adsTP = p923
			v_u_163.CFrame = game:GetService("Workspace").Game.Airdrops[adsTP].WorldPivot
		end
	})
	v922:CreateButton({
		["Name"] = "Scan Airdrops",
		["Info"] = "Scans for airdrops",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_298, (ref) v_u_924
			v_u_298 = {}
			local v925, v926, v927 = pairs(game:GetService("Workspace").Game.Airdrops:GetChildren())
			while true do
				local v928
				v927, v928 = v925(v926, v927)
				if v927 == nil then
					break
				end
				table.insert(v_u_298, v928.Name)
			end
			v_u_924:Refresh(v_u_298)
		end
	})
	v922:CreateLabel("Rocks")
	local v_u_930 = v922:CreateDropdown({
		["Name"] = "Ores Spawned",
		["Options"] = v_u_308,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "ores",
		["Callback"] = function(p929)
			-- upvalues: (ref) v_u_163
			oreTP = p929
			v_u_163.CFrame = game:GetService("Workspace").Rocks[oreTP].WorldPivot
		end
	})
	v922:CreateButton({
		["Name"] = "Rescan",
		["Info"] = "",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_308, (ref) v_u_930
			v_u_308 = {}
			local v931, v932, v933 = pairs(game:GetService("Workspace").Rocks:GetChildren())
			while true do
				local v934
				v933, v934 = v931(v932, v933)
				if v933 == nil then
					break
				end
				v934.Name = v934:GetAttribute("oreName")
				table.insert(v_u_308, v934:GetAttribute("oreName"))
				table.insert(v_u_308, v934.Name)
			end
			v_u_930:Refresh(v_u_308)
		end
	})
	v922:CreateLabel("Drone")
	local v_u_936 = v922:CreateDropdown({
		["Name"] = "Drones Spawned",
		["Options"] = v_u_313,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "drones",
		["Callback"] = function(p935)
			-- upvalues: (ref) v_u_163
			drneTP = p935
			v_u_163.CFrame = game:GetService("Workspace").Game.Drones[drneTP].WorldPivot
		end
	})
	v922:CreateButton({
		["Name"] = "Rescan",
		["Info"] = "",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_313, (ref) v_u_936
			v_u_313 = {}
			local v937, v938, v939 = pairs(game:GetService("Workspace").Game.Drones:GetChildren())
			while true do
				local v940
				v939, v940 = v937(v938, v939)
				if v939 == nil then
					break
				end
				table.insert(v_u_313, v940.Name)
			end
			v_u_936:Refresh(v_u_313)
		end
	})
	local v941 = v336:CreateTab("ServerHop", 12490660393)
	v941:CreateButton({
		["Name"] = "Ohio. Rejoin",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_14, (ref) v_u_6
			v_u_14:TeleportToPlaceInstance(game.PlaceId, game.JobId, v_u_6)
		end
	})
	v941:CreateButton({
		["Name"] = "Ohio. LowPlayer",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_14
			local v942 = {}
			local v943 = {}
			local v944 = nil
			local v945 = (syn and syn.request or (http and http.request or http_request or (fluxus and fluxus.request or request)))({
				["Url"] = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100", game.PlaceId)
			})
			local v946 = game.HttpService:JSONDecode(v945.Body)
			if v946 and v946.data then
				local v947 = next
				local v948 = v946.data
				local v949 = nil
				while true do
					local v950
					v949, v950 = v947(v948, v949)
					if v949 == nil then
						break
					end
					if type(v950) == "table" and (tonumber(v950.playing) and (tonumber(v950.maxPlayers) and (v950.playing < v950.maxPlayers and v944 == nil))) then
						v944 = tonumber(v950.maxPlayers)
						table.insert(v942, #v942 + 1, v950)
					end
				end
			end
			if #v942 ~= 0 then
				local v951, v952, v953 = pairs(v942)
				while true do
					local v954
					v953, v954 = v951(v952, v953)
					if v953 == nil then
						break
					end
					table.insert(v943, #v943 + 1, tonumber(v954.playing))
				end
				table.sort(v943)
				local v955, v956, v957 = pairs(v942)
				while true do
					local v958
					v957, v958 = v955(v956, v957)
					if v957 == nil then
						break
					end
					if v958.playing ~= v943[1] or v958.id == game.JobId then
						if v958.id == game.JobId then
							v942 = {}
						end
					else
						v942 = { v958.id }
					end
				end
				if #v942 ~= 0 then
					if #v942 > 0 then
						v_u_14:TeleportToPlaceInstance(game.PlaceId, v942[math.random(1, #v942)], game:GetService("Players").LocalPlayer)
					end
				end
			else
				return
			end
		end
	})
	local v959 = v336:CreateTab("Buy", 12665536064)
	v959:CreateDropdown({
		["Name"] = "Select Item To Buy",
		["Options"] = v322,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "drones",
		["Callback"] = function(p960)
			utBuy = p960
		end
	})
	v959:CreateToggle({
		["Name"] = "Buy Item",
		["Info"] = "Toggle",
		["CurrentValue"] = false,
		["Flag"] = "autobuy",
		["Callback"] = function(p961)
			-- upvalues: (ref) v_u_12
			getgenv().AutoBuy = p961
			while getgenv().AutoBuy == true do
				fireclickdetector(game:GetService("Workspace").ItemsOnSale[utBuy][utBuy].ClickDetector)
				v_u_12.RenderStepped:Wait(0.1)
			end
		end
	})
	local v962 = v336:CreateTab("TP", 6309764044)
	v962:CreateDropdown({
		["Name"] = "Teleport",
		["Options"] = v329,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "TPLocc",
		["Callback"] = function(p963)
			-- upvalues: (ref) v_u_325
			custp = p963
			Teleport(v_u_325[custp])
		end
	})
	v962:CreateToggle({
		["Name"] = "TP SpawnLocation & Old CFrame",
		["CurrentValue"] = false,
		["Flag"] = "tpbakngo",
		["Callback"] = function(p964)
			-- upvalues: (ref) v_u_163, (ref) v_u_10
			-- block 26
			getgenv().AntiStomp = p964
			::l23::
			while true do
				if getgenv().AntiStomp ~= true then
					return
				end
				task.wait()
				speedmeter = sppedfunction or 0.05
				local v965 = v_u_163.CFrame
				if v_u_10.Sit ~= true then
					break
				end
				if v_u_10.Sit == true then
					v_u_10.Jump = true
				end
			end
			::l8::
			if true then
				task.wait()
				speedmeter = sppedfunction or 0.08
				if v_u_10.Sit == true then
					if v_u_10.Sit == true then
						v_u_10.Jump = true
					end
				else
					new_CFrame = CFrame.new(0, 0, 0)
					ts = game:GetService("TweenService")
					part = v_u_163
					ti = TweenInfo.new(speedmeter, Enum.EasingStyle.Exponential)
					tp = {
						["CFrame"] = new_CFrame
					}
					tstime = ts:Create(part, ti, tp)
					tstime:Play()
					tstime.Completed:Wait()
					new_CFrame = v965
					tss = game:GetService("TweenService")
					partt = v_u_163
					tii = TweenInfo.new(speedmeter, Enum.EasingStyle.Exponential)
					tpp = {
						["CFrame"] = new_CFrame
					}
					tsstime = tss:Create(partt, tii, tpp)
					tsstime:Play()
					tsstime.Completed:Wait()
				end
			end
			if getgenv().AntiStomp ~= false and v_u_10.Sit ~= true then
				goto l8
			end
			local v966 = TweenInfo.new(speedmeter, Enum.EasingStyle.Linear)
			game:GetService("TweenService"):Create(v_u_163, v966, {
				["CFrame"] = v965
			}):Play()
			goto l23
		end
	})
	v962:CreateSlider({
		["Name"] = "TP Speed",
		["Range"] = { 0, 1.1 },
		["Increment"] = 0.01,
		["Suffix"] = "Tween Speed",
		["CurrentValue"] = 1,
		["Flag"] = "tpcspeed",
		["Callback"] = function(p967)
			sppedfunction = p967
		end
	})
	local v968 = v336:CreateTab("Whitelist Players", 14240653946)
	local v_u_970 = v968:CreateDropdown({
		["Name"] = "Whitelist Player",
		["Options"] = v_u_282,
		["CurrentOption"] = "",
		["MultiSelection"] = false,
		["Flag"] = "killaurawhi",
		["Callback"] = function(p969)
			-- upvalues: (ref) v_u_164
			table.insert(v_u_164, p969)
		end
	})
	v968:CreateButton({
		["Name"] = "Rescan Players",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_282, (ref) v_u_5, (ref) v_u_162, (ref) v_u_970
			v_u_282 = {}
			local v971 = v_u_5
			local v972, v973, v974 = pairs(v971:GetPlayers())
			while true do
				local v975
				v974, v975 = v972(v973, v974)
				if v974 == nil then
					break
				end
				if v975.Name ~= v_u_162 then
					table.insert(v_u_282, v975.Name)
				end
			end
			v_u_970:Refresh(v_u_282)
		end
	})
	v968:CreateButton({
		["Name"] = "Whitelist Nearest [NOSTOMP]",
		["Interact"] = "",
		["Callback"] = function()
			-- upvalues: (ref) v_u_163, (ref) v_u_162, (ref) v_u_17
			local v976, v977, v978 = pairs(getPlayers())
			while true do
				local v979
				v978, v979 = v976(v977, v978)
				if v978 == nil then
					break
				end
				if v979.Character and v979.Character:FindFirstChild("HumanoidRootPart") then
					dis = (v_u_163.Position - v979.Character:FindFirstChild("HumanoidRootPart").Position).magnitude
					if dis <= 10 and v979.Name ~= v_u_162 then
						table.insert(v_u_17, v979.Name)
					end
				end
			end
		end
	})
	v968:CreateButton({
		["Name"] = "Blacklist All [NOSTOMP]",
		["Interact"] = "",
		["Callback"] = function(_)
			-- upvalues: (ref) v_u_17
			table.remove(v_u_17, v_u_17.nodmg)
		end
	})
	v968:CreateButton({
		["Name"] = "Blacklist All",
		["Interact"] = "",
		["Callback"] = function(_)
			-- upvalues: (ref) v_u_164
			table.remove(v_u_164, v_u_164.nodmg)
		end
	})
	if v_u_1[getgenv().ConfigType] then
		v343(v_u_1[getgenv().ConfigType])
		v_u_347:Notify({
			["Title"] = "Configuration Loaded!",
			["Content"] = "" .. getgenv().ConfigType,
			["Image"] = 18877957133
		})
	elseif v_u_1[getgenv().ConfigType] and not v_u_1[table.find(v_u_1, getgenv().ConfigType)] then
		v_u_347:Notify({
			["Title"] = "Configuration Error!",
			["Content"] = getgenv().ConfigType .. " Not Found In The Configuration Database",
			["Image"] = 17368208554
		})
	else
		v_u_347:Notify({
			["Title"] = "Configuration Error!",
			["Content"] = "No Configuration Type Selected Skipping!",
			["Image"] = 17368208554
		})
	end
end
local v_u_981 = game:GetService("Players").LocalPlayer
local _ = v_u_981.Name
local v_u_982 = v_u_981.UserId
local v_u_983 = loadstring(game:HttpGet("https://raw.githubusercontent.com/TTX-OnTop/CPEnjoyer/refs/heads/main/Settings"))()
local v_u_984 = loadstring(game:HttpGet("https://raw.githubusercontent.com/TTX-OnTop/CPEnjoyer/refs/heads/main/BanCheck"))()
local v985 = loadstring(game:HttpGet("https://pastebin.com/raw/11VPXFx4"))()
local v986 = {}
keyscheck = v985.special
speckey = getgenv().TeTraXSpecialID
function TeTraXWhitelist()
	-- upvalues: (ref) v_u_983, (ref) v_u_2, (ref) v_u_982, (ref) v_u_981, (ref) v_u_3, (ref) v_u_984, (ref) v_u_980
	isWhitelisted = nil
	stringkey = {}
	local v987, v988, v989 = pairs(v_u_983)
	while true do
		local v990
		v989, v990 = v987(v988, v989)
		if v989 == nil then
			break
		end
		table.insert(stringkey, v989)
	end
	key = stringkey[table.find(stringkey, getgenv().TeTraXID)]
	getgenv().securversion = tostring(v_u_983.Settings.VersionWhitelist)
	if v_u_983.Settings.Whitelist ~= true then
		if v_u_983.Settings.Whitelist ~= false or v_u_984[table.find(v_u_984, v_u_982)] == v_u_982 then
			if v_u_984[table.find(v_u_984, v_u_982)] == v_u_982 then
				banmsg = "\n                            [TETRAX-SECURITY]\n                            Your UserID Was Found In The Blacklist Contact The Owner Or A Developer For Support\n                            "
				v_u_981:Kick(banmsg)
				task.wait(2)
				v_u_3:TeleportToPlaceInstance(game.PlaceId, game.JobId, v_u_981)
			end
		else
			v_u_2:Notify({
				["Title"] = "TETRAX-SECURITY DISABLED",
				["Description"] = "Version: " .. getgenv().securversion
			}, {
				["OutlineColor"] = Color3.fromRGB(80, 80, 80),
				["Time"] = 8,
				["Type"] = "image"
			}, {
				["Image"] = "http://www.roblox.com/asset/?id=17368081924",
				["ImageColor"] = Color3.fromRGB(255, 255, 255)
			})
			isWhitelisted = true
			v_u_980()
		end
	else
		v_u_2:Notify({
			["Title"] = "TETRAX-SECURITY ENABLED",
			["Description"] = "Version: " .. getgenv().securversion
		}, {
			["OutlineColor"] = Color3.fromRGB(80, 80, 80),
			["Time"] = 5,
			["Type"] = "image"
		}, {
			["Image"] = "http://www.roblox.com/asset/?id=18276446000",
			["ImageColor"] = Color3.fromRGB(255, 255, 255)
		})
		if getgenv().TeTraXID == nil then
			if getgenv().TeTraXID == nil then
				v_u_2:Notify({
					["Title"] = "TeTraXID IS EMPTY",
					["Description"] = "Use getgenv().TeTraXID = \'YOUR KEY\' ontop of loadstring"
				}, {
					["OutlineColor"] = Color3.fromRGB(80, 80, 80),
					["Time"] = 8,
					["Type"] = "image"
				}, {
					["Image"] = "http://www.roblox.com/asset/?id=985514753",
					["ImageColor"] = Color3.fromRGB(255, 255, 255)
				})
				isWhitelisted = false
			end
		elseif getgenv().TeTraXID == key then
			if getgenv().TeTraXID ~= key or v_u_983[getgenv().TeTraXID] == v_u_982 then
				if v_u_983[getgenv().TeTraXID] ~= v_u_982 or v_u_984[table.find(v_u_984, v_u_982)] == v_u_982 then
					if v_u_984[table.find(v_u_984, v_u_982)] == v_u_982 then
						banmsg = "\n                                    [TETRAX-SECURITY]\n                                    Your UserID Was Found In The\n                                    Blacklist Contact The Owner Or A Developer For Support\n                                          "
						v_u_981:Kick(banmsg)
						task.wait(2)
						v_u_3:TeleportToPlaceInstance(game.PlaceId, game.JobId, v_u_981)
					end
				else
					v_u_2:Notify({
						["Title"] = "Key Check",
						["Description"] = "Checking..."
					}, {
						["OutlineColor"] = Color3.fromRGB(80, 80, 80),
						["Time"] = 5,
						["Type"] = "default"
					})
					task.wait(0.7)
					v_u_2:Notify({
						["Title"] = "Key Found!",
						["Description"] = "" .. getgenv().TeTraXID
					}, {
						["OutlineColor"] = Color3.fromRGB(80, 80, 80),
						["Time"] = 7,
						["Type"] = "image"
					}, {
						["Image"] = "http://www.roblox.com/asset/?id=4914902889",
						["ImageColor"] = Color3.fromRGB(255, 255, 255)
					})
					task.wait(0.5)
					isWhitelisted = true
					v_u_980()
				end
			else
				idmsgs = "\n                                [TETRAX-SECURITY]\n                                TeTraXID Not Linked To UserID\n                                "
				v_u_981:Kick(idmsgs)
				task.wait(2)
				v_u_3:TeleportToPlaceInstance(game.PlaceId, game.JobId, v_u_981)
			end
		else
			v_u_2:Notify({
				["Title"] = "Key Check",
				["Description"] = "Checking..."
			}, {
				["OutlineColor"] = Color3.fromRGB(80, 80, 80),
				["Time"] = 5,
				["Type"] = "default"
			})
			task.wait(0.7)
			v_u_2:Notify({
				["Title"] = "Key Not Found",
				["Description"] = "" .. getgenv().TeTraXID
			}, {
				["OutlineColor"] = Color3.fromRGB(80, 80, 80),
				["Time"] = 7,
				["Type"] = "image"
			}, {
				["Image"] = "http://www.roblox.com/asset/?id=985514753",
				["ImageColor"] = Color3.fromRGB(255, 255, 255)
			})
			isWhitelisted = false
		end
	end
end
isWhitelisted = nil
if speckey == nil or (speckey ~= keyscheck[table.find(keyscheck, speckey)] or (v_u_984[table.find(v_u_984, v_u_982)] == v_u_982 or keyscheck.allowspecialkeys() ~= true)) then
	if keyscheck.allowspecialkeys() ~= true or (speckey == nil or speckey == keyscheck[table.find(keyscheck, speckey)]) then
		if speckey == nil or (keyscheck.allowspecialkeys() ~= false or v986[table.find(v986, v_u_982)] == v_u_982) then
			if speckey ~= keyscheck[table.find(keyscheck, speckey)] or (speckey == nil or (keyscheck.allowspecialkeys() == false or v986[table.find(v986, v_u_982)] == v_u_982)) then
				TeTraXWhitelist()
			end
		else
			v_u_2:Notify({
				["Title"] = "Special Keys Not Allowed",
				["Description"] = "SpecialKey: " .. speckey
			}, {
				["OutlineColor"] = Color3.fromRGB(80, 80, 80),
				["Time"] = 5,
				["Type"] = "image"
			}, {
				["Image"] = "http://www.roblox.com/asset/?id=985514753",
				["ImageColor"] = Color3.fromRGB(255, 255, 255)
			})
		end
	else
		v_u_2:Notify({
			["Title"] = "Special Key Not Found",
			["Description"] = "SpecialKey: " .. speckey
		}, {
			["OutlineColor"] = Color3.fromRGB(80, 80, 80),
			["Time"] = 5,
			["Type"] = "image"
		}, {
			["Image"] = "http://www.roblox.com/asset/?id=985514753",
			["ImageColor"] = Color3.fromRGB(255, 255, 255)
		})
	end
else
	local v991 = v_u_2
	v_u_2.Notify(v991, {
		["Title"] = "Special Key Found",
		["Description"] = "Bypassing!"
	}, {
		["OutlineColor"] = Color3.fromRGB(80, 80, 80),
		["Time"] = 5,
		["Type"] = "image"
	}, {
		["Image"] = "http://www.roblox.com/asset/?id=17703994076",
		["ImageColor"] = Color3.fromRGB(255, 84, 84)
	})
	isWhitelisted = true
	v_u_980()
end
function allowBypasser()
	if isWhitelisted ~= true then
		if isWhitelisted == false then
			warn("Not Allowed Ignoring Bypass Function!")
		end
	else
		BypassRemotes()
	end
end
usercheck = v985.allowBypassFunc
if isWhitelisted ~= true or (v985.bypass.bfunc() ~= false or usercheck[table.find(usercheck, v_u_982)] == v_u_982) then
	if usercheck[table.find(usercheck, v_u_982)] ~= v_u_982 then
		if v985.bypass.bfunc() == true and usercheck[table.find(usercheck, v_u_982)] ~= v_u_982 then
			allowBypasser()
		end
	else
		allowBypasser()
	end
else
	msgty = "\n    Risky Tab Status: bypasser offline\n    Magick Tab Status: bypasser offline\n        "
	v_u_2:Notify({
		["Title"] = "[CRITICAL] Bypasser Offline",
		["Description"] = tostring(msgty)
	}, {
		["OutlineColor"] = Color3.fromRGB(80, 80, 80),
		["Time"] = 5,
		["Type"] = "image"
	}, {
		["Image"] = "http://www.roblox.com/asset/?id=985514753",
		["ImageColor"] = Color3.fromRGB(255, 255, 255)
	})
end
