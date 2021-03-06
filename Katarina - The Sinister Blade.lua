local version = "2.07"
--[[

	
		db   dD  .d8b.  d888888b  .d8b.  d8888b. d888888b d8b   db  .d8b.  
		88 ,8P' d8' `8b `~~88~~' d8' `8b 88  `8D   `88'   888o  88 d8' `8b 
		88,8P   88ooo88    88    88ooo88 88oobY'    88    88V8o 88 88ooo88 
		88`8b   88~~~88    88    88~~~88 88`8b      88    88 V8o88 88~~~88 
		88 `88. 88   88    88    88   88 88 `88.   .88.   88  V888 88   88 
		YP   YD YP   YP    YP    YP   YP 88   YD Y888888P VP   V8P YP   YP 


	Script - Katarina - The Sinister Blade 2.0.7 by Skeem and Roach

	Changelog :
   1.0	 - Initial Release
   1.1	 - Fixed Damage Calculation
		 - Fixed Auto Ignite
		 - Hopefully Fixed BugSplat
   1.2	 - Really fixed BugSplat Now
		 - More Damage Calculation Adjustments
		 - More checks for when to ult
		 - More checks to not use W when enemy not in range
   1.2.1 - Fixed the problem with channelling ultimate
   1.3	 - Fixed the problem with ult AGAIN
		 - Added Auto Pots
		 - Added Auto Zhonyas
		 - Added Draw Circles of targets that can die
   1.3.1 - Lul another Ult fix wtfux
		 - Added move to mouse to harass mode
   1.4	 - Recoded most of the script
		 - Added toggle to use items with KS
		 - Jungle Clearing
		 - New method to stop ult from not channeling
		 - New Menu
		 - Lane Clear
   1.4.1 - Added packet block ult movement
   1.4.2 - Some draw text fixes
		 - ult range fixes so it doesn't keep spinning if no enemies are around
		 - Added some permashows
   1.5   - No longer AutoCarry Script
		 - Requires iSAC library for orbwalking
		 - Revamped code a little
		 - Deleted ult usage from auto KS for now
   1.5.2 - Fixed Skills not casting ult
		 - Fixed enemy chasing bug
		 - Added delay W to both harass & full combo with toggle in menu
   1.6   - Fixed Jungle Clear
		 - Added Toggle to Stop ult if enemies can die from other spells
		 - Fixed Ward Jump

		 - Improved Farm a bit
   1.6.1 - Added Blackfire Tourch in combo
		 - Fixed ult stop when enemies can die
   1.6.2 - Fixed Blackfire torch error
   1.7   - Updated ward jump, won't use more than 1 item
		 - Beta KS with wards if E not ready
		 - Beta ward save when in danger
		 - Doesn't require iSAC anymore
   1.7.1 - Fixed ward jump (doesn't jump to wards that are in oposite way of mouse)
		 - Fixed Combo
		 - some fixes for auto ward save
   1.8   - Added Trinkets for Ward Jump
		 - Improved KS a little, removed unnecessary code
   1.8.3 - Attempt to fix some errors
		 - Reworked combo a little should be smoother now
		 - Added togge for orbwalking in combo as requested
		 - Casting wards should work a little better as well
   1.8.4 - Fixed bugsplat
   1.8.5 - Fixed Draw Errors
   1.8.7 - Fixed W Delay changed name to Proc Q Mark
		 - Fixed text errors added Q mark to calculations
   1.9   - Fixed ult issues recoded a couple of things
   2.0   - Big update rewrote everything!
		 - Combo Reworked should be a lot smoother now
		 - Harass Reworked as well, should work better and detonate marks
		 - Farm reworked / Uses mixed skill damages to maximize farm
		 - Ward Jump Improved / Now Can ward to minions & allies that are in range
		 - Lane Clear & Jungle Clear Improved / Uses new jungle table with all mobs in 5v5 / 3v3
		 - New Overkill Protection
		 - New Option to OrbWalk Minions In Lane During Lane Clear
		 - New Option to Orbwalk Jungle during jungle clear
		 - New Option to block packets while channeling (Won't block ultimate if Target is killable (Option for this too))
		 - New Option to KS with Ult
		 - New Option to KS with Items
		 - New Option to KS with Wards / Minions / Allies
		 - Added Priority Arranger to Target Selector
		 - New Draw which shows exactly which skills need to be used to kill
		 - New Option to Draw Who is being targetted by text
		 - New Option to Draw a circle around target
   2.0.1 - Removed Draw Circles around Target (FPS Drops)
		 - All bug fixes by Roach:
			- Fixed Variables
			- Fixed and Added Ward Jump
			- Fixed Items Usage
   2.0.2 - Added TickManager/FPS Drops Improver - It will lower your FPS Drops
		 - Deleted 'wardSave' from Misc Menu
		 - Improved Ulti-KS
		 - Now Lag Free Circles is implemented:
			- Credits to:
				- barasia283
				- vadash
				- ViceVersa
				- Trees
				- Any more I don't know of
			- Features:
				- Globally reduces the FPS drop from circles.
			- Requirements:
				- VIP
   2.0.3 - Added Ulti Seconds Timer
			- Features:
				- How many seconds do we need to kill an Enemy
			- It will be Improved as it is in Early Development
		 - Fixed some more Typo
		 - Fixed a little bug where the Ward-Jump function didn't jumped on Minions
		 - 'colorText' is now Yellow every time, because other colors can be hard to see
		 - Fixed a bug where, if you were a Free User, the Lag Free Cicrcles Started to Spam errors
   2.0.4 - Fixed a bug where "Sinister Steel" (W) was used even if Katarina was Channelling her Ultimate
		 - Fixed Range Draws blinking by adding a new option to Enable/Disable TickManager/FPS Improver in 'Misc Menu' (Default: OFF)
		 - Using ARGB Function for the Draw Ranges
		 - Fixed a bug where E Range was not seen
		 - Fixed more typo and variables from 1.9
		 - Made ward jumping more accurate
		 - Fixed harass function
   2.0.5 - FPS Lag should be fixed now
		 - Edited Ward Jump to jump at max range
		 - Added Jump to Allies if in danger
		 - Fixed Ulti problem for Free Users
		 - Updated Damage Calculation
			- Added: Q+E+W+Itm = Kill
		 - Hopefully fixed Ward-Jump
		 - Improved Ulti functionality for VIP and Free Users
		 - Fixed a bug where Katarina was not farming with W if only W was Enabled to farm
		 - Fixed a bug with Damage Calculation
		 - Added Liandry's Torment into the Damage Calculation
		 - Increased Farming Performance
   2.0.6 - Added Orbwalkig in Harass
		 - Improved Ult Functionality
		 - Fixed bugs from 2.0.5 about Ult
		 - Fixed some typo
		 - Fixed some logics about killsteal
		 - Fixed some Logics about getting Distance
		 - Improved Logics of the Script
   2.0.7 - Finally fixed Proc Q Mark
		 - Changed some variables
		 - Improved Ult Killsteal (Experimental)
		 - Hopefully fixed Double-Ward Bug
		 - Fixed farm with "Shunpo" (E)
		 - Fixed Sightstone not casting Bug
		 - Fixed typo
		 - Added Auto-updater
		 - Added Anti-Ult Breaking for MMA / SAC
  	]] --

-- / Hero Name Check / --
if myHero.charName ~= "Katarina" then return end
-- / Hero Name Check / --

local autoupdateenabled = true
local UPDATE_SCRIPT_NAME = "Katarina - The Sinister Blade"
local UPDATE_HOST = "raw.github.com"
local UPDATE_PATH = "/UglyOldGuy/BoL/master/Katarina%20-%20The%20Sinister%20Blade.lua"
local UPDATE_FILE_PATH = SCRIPT_PATH..GetCurrentEnv().FILE_NAME
local UPDATE_URL = "https://"..UPDATE_HOST..UPDATE_PATH

-- / Auto-Update Function / --
local ServerData
if autoupdateenabled then
	GetAsyncWebResult(UPDATE_HOST, UPDATE_PATH, function(d) ServerData = d end)
	function update()
		if ServerData ~= nil then
			local ServerVersion
			local send, tmp, sstart = nil, string.find(ServerData, "local version = \"")
			if sstart then
				send, tmp = string.find(ServerData, "\"", sstart+1)
			end
			if send then
				ServerVersion = tonumber(string.sub(ServerData, sstart+1, send-1))
			end

			if ServerVersion ~= nil and tonumber(ServerVersion) ~= nil and tonumber(ServerVersion) > tonumber(version) then
				DownloadFile(UPDATE_URL.."?nocache"..myHero.charName..os.clock(), UPDATE_FILE_PATH, function () print("<font color=\"#FF0000\"> >> "..UPDATE_SCRIPT_NAME..": successfully updated. Reload (double F9) Please. ("..version.." => "..ServerVersion..")</font>") end)     
			elseif ServerVersion then
				print("<font color=\"#FF0000\"> >> "..UPDATE_SCRIPT_NAME..": You have got the latest version: <b>"..ServerVersion.."</b></font>")
			end		
			ServerData = nil
		end
	end
	AddTickCallback(update)
end
-- / Auto-Update Function / --

-- / Loading Function / --
function OnLoad()
	--->
		Variables()
		KatarinaMenu()
		PrintChat("<font color='#FF0000'> >> "..UPDATE_SCRIPT_NAME.." 2.0.7 Loaded <<</font>")
	---<
end
-- / Loading Function / --

-- / Tick Function / --
function OnTick()
	--->
		Checks()
		DamageCalculation()
		UseConsumables()

		if Target then
			if KatarinaMenu.harass.wharass and (not isChanneling("Spell4") and not SkillR.castingUlt) then CastW(Target) end
			if KatarinaMenu.killsteal.Ignite then AutoIgnite(Target) end
		end
	---<
	-- Menu Variables --
	--->
		ComboKey =	 KatarinaMenu.combo.comboKey
		FarmingKey =   KatarinaMenu.farming.farmKey
		HarassKey =	KatarinaMenu.harass.harassKey
		ClearKey =	 KatarinaMenu.clear.clearKey
		WardJumpKey =  KatarinaMenu.misc.wardJumpKey
	---<
	-- Menu Variables --
	--->
		if ComboKey then
			FullCombo()
		end
		if HarassKey then
			HarassCombo()
		end
		if FarmingKey and not ComboKey then
			Farm()
		end
		if ClearKey then
			MixedClear()
		end	
		if WardJumpKey then
			moveToCursor()
			local WardPos = GetDistance(mousePos) <= SkillWard.range and mousePos or getMousePos()
			wardJump(WardPos.x, WardPos.z)
		end
		if KatarinaMenu.killsteal.smartKS then KillSteal() end
		if KatarinaMenu.misc.AutoLevelSkills then autoLevelSetSequence(levelSequence) end
		if KatarinaMenu.misc.jumpAllies then DangerCheck() end
	---<
end
-- / Tick Function / --

-- / Variables Function / --
function Variables()
	--- Skills Vars --
	--->
		SkillQ =	{range = 675, name = "Bouncing Blades",	ready = false,	delay = 400,	projSpeed = 1400,	timeToHit = 0,	markDelay = 4000,	color = ARGB(255,178, 0 , 0 )	}
		SkillW =	{range = 375, name = "Sinister Steel",	ready = false,																			color = ARGB(255, 32,178,170)	}
		SkillE =	{range = 700, name = "Shunpo",			ready = false,																			color = ARGB(255,128, 0 ,128)	}
		SkillR =	{range = 550, name = "Death Lotus",		ready = false,	castDelay = 0,	castingUlt = false																		}
		SkillWard = {range = 600, lastPlaced = 0,			itemSlot = nil																											}
	---<
	--- Skills Vars ---
	--- Items Vars ---
	--->
		Items =
		{
					HealthPot	  = {ready = false},
					FlaskPot	   = {ready = false},
					TrinketWard	= {ready = false},
					RubySightStone = {ready = false},
					SightStone	 = {ready = false},
					SightWard	  = {ready = false},
					VisionWard	 = {ready = false}
		}
	---<
	--- Items Vars ---
	--- Orbwalking Vars ---
	--->
		lastAnimation = "Run"
		lastAttack = 0
		lastAttackCD = 0
		lastWindUpTime = 0
	---<
	--- Orbwalking Vars ---
	--- TickManager Vars ---
	--->
		TManager =
		{
			onTick	= TickManager(20),
			onDraw	= TickManager(80),
			onSpell	= TickManager(15)
		}
	---<
	--- TickManager Vars ---
	if VIP_USER then
		--- LFC Vars ---
		--->
			_G.oldDrawCircle = rawget(_G, 'DrawCircle')
			_G.DrawCircle = DrawCircle2
		---<
		--- LFC Vars ---
	end
	--- Drawing Vars ---
	--->
		TextList = {"Harass him", "Q = Kill", "W = Kill", "E = Kill!", "Q+W = Kill", "Q+E = Kill", "E+W = Kill", "Q+E+W = Kill", "Q+E+W+Itm = Kill", "Q+W+E+R: ", "Need CDs"}
		KillText = {}
		colorText = ARGB(255,255,204,0)
		wardColor =
		{
					available	= ARGB(255,255,255,255),
					searching	= ARGB(255,250,123, 20),
					unavailable	= ARGB(255,255, 0 , 0 )
		}
	---<
	--- Drawing Vars ---
	--- Misc Vars ---
	--->
		lastWardUsed = 0
		wardObject = nil
		levelSequence = { 1,3,2,2,2,4,2,1,2,1,4,1,1,3,3,4,3,3 }
		UsingHPot = false
		gameState = GetGame()
		if gameState.map.shortName == "twistedTreeline" then
			TTMAP = true
		else
			TTMAP = false
		end
	---<
	--- Misc Vars ---
	--- Tables ---
	--->
		Wards = {}
		allyHeroes = GetAllyHeroes()
		enemyHeroes = GetEnemyHeroes()
		enemyMinions = minionManager(MINION_ENEMY, SkillE.range, player, MINION_SORT_HEALTH_ASC)
		allyMinions = minionManager(MINION_ALLY, SkillE.range, player, MINION_SORT_HEALTH_ASC)
		JungleMobs = {}
		JungleFocusMobs = {}
		priorityTable = {
			AP = {
				"Annie", "Ahri", "Akali", "Anivia", "Annie", "Brand", "Cassiopeia", "Diana", "Evelynn", "FiddleSticks", "Fizz", "Gragas", "Heimerdinger", "Karthus",
				"Kassadin", "Katarina", "Kayle", "Kennen", "Leblanc", "Lissandra", "Lux", "Malzahar", "Mordekaiser", "Morgana", "Nidalee", "Orianna",
				"Ryze", "Sion", "Swain", "Syndra", "Teemo", "TwistedFate", "Veigar", "Viktor", "Vladimir", "Xerath", "Ziggs", "Zyra",
			},
			Support = {
				"Alistar", "Blitzcrank", "Janna", "Karma", "Leona", "Lulu", "Nami", "Nunu", "Sona", "Soraka", "Taric", "Thresh", "Zilean",
			},
			Tank = {
				"Amumu", "Chogath", "DrMundo", "Galio", "Hecarim", "Malphite", "Maokai", "Nasus", "Rammus", "Sejuani", "Nautilus", "Shen", "Singed", "Skarner", "Volibear",
				"Warwick", "Yorick", "Zac",
			},
			AD_Carry = {
				"Ashe", "Caitlyn", "Corki", "Draven", "Ezreal", "Graves", "Jayce", "Jinx", "KogMaw", "Lucian", "MasterYi", "MissFortune", "Pantheon", "Quinn", "Shaco", "Sivir",
				"Talon","Tryndamere", "Tristana", "Twitch", "Urgot", "Varus", "Vayne", "Yasuo","Zed", 
			},
			Bruiser = {
				"Aatrox", "Darius", "Elise", "Fiora", "Gangplank", "Garen", "Irelia", "JarvanIV", "Jax", "Khazix", "LeeSin", "Nocturne", "Olaf", "Poppy",
				"Renekton", "Rengar", "Riven", "Rumble", "Shyvana", "Trundle", "Udyr", "Vi", "MonkeyKing", "XinZhao",
			},
		}
		if TTMAP then --
			FocusJungleNames = {
				["TT_NWraith1.1.1"] = true,
				["TT_NGolem2.1.1"] = true,
				["TT_NWolf3.1.1"] = true,
				["TT_NWraith4.1.1"] = true,
				["TT_NGolem5.1.1"] = true,
				["TT_NWolf6.1.1"] = true,
				["TT_Spiderboss8.1.1"] = true,
			}		
			JungleMobNames = {
				["TT_NWraith21.1.2"] = true,
				["TT_NWraith21.1.3"] = true,
				["TT_NGolem22.1.2"] = true,
				["TT_NWolf23.1.2"] = true,
				["TT_NWolf23.1.3"] = true,
				["TT_NWraith24.1.2"] = true,
				["TT_NWraith24.1.3"] = true,
				["TT_NGolem25.1.1"] = true,
				["TT_NWolf26.1.2"] = true,
				["TT_NWolf26.1.3"] = true,
			}
		else 
			JungleMobNames = { 
				["Wolf8.1.2"] = true,
				["Wolf8.1.3"] = true,
				["YoungLizard7.1.2"] = true,
				["YoungLizard7.1.3"] = true,
				["LesserWraith9.1.3"] = true,
				["LesserWraith9.1.2"] = true,
				["LesserWraith9.1.4"] = true,
				["YoungLizard10.1.2"] = true,
				["YoungLizard10.1.3"] = true,
				["SmallGolem11.1.1"] = true,
				["Wolf2.1.2"] = true,
				["Wolf2.1.3"] = true,
				["YoungLizard1.1.2"] = true,
				["YoungLizard1.1.3"] = true,
				["LesserWraith3.1.3"] = true,
				["LesserWraith3.1.2"] = true,
				["LesserWraith3.1.4"] = true,
				["YoungLizard4.1.2"] = true,
				["YoungLizard4.1.3"] = true,
				["SmallGolem5.1.1"] = true,
			}
			FocusJungleNames = {
				["Dragon6.1.1"] = true,
				["Worm12.1.1"] = true,
				["GiantWolf8.1.1"] = true,
				["AncientGolem7.1.1"] = true,
				["Wraith9.1.1"] = true,
				["LizardElder10.1.1"] = true,
				["Golem11.1.2"] = true,
				["GiantWolf2.1.1"] = true,
				["AncientGolem1.1.1"] = true,
 				["Wraith3.1.1"] = true,
				["LizardElder4.1.1"] = true,
				["Golem5.1.2"] = true,
				["GreatWraith13.1.1"] = true,
				["GreatWraith14.1.1"] = true,
			}
		end
		for i = 0, objManager.maxObjects do
			local object = objManager:getObject(i)
			if object and object.valid and not object.dead then
				if FocusJungleNames[object.name] then
					table.insert(JungleFocusMobs, object)
				elseif JungleMobNames[object.name] then
					table.insert(JungleMobs, object)
				end
			end
		end
	---<
	--- Tables ---
end
-- / Variables Function / --

-- / Menu Function / --
function KatarinaMenu()
	--- Main Menu ---
	--->
		KatarinaMenu = scriptConfig("Katarina - The Sinister Blade", "Katarina")
		---> Combo Menu
		KatarinaMenu:addSubMenu("["..myHero.charName.." - Combo Settings]", "combo")
			KatarinaMenu.combo:addParam("comboKey", "Full Combo Key (X)", SCRIPT_PARAM_ONKEYDOWN, false, 88)
			KatarinaMenu.combo:addParam("stopUlt", "Stop "..SkillR.name.." (R) If Target Can Die", SCRIPT_PARAM_ONOFF, false)
			KatarinaMenu.combo:addParam("detonateQ", "Try to Proc "..SkillQ.name.." (Q) Mark", SCRIPT_PARAM_ONOFF, false)
			KatarinaMenu.combo:addParam("comboItems", "Use Items with Burst", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.combo:addParam("comboOrbwalk", "Orbwalk in Combo", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.combo:permaShow("comboKey")
		---<
		---> Harass Menu
		KatarinaMenu:addSubMenu("["..myHero.charName.." - Harass Settings]", "harass")
			KatarinaMenu.harass:addParam("detonateQ", "Proc Q Mark", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.harass:addParam("hMode", "Harass Mode",SCRIPT_PARAM_SLICE, 1, 1, 2, 0)
			KatarinaMenu.harass:addParam("harassKey", "Harass Hotkey (T)", SCRIPT_PARAM_ONKEYDOWN, false, 84)
			KatarinaMenu.harass:addParam("wharass", "Always "..SkillW.name.." ((W)", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.harass:addParam("harassOrbwalk", "Orbwalk in Harass", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.harass:permaShow("harassKey")
		---<
		---> Farming Menu
		KatarinaMenu:addSubMenu("["..myHero.charName.." - Farming Settings]", "farming")
			KatarinaMenu.farming:addParam("farmKey", "Farming ON/Off (Z)", SCRIPT_PARAM_ONKEYTOGGLE, true, 90)
			KatarinaMenu.farming:addParam("qFarm", "Farm with "..SkillQ.name.." (Q)", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.farming:addParam("wFarm", "Farm with "..SkillW.name.." (W)", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.farming:addParam("eFarm", "Farm with "..SkillE.name.." (E)", SCRIPT_PARAM_ONOFF, false)
			KatarinaMenu.farming:permaShow("farmKey")
		---<
		---> Clear Menu		
		KatarinaMenu:addSubMenu("["..myHero.charName.." - Clear Settings]", "clear")
			KatarinaMenu.clear:addParam("clearKey", "Jungle/Lane Clear Key", SCRIPT_PARAM_ONKEYDOWN, false, 86)
			KatarinaMenu.clear:addParam("JungleFarm", "Use Skills to Farm Jungle", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.clear:addParam("ClearLane", "Use Skills to Clear Lane", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.clear:addParam("clearQ", "Clear with "..SkillQ.name.." (Q)", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.clear:addParam("clearW", "Clear with "..SkillW.name.." (W)", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.clear:addParam("clearE", "Clear with "..SkillE.name.." (E)", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.clear:addParam("clearOrbM", "OrbWalk Minions", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.clear:addParam("clearOrbJ", "OrbWalk Jungle", SCRIPT_PARAM_ONOFF, true)
		---<
		---> KillSteal Menu
		KatarinaMenu:addSubMenu("["..myHero.charName.." - KillSteal Settings]", "killsteal")
			KatarinaMenu.killsteal:addParam("smartKS", "Use Smart Kill Steal", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.killsteal:addParam("wardKS", "Use Wards to KS", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.killsteal:addParam("ultKS", "Use "..SkillR.name.." (R) to KS", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.killsteal:addParam("itemsKS", "Use Items to KS", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.killsteal:addParam("Ignite", "Auto Ignite", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.killsteal:permaShow("smartKS")
		---<
		---> Drawing Menu			
		KatarinaMenu:addSubMenu("["..myHero.charName.." - Drawing Settings]", "drawing")
			if VIP_USER then
				KatarinaMenu.drawing:addSubMenu("["..myHero.charName.." - LFC Settings]", "lfc")
					KatarinaMenu.drawing.lfc:addParam("LagFree", "Activate Lag Free Circles", SCRIPT_PARAM_ONOFF, false)
					KatarinaMenu.drawing.lfc:addParam("CL", "Length before Snapping", SCRIPT_PARAM_SLICE, 300, 75, 2000, 0)
					KatarinaMenu.drawing.lfc:addParam("CLinfo", "Higher length = Lower FPS Drops", SCRIPT_PARAM_INFO, "")
			end
			KatarinaMenu.drawing:addParam("disableAll", "Disable All Ranges Drawing", SCRIPT_PARAM_ONOFF, false)
			KatarinaMenu.drawing:addParam("drawText", "Draw Enemy Text", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.drawing:addParam("drawTargetText", "Draw Who I'm Targetting", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.drawing:addParam("drawQ", "Draw Bouncing Blades (Q) Range", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.drawing:addParam("drawW", "Draw Sinister Steel (W) Range", SCRIPT_PARAM_ONOFF, false)
			KatarinaMenu.drawing:addParam("drawE", "Draw Shunpo (E) Range", SCRIPT_PARAM_ONOFF, false)
		---<
		---> Misc Menu	
		KatarinaMenu:addSubMenu("["..myHero.charName.." - Misc Settings]", "misc")
			KatarinaMenu.misc:addParam("wardJumpKey", "Ward Jump Hotkey (G)", SCRIPT_PARAM_ONKEYDOWN, false, 71)
			KatarinaMenu.misc:addParam("jumpAllies", "Jump To Allies if In Danger", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.misc:addParam("ZWItems", "Auto Zhonyas/Wooglets", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.misc:addParam("ZWHealth", "Min Health % for Zhonyas/Wooglets", SCRIPT_PARAM_SLICE, 15, 0, 100, -1)
			KatarinaMenu.misc:addParam("aHP", "Auto Health Pots", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.misc:addParam("HPHealth", "Min % for Health Pots", SCRIPT_PARAM_SLICE, 50, 0, 100, -1)
			KatarinaMenu.misc:addParam("uTM", "Use Tick Manager/FPS Improver",SCRIPT_PARAM_ONOFF, false)
			KatarinaMenu.misc:addParam("AutoLevelSkills", "Auto Level Skills (Requires Reload)", SCRIPT_PARAM_ONOFF, true)
			KatarinaMenu.misc:permaShow("wardJumpKey")
		---<
		---> Target Selector		
			TargetSelector = TargetSelector(TARGET_LESS_CAST, SkillE.range, DAMAGE_MAGIC)
			TargetSelector.name = "Katarina"
			KatarinaMenu:addTS(TargetSelector)
		---<
		---> Arrange Priorities
			if heroManager.iCount < 10 then -- borrowed from Sidas Auto Carry, modified to 3v3
	   			PrintChat(" >> Too few champions to arrange priority")
			elseif heroManager.iCount == 6 and TTMAP then
				ArrangeTTPriorities()
			else
				ArrangePriorities()
			end
		---<
	---<
	--- Main Menu ---
end
-- / Menu Function / --

-- / Full Combo Function / --
function FullCombo()
	--- Combo While Not Channeling --
	--->
		if SkillR.castDelay == 0 then
			SkillR.castingUlt = false
		end
		if KatarinaMenu.combo.detonateQ and (GetTickCount() >= (SkillQ.timeToHit + SkillQ.markDelay) or SkillQ.ready) then
			SkillQ.timeToHit = 0
		end
		if (not isChanneling("Spell4") and not SkillR.castingUlt) then
			if Target then
				if KatarinaMenu.combo.comboOrbwalk then
					OrbWalking(Target)
				end
				if KatarinaMenu.combo.comboItems then
					UseItems(Target)
				end
				CastQ(Target)
				if KatarinaMenu.combo.detonateQ and GetTickCount() >= SkillQ.timeToHit then
					if not SkillQ.ready then CastE(Target) end
					if not SkillE.ready then CastW(Target) end
				else
					CastE(Target)
					CastW(Target)
				end
				CastR(Target)
			else
				if KatarinaMenu.combo.comboOrbwalk then
					moveToCursor()
				end
			end
		end
	---<
	--- Combo While Not Channeling --
end
-- / Full Combo Function / --

-- / Harass Combo Function / --
function HarassCombo()
	--- Smart Harass --
	--->
		if KatarinaMenu.harass.detonateQ and (GetTickCount() >= (SkillQ.timeToHit + SkillQ.markDelay) or SkillQ.ready) then
			SkillQ.timeToHit = 0
		end
		if Target then
			if KatarinaMenu.harass.harassOrbwalk then
				OrbWalking(Target)
			end
			--- Harass Mode 1 Q+W+E ---
			if KatarinaMenu.harass.hMode == 1 then
				CastQ(Target)
				if KatarinaMenu.harass.detonateQ and GetTickCount() >= SkillQ.timeToHit then
					if not SkillQ.ready then CastE(Target) end
					if not SkillE.ready then CastW(Target) end
				else
					CastE(Target)
					CastW(Target)
				end
			end
			--- Harass Mode 1 ---
			--- Harass Mode 2 Q+W ---
			if KatarinaMenu.harass.hMode == 2 then
				CastQ(Target)
				CastW(Target)
			end
			--- Harass Mode 2 ---
		else
			if KatarinaMenu.harass.harassOrbwalk then
				moveToCursor()
			end
		end
	---<
	--- Smart Harass ---
end
-- / Harass Combo Function / --

-- / Farm Function / --
function Farm()
	--->
		for _, minion in pairs(enemyMinions.objects) do
			--- Minion Damages ---
			local pMinionDmg = getDmg("Q", minion, myHero, 2)
			local qMinionDmg = getDmg("Q", minion, myHero)
			local wMinionDmg = getDmg("W", minion, myHero)
			local eMinionDmg = getDmg("E", minion, myHero)
			--- Minion Damages ---
			--- Minion Keys ---
			local qFarmKey = KatarinaMenu.farming.qFarm
			local wFarmKey = KatarinaMenu.farming.wFarm
			local eFarmKey = KatarinaMenu.farming.eFarm
			--- Minion Keys ---
			--- Farming Minions ---
			if ValidTarget(minion) then
				if GetDistance(minion) <= SkillW.range then
					if qFarmKey and wFarmKey then
						if SkillQ.ready and SkillW.ready then
							if minion.health <= (pMinionDmg + qMinionDmg + wMinionDmg) and minion.health > wMinionDmg then
								CastQ(minion)
								CastSpell(_W)
							end
						elseif SkillW.ready then
							if minion.health <= (wMinionDmg) then
								CastSpell(_W)
							end
						elseif SkillQ.ready and not SkillW.ready then
							if minion.health <= (qMinionDmg) then
								CastQ(minion)
							end
						end
					elseif qFarmKey and not wFarmKey then
						if SkillQ.ready then
							if minion.health <= (qMinionDmg) then
								CastQ(minion)
							end
						end
					elseif not qFarmKey and wFarmKey then
						if SkillW.ready then
							if minion.health <= (wMinionDmg) then
								CastSpell(_W)
							end
						end
					end
				elseif (GetDistance(minion) > SkillW.range) then
					if qFarmKey then
						if minion.health <= qMinionDmg and (GetDistance(minion) <= SkillQ.range) then
							CastQ(minion)
						end
					end
					if eFarmKey then
						if minion.health <= eMinionDmg and (GetDistance(minion) <= SkillE.range) then
							CastE(minion)
						end
					end
				end
			end
			break									
		end
		--- Farming Minions ---
	---<
end
-- / Farm Function / --

-- / Clear Function / --
function MixedClear()
	--- Jungle Clear ---
	--->
		if KatarinaMenu.clear.JungleFarm then
			local JungleMob = GetJungleMob()
			if JungleMob ~= nil then
				if KatarinaMenu.clear.clearOrbJ then
					OrbWalking(JungleMob)
				end
				if KatarinaMenu.clear.clearQ and SkillQ.ready and GetDistance(JungleMob) <= SkillQ.range then
					CastQ(JungleMob)
				end
				if KatarinaMenu.clear.clearW and SkillW.ready and GetDistance(JungleMob) <= SkillW.range then
					CastSpell(_W)
				end
				if KatarinaMenu.clear.clearE and SkillE.ready and GetDistance(JungleMob) <= SkillE.range then
					CastE(JungleMob)
				end
			else
				if KatarinaMenu.clear.clearOrbJ then
					moveToCursor()
				end
			end
		end
	---<
	--- Jungle Clear ---
	--- Lane Clear ---
	--->
		if KatarinaMenu.clear.ClearLane then
			for _, minion in pairs(enemyMinions.objects) do
				if  ValidTarget(minion) then
					if KatarinaMenu.clear.clearOrbM then
						OrbWalking(minion)
					end
					if KatarinaMenu.clear.clearQ and SkillQ.ready and GetDistance(minion) <= SkillQ.range then
						CastQ(minion)
					end
					if KatarinaMenu.clear.clearW and SkillW.ready and GetDistance(minion) <= SkillW.range then
						CastSpell(_W)
					end
					if KatarinaMenu.clear.clearE and SkillE.ready and GetDistance(minion) <= SkillE.range then 
						CastE(minion)
					end
				else
					if KatarinaMenu.clear.clearOrbM then
						moveToCursor()
					end
				end
			end
		end
	---<
	--- Lane Clear ---
end
-- / Clear Function / --

-- / Casting Q Function / --
function CastQ(enemy)
	--- Dynamic Q Cast ---
	--->
		if not SkillQ.ready or (GetDistance(enemy) > SkillQ.range) then
			return false
		end
		if ValidTarget(enemy) then 
			if VIP_USER then
				Packet("S_CAST", {spellId = _Q, targetNetworkId = enemy.networkID}):send()
				return true
			else
				CastSpell(_Q, enemy)
				return true
			end
			if SkillQ.timeToHit == 0 then
				SkillQ.timeToHit = GetTickCount() + (SkillQ.delay + (GetDistance(myHero, enemy) / SkillQ.projSpeed))
			end
		end
		return false
	---<
	--- Dynamic Q Cast ---
end
-- / Casting Q Function / --

-- / Casting E Function / --
function CastE(enemy)
	--- Dynamic E Cast ---
	--->
		if not SkillE.ready or (GetDistance(enemy) > SkillE.range) then
			return false
		end
		if ValidTarget(enemy) then 
			if VIP_USER then
				Packet("S_CAST", {spellId = _E, targetNetworkId = enemy.networkID}):send()
				return true
			else
				CastSpell(_E, enemy)
				return true
			end
		end
		return false
	---<
	--- Dynamic E Cast ---
end
-- / Casting E Function / --

-- / Casting W Function / --
function CastW(enemy)
	--- Dynamic W Cast ---
	--->
		if not SkillW.ready or (GetDistance(enemy) > SkillW.range) then
			return false
		end
		if ValidTarget(enemy) then
			CastSpell(_W)
			return true
		end
		return false
	---<
	--- Dynamic W Cast ---
end
-- / Casting W Function / --

-- / Casting R Function / --
function CastR(enemy)
	--- Dynamic R Cast ---
	--->
		if (SkillQ.ready or SkillW.ready or SkillE.ready or (GetDistance(enemy) > SkillR.range)) or not SkillR.ready then
			return false
		end
		if ValidTarget(enemy) and (not isChanneling("Spell4") and not SkillR.castingUlt) then
			CastSpell(_R) 
			SkillR.castDelay = GetTickCount()+250
		end
	---<
	--- Dymanic R Cast --
end
-- / Casting R Function / --

-- / Ward Jumping Function / --
function wardJump(x, y)
	--->
		if SkillE.ready then
			local WardUsed = false
			local WardDistance = 300
			local MinionWard, AllyWard = false, false
			for _, ally in pairs(allyHeroes) do
				if ValidTarget(ally, SkillE.range, false) then
					if GetDistance(ally, mousePos) <= WardDistance then
						AllyWard = true
						CastSpell(_E, ally)
					end
				end
			end
			for _, minion in pairs(allyMinions.objects) do
				if ValidTarget(minion, SkillE.range, false) then
					if GetDistance(minion, mousePos) <= WardDistance then
						MinionWard = true
						CastSpell(_E, minion)
					end
				end
			end
			for _, minion in pairs(enemyMinions.objects) do
				if ValidTarget(minion, SkillE.range, false) then
					if GetDistance(minion, mousePos) <= WardDistance then
						MinionWard = true
						CastSpell(_E, minion)
					end
				end
			end
			if next(Wards) ~= nil then
				for i, obj in pairs(Wards) do 
					if obj.valid then
						MousePos = getMousePos()
						if GetDistance(obj, MousePos) <= WardDistance then
							CastSpell(_E, obj)
						 end
					end
				end
			end
			
			if (not WardUsed or not MinionWard or not AllyWard) and GetTickCount() > SkillWard.lastPlaced then
				if Items.TrinketWard.ready then
					SkillWard.itemSlot = ITEM_7
				elseif Items.RubySightStone.ready then
					SkillWard.itemSlot = rstSlot
				elseif Items.SightStone.ready then 
					SkillWard.itemSlot = ssSlot
				elseif Items.SightWard.ready then
					SkillWard.itemSlot = swSlot
				elseif Items.VisionWard.ready then
					SkillWard.itemSlot = vwSlot
				end
				
				if SkillWard.itemSlot ~= nil then
					CastSpell(SkillWard.itemSlot, x, y)
					WardUsed = true
					SkillWard.lastPlaced = GetTickCount() + 2000
					SkillWard.itemSlot = nil
				end
			end
		end
	---<
end
-- / Ward Jumping Function / --

-- / Use Items Function / --
function UseItems(enemy)
	--- Use Items (Will Improve Soon) ---
	--->
		if not enemy then
			enemy = Target
		end
		if ValidTarget(enemy) then
			if dfgReady and GetDistance(enemy) <= 600 then CastSpell(dfgSlot, enemy) end
			if bftReady and GetDistance(enemy) <= 600 then CastSpell(bftSlot, enemy) end
			if hxgReady and GetDistance(enemy) <= 600 then CastSpell(hxgSlot, enemy) end
			if bwcReady and GetDistance(enemy) <= 450 then CastSpell(bwcSlot, enemy) end
			if brkReady and GetDistance(enemy) <= 450 then CastSpell(brkSlot, enemy) end
		end
	---<
	--- Use Items ---
end
-- / Use Items Function / --

function UseConsumables()
	--- Check if Zhonya/Wooglets Needed --
	--->
		if KatarinaMenu.misc.ZWItems and isLow('Zhonya') and Target and (znaReady or wgtReady) then
			CastSpell((wgtSlot or znaSlot))
		end
	---<
	--- Check if Zhonya/Wooglets Needed --
	--- Check if Potions Needed --
	--->
		if KatarinaMenu.misc.aHP and isLow('Health') and not (UsingHPot or UsingFlask) and (Items.HealthPot.ready or Items.FlaskPot.ready) then
			CastSpell((hpSlot or fskSlot))
		end
	---<
	--- Check if Potions Needed --
end	

-- / Auto Ignite Function / --
function AutoIgnite(enemy)
	--- Simple Auto Ignite ---
	--->
		if enemy.health <= iDmg and GetDistance(enemy) <= 600 then
			if iReady then CastSpell(ignite, enemy) end
		end
	---<
	--- Simple Auto Ignite ---
end
-- / Auto Ignite Function / --

-- / Damage Calculation Function / --
function DamageCalculation()
	--- Calculate our Damage On Enemies ---
	--->
 		for i=1, heroManager.iCount do
		local enemy = heroManager:GetHero(i)
			if ValidTarget(enemy) then
				dfgDmg, hxgDmg, bwcDmg, iDmg, bftDmg, liandrysDmg = 0, 0, 0, 0, 0, 0
				pDmg = (SkillQ.ready and getDmg("Q", enemy, myHero, 2) or 0)
				qDmg = (SkillQ.ready and getDmg("Q",enemy,myHero) or 0)
				wDmg = (SkillW.ready and getDmg("W",enemy,myHero) or 0)
				eDmg = (SkillE.ready and getDmg("E",enemy,myHero) or 0)
				rDmg = getDmg("R",enemy,myHero,3)
				dfgDmg = (dfgReady and getDmg("DFG", enemy, myHero) or 0)
				hxgDmg = (hxgReady and getDmg("HXG", enemy, myHero) or 0)
				bwcDmg = (bwcReady and getDmg("BWC", enemy, myHero) or 0)
				bftdmg = (bftReady and getDmg("BLACKFIRE", enemy, myHero) or 0)
				liandrysDmg = (liandrysReady and getDmg("LIANDRYS", enemy, myHero) or 0)
				iDmg = (ignite and getDmg("IGNITE",enemy,myHero) or 0)
				onspellDmg = liandrysDmg + bftDmg
				itemsDmg = dfgDmg + hxgDmg + bwcDmg + iDmg + onspellDmg
	---<
	--- Calculate our Damage On Enemies ---
	--- Setting KillText Color & Text ---
	--->
				if enemy.health > (pDmg + qDmg + eDmg + wDmg + rDmg + itemsDmg) then
					KillText[i] = 1
				elseif enemy.health <= qDmg then
					if SkillQ.ready then
						KillText[i] = 2
					else
						KillText[i] = 11
					end
				elseif enemy.health <= wDmg then
					if SkillW.ready then
						KillText[i] = 3
					else
						KillText[i] = 11
					end
				elseif enemy.health <= eDmg then
					if SkillE.ready then
						KillText[i] = 4
					else
						KillText[i] = 11
					end
				elseif enemy.health <= (qDmg + wDmg) and SkillQ.ready and SkillW.ready then
					if SkillQ.ready and SkillW.ready then
						KillText[i] = 5
					else
						KillText[i] = 11
					end
				elseif enemy.health <= (qDmg + eDmg) and SkillQ.ready and SkillE.ready then
					if SkillQ.ready and SkillE.ready then
						KillText[i] = 6
					else
						KillText[i] = 11
					end
				elseif enemy.health <= (wDmg + eDmg) and SkillW.ready and SkillE.ready then
					if SkillW.ready and SkillE.ready then
						KillText[i] = 7
					else
						KillText[i] = 11
					end
				elseif enemy.health <= (qDmg + wDmg + eDmg) and SkillQ.ready and SkillW.ready and SkillE.ready then
					if SkillQ.ready and SkillW.ready and SkillE.ready then
						KillText[i] = 8
					else
						KillText[i] = 11
					end
				elseif (enemy.health <= (qDmg + wDmg + eDmg + itemsDmg) or enemy.health <= (qDmg + pDmg + wDmg + eDmg + itemsDmg)) and SkillQ.ready and SkillW.ready and SkillE.ready then
					if SkillQ.ready and SkillW.ready and SkillE.ready then
						KillText[i] = 9
					else
						KillText[i] = 11
					end
				elseif enemy.health <= (qDmg + pDmg + wDmg + eDmg + rDmg + itemsDmg) then
					if SkillQ.ready and SkillW.ready and SkillE.ready then
						KillText[i] = 10
					else
						KillText[i] = 11
					end
				end
			end
		end
	---<
	--- Setting KillText Color & Text ---
end
-- / Damage Calculation Function / --

-- / KillSteal Function / --
function KillSteal()
	--- KillSteal No Wards ---
	--->
		if Target then
			local distance = GetDistance(Target)
			local health = Target.health
			if health <= qDmg and SkillQ.ready and (distance <= SkillQ.range) then
				CastQ(Target)
			elseif health <= wDmg and SkillW.ready and (distance <= SkillW.range) then
				CastW(Target)
			elseif health <= eDmg and SkillE.ready and (distance <= SkillE.range) then
				CastE(Target)
			elseif health <= (qDmg + wDmg) and SkillQ.ready and SkillW.ready and (distance <= SkillW.range) then
				CastW(Target)
			elseif health <= (qDmg + eDmg) and SkillQ.ready and SkillE.ready and (distance <= SkillE.range) then
				CastE(Target)
			elseif health <= (wDmg + eDmg) and SkillW.ready and SkillE.ready and (distance <= SkillW.range) then
				CastW(Target)
			elseif health <= (qDmg + wDmg + eDmg) and SkillQ.ready and SkillW.ready and SkillE.ready and (distance <= SkillE.range) then
				CastE(Target)
			elseif KatarinaMenu.killsteal.ultKS then
				if health <= (qDmg + pDmg + wDmg + eDmg + rDmg) and SkillQ.ready and SkillW.ready and SkillE.ready and SkillR.ready and (distance <= SkillE.range) then
					CastE(Target)
					CastQ(Target)
					CastW(Target)
					CastR(Target)
				end
				if health <= rDmg and distance <= (SkillR.range - 100) then
					CastR(Target)
				end
			elseif KatarinaMenu.killsteal.itemsKS then
				if health <= (qDmg + pDmg + wDmg + eDmg + rDmg + itemsDmg) then
					if SkillQ.ready and SkillW.ready and SkillE.ready and SkillR.ready then
						UseItems(Target)
					end
				elseif health <= (qDmg + wDmg + eDmg + itemsDmg) and health >= (qDmg + wDmg + eDmg) then
					if SkillQ.ready and SkillW.ready and SkillE.ready then
						UseItems(Target)
					end
				end
			end
		end
	---<
	--- KillSteal No Wards ---
end
-- / KillSteal Function / --

-- / Misc Functions / --
--- Danger Check ---
--->
	function DangerCheck()
		if isInDanger(myHero) and Target then
			for _, ally in pairs(allyHeroes) do
				if ValidTarget(Ally, SkillE.range, false) then
					if GetDistance(Ally, Target) <= GetDistance(myHero, Target) then
						if SkillE.ready then CastSpell(_E, ally) end
					end
				end
			end
		end
	end
---<
--- Get Mouse Pos Function by Klokje ---
--->
	function getMousePos(range)
		local temprange = range or SkillWard.range
		local MyPos = Vector(myHero.x, myHero.y, myHero.z)
		local MousePos = Vector(mousePos.x, mousePos.y, mousePos.z)

		return MyPos - (MyPos - MousePos):normalized() * SkillWard.range
	end
---<
--- Get Mouse Pos Function by Klokje ---
--- On Animation (Setting our last Animation) ---
--->
	function OnAnimation(unit, animationName)
		if unit.isMe and lastAnimation ~= animationName then lastAnimation = animationName end
	end
---<
--- On Animation (Setting our last Animation) ---
--- isChanneling Function (Checks if Animation is Channeling) ---
--->
	function isChanneling(animationName)
		if lastAnimation == animationName then
			return true
		else
			return false
		end
	end
---<
--- isChanneling Function (Checks if Animation is Channeling) ---
--- Checking if Hero in Danger ---
--->
	function isInDanger(hero)
		nEnemiesClose, nEnemiesFar = 0, 0
		hpPercent = hero.health / hero.maxHealth
		for _, enemy in pairs(enemyHeroes) do
				if not enemy.dead and hero:GetDistance(enemy) <= 200 then
						nEnemiesClose = nEnemiesClose + 1
						if hpPercent < 0.5 and hpPercent < enemy.health / enemy.maxHealth then return true end
				elseif not enemy.dead and hero:GetDistance(enemy) <= 1000 then
						nEnemiesFar = nEnemiesFar + 1
				end
		end
	   
		if nEnemiesClose > 1 then return true end
		if nEnemiesClose == 1 and nEnemiesFar > 1 then return true end
		return false
	end
---<
--- Checking if Hero in Danger ---
--- Get Jungle Mob Function by Apple ---
--->
	function GetJungleMob()
		for _, Mob in pairs(JungleFocusMobs) do
			if ValidTarget(Mob, q1Range) then return Mob end
		end
		for _, Mob in pairs(JungleMobs) do
			if ValidTarget(Mob, q1Range) then return Mob end
		end
	end
---<
--- Get Jungle Mob Function by Apple ---
--- Arrange Priorities 5v5 ---
--->
	function ArrangePriorities()
		for i, enemy in pairs(enemyHeroes) do
			SetPriority(priorityTable.AD_Carry, enemy, 1)
			SetPriority(priorityTable.AP, enemy, 2)
			SetPriority(priorityTable.Support, enemy, 3)
			SetPriority(priorityTable.Bruiser, enemy, 4)
			SetPriority(priorityTable.Tank, enemy, 5)
		end
	end
---<
--- Arrange Priorities 5v5 ---
--- Arrange Priorities 3v3 ---
--->
	function ArrangeTTPriorities()
		for i, enemy in pairs(enemyHeroes) do
			SetPriority(priorityTable.AD_Carry, enemy, 1)
			SetPriority(priorityTable.AP, enemy, 1)
			SetPriority(priorityTable.Support, enemy, 2)
			SetPriority(priorityTable.Bruiser, enemy, 2)
			SetPriority(priorityTable.Tank, enemy, 3)
		end
	end
---<
--- Arrange Priorities 3v3 ---
--- Set Priorities ---
--->
	function SetPriority(table, hero, priority)
		for i=1, #table, 1 do
			if hero.charName:find(table[i]) ~= nil then
				TS_SetHeroPriority(priority, hero.charName)
			end
		end
	end
---<
--- Set Priorities ---
-- / Misc Functions / --

-- / On Send Packet Function / --
function OnSendPacket(packet)
	-- Block Packets if Channeling --
	--->
		for _, enemy in pairs(enemyHeroes) do
			if (isChanneling("Spell4") or SkillR.castingUlt) then
				local packet = Packet(packet)
				if packet:get('name') == 'S_MOVE' or packet:get('name') == 'S_CAST' and packet:get('sourceNetworkId') == myHero.networkID then
					if KatarinaMenu.combo.stopUlt then
						if Target and GetDistance(Target) <= SkillR.range then
							if not SkillQ.ready and SkillW.ready and SkillE.ready and Target.health > (qDmg + wDmg + eDmg) then
								packet:block()
							end
						end
					else
						if Target and GetDistance(Target) <= SkillR.range then
							packet:block()
						end
					end
				end
			end
		end
	---<
	--- Block Packets if Channeling --
end
-- / On Send Packet Function / --

-- / On Create Obj Function / --
function OnCreateObj(obj)
	--- All of Our Objects (CREATE) --
	-->
		if obj ~= nil then
			if (obj.name:find("katarina_deathLotus_mis.troy") or obj.name:find("katarina_deathLotus_tar.troy")) then
				if GetDistance(obj, myHero) <= 70 then
					SkillR.castDelay = GetTickCount()+250
				end
			end
			if (obj.name:find("katarina_deathlotus_success.troy") or obj.name:find("Katarina_deathLotus_empty.troy")) then
				if GetDistance(obj, myHero) <= 70 then
					SkillR.castDelay = 0
					SkillR.castingUlt = false
				end
			end
			if obj.name:find("Global_Item_HealthPotion.troy") then
				if GetDistance(obj, myHero) <= 70 then
					UsingHPot = true
				end
			end
			if obj.valid and (string.find(obj.name, "Ward") ~= nil or string.find(obj.name, "Wriggle") ~= nil or string.find(obj.name, "Trinket")) then 
				table.insert(Wards, obj)
			end
			if FocusJungleNames[obj.name] then
				table.insert(JungleFocusMobs, obj)
			elseif JungleMobNames[obj.name] then
				table.insert(JungleMobs, obj)
			end
		end
	---<
	--- All of Our Objects (CREATE) --
end
-- / On Create Obj Function / --

-- / On Delete Obj Function / --
function OnDeleteObj(obj)
	--- All of Our Objects (CLEAR) --
	--->
		if obj ~= nil then
			if (obj.name:find("katarina_deathlotus_success.troy") or obj.name:find("Katarina_deathLotus_empty.troy")) then
				SkillR.castingUlt = false
			end
			if (obj.name:find("katarina_deathLotus_mis.troy") or obj.name:find("katarina_deathLotus_tar.troy")) then
				SkillR.castingUlt = false
			end
			if obj.name:find("TeleportHome.troy") then
				Recall = false
			end
			if obj.name:find("Global_Item_HealthPotion.troy") then
				UsingHPot = false
			end
			for i, Mob in pairs(JungleMobs) do
				if obj.name == Mob.name then
					table.remove(JungleMobs, i)
				end
			end
			for i, Mob in pairs(JungleFocusMobs) do
				if obj.name == Mob.name then
					table.remove(JungleFocusMobs, i)
				end
			end
			for i,ward in ipairs(Wards) do
				if not ward.valid or (obj.name == ward.name and obj.x == ward.x and obj.z == ward.z) then
					table.remove(Wards,i)
				end
			end
		end
	--- All of Our Objects (CLEAR) --
	---<
end
--- All The Objects in The World Literally ---
-- / On Delete Obj Function / --

-- / Plugin On Draw / --
function OnDraw()
	--- Tick Manager Check ---
	--->
		if not TManager.onDraw:isReady() and KatarinaMenu.misc.uTM then return end
	---<
	--->
	--- Drawing Our Ranges ---
	--->
		if not myHero.dead then
			if not KatarinaMenu.drawing.disableAll then
				if SkillQ.ready and KatarinaMenu.drawing.drawQ then 
					DrawCircle(myHero.x, myHero.y, myHero.z, SkillQ.range, SkillQ.color)
				end
				if SkillW.ready and KatarinaMenu.drawing.drawW then
					DrawCircle(myHero.x, myHero.y, myHero.z, SkillW.range, SkillW.color)
				end
				if SkillE.ready and KatarinaMenu.drawing.drawE then
					DrawCircle(myHero.x, myHero.y, myHero.z, SkillE.range, SkillE.color)
				end
			end
		end
	---<
	--- Drawing Our Ranges ---
	--- Draw Enemy Damage Text ---
	--->
		if KatarinaMenu.drawing.drawText then
			for i = 1, heroManager.iCount do
				local enemy = heroManager:GetHero(i)
				if ValidTarget(enemy) then
					local barPos = WorldToScreen(D3DXVECTOR3(enemy.x, enemy.y, enemy.z)) --(Credit to Zikkah)
					local PosX = barPos.x - 35
					local PosY = barPos.y - 10
					if KillText[i] ~= 10 then
						DrawText(TextList[KillText[i]], 16, PosX, PosY, colorText)
					else
						DrawText(TextList[KillText[i]] .. string.format("%4.1f", ((enemy.health - (qDmg + pDmg + wDmg + eDmg + itemsDmg)) / rDmg) * 2.5) .. "s = Kill", 16, PosX, PosY, colorText)
					end
				end
			end
		end
	---<
	--- Draw Enemy Damage Text ---
	--- Draw Enemy Target ---
	--->
		if Target then
			if KatarinaMenu.drawing.drawTargetText then
				DrawText("Targeting: " .. Target.charName, 12, 100, 100, colorText)
			end
		end
	---<
	--- Draw Enemy Target ---
	--- Draw Ward Jump Range and Mouse ---
	--->
		if WardJumpKey then
			if SkillE.ready then
				DrawCircle3D(myHero.x, myHero.y, myHero.z, SkillWard.range, 2, wardColor.available, 50)
				if GetDistance(mousePos) <= SkillWard.range then
					DrawCircle3D(mousePos.x, mousePos.y, mousePos.z, 50, 2, wardColor.available, 20)
				else
					DrawCircle3D(mousePos.x, mousePos.y, mousePos.z, 50, 2, wardColor.unavailable, 20)
				end
				if (GetDistance(mousePos) <= 700 and GetDistance(mousePos) > SkillWard.range) or not (Items.TrinketWard.ready or Items.RubySightStone.ready or Items.SightStone.ready or Items.VisionWard.ready) then
					DrawCircle3D(mousePos.x, mousePos.y, mousePos.z, 50, 2, wardColor.searching, 20)
				end
			else
				DrawCircle3D(mousePos.x, mousePos.y, mousePos.z, 50, 2, wardColor.unavailable, 20)
			end
		end
	---<
	--- Draw Ward Jump Range and Mouse ---
end
-- / Plugin On Draw / --

-- / OrbWalking Functions / --
--- Orbwalking Target ---
--->
	function OrbWalking(Target)
		for _, enemy in pairs(enemyHeroes) do
			if (not isChanneling("Spell4") and not SkillR.castingUlt) then
				if TimeToAttack() and GetDistance(Target) <= myHero.range + GetDistance(myHero.minBBox) then
					myHero:Attack(Target)
				elseif heroCanMove() then
					moveToCursor()
				end
			end
		end
	end
---<
--- Orbwalking Target ---
--- Check When Its Time To Attack ---
--->
	function TimeToAttack()
		return (GetTickCount() + GetLatency()/2 > lastAttack + lastAttackCD)
	end
---<
--- Check When Its Time To Attack ---
--- Prevent AA Canceling ---
--->
	function heroCanMove()
		return (GetTickCount() + GetLatency()/2 > lastAttack + lastWindUpTime + 20)
	end
---<
--- Prevent AA Canceling ---
--- Move to Mouse ---
--->
	function moveToCursor()
		if GetDistance(mousePos) then
			local moveToPos = myHero + (Vector(mousePos) - myHero):normalized()*300
			myHero:MoveTo(moveToPos.x, moveToPos.z)
		end		
	end
---<
--- Move to Mouse ---
--- On Process Spell ---
--->
	function OnProcessSpell(object,spell)
		--- Tick Manager Check ---
		--->
			if not TManager.onSpell:isReady() and KatarinaMenu.misc.uTM then return end
		---<
		--->
			if object == myHero then
				if spell.name:lower():find("attack") then
					lastAttack = GetTickCount() - GetLatency()/2
					lastWindUpTime = spell.windUpTime*1000
					lastAttackCD = spell.animationTime*1000
				end
			end
		---<
	end
---<
--- On Process Spell ---
-- / OrbWalking Functions / --

-- / FPS Manager Functions / --
class 'TickManager'
--- TM Init Function ---
--->
	function TickManager:__init(ticksPerSecond)
		self.TPS = ticksPerSecond
		self.lastClock = 0
		self.currentClock = 0
	end
---<
--- TM Init Function ---
--- TM Type Function ---
--->
	function TickManager:__type()
		return "TickManager"
	end
---<
--- TM Init Function ---
--- Set TPS Function ---
--->
	function TickManager:setTPS(ticksPerSecond)
		self.TPS = ticksPerSecond
	end
---<
--- Set TPS Function ---
--- Get TPS Function ---
--->
	function TickManager:getTPS(ticksPerSecond)
		return self.TPS
	end
---<
--- Get TPS Function ---
--- TM Ready Function ---
--->
	function TickManager:isReady()
		self.currentClock = os.clock()
		if self.currentClock < self.lastClock + (1 / self.TPS) then return false end
		self.lastClock = self.currentClock
		return true
	end
---<
--- TM Ready Function ---
-- / FPS Manager Functions / --
if VIP_USER then
	-- / Lag Free Circles Functions / --
	--- Draw Circle Next Level Function ---
	--->
		function DrawCircleNextLvl(x, y, z, radius, width, color, chordlength)
			radius = radius or 300
			quality = math.max(8, round(180 / math.deg((math.asin((chordlength / (2 * radius)))))))
			quality = 2 * math.pi / quality
			radius = radius * .92
			local points = {}
			
			for theta = 0, 2 * math.pi + quality, quality do
				local c = WorldToScreen(D3DXVECTOR3(x + radius * math.cos(theta), y, z - radius * math.sin(theta)))
				points[#points + 1] = D3DXVECTOR2(c.x, c.y)
			end
			
			DrawLines2(points, width or 1, color or 4294967295)
		end
	---<
	--- Draw Cicle Next Level Function ---
	--- Round Function ---
	--->
		function round(num) 
			if num >= 0 then return math.floor(num+.5) else return math.ceil(num-.5) end
		end
	---<
	--- Round Function ---
	--- Draw Cicle 2 Function ---
	--->
		function DrawCircle2(x, y, z, radius, color)
			local vPos1 = Vector(x, y, z)
			local vPos2 = Vector(cameraPos.x, cameraPos.y, cameraPos.z)
			local tPos = vPos1 - (vPos1 - vPos2):normalized() * radius
			local sPos = WorldToScreen(D3DXVECTOR3(tPos.x, tPos.y, tPos.z))
			
			if OnScreen({ x = sPos.x, y = sPos.y }, { x = sPos.x, y = sPos.y }) then
				DrawCircleNextLvl(x, y, z, radius, 1, color, KatarinaMenu.drawing.lfc.CL) 
			end
		end
	---<
	--- Draw Cicle 2 Function ---
	-- / Lag Free Circles Functions / --
end

-- / Checks Function / --
function Checks()
	--- Tick Manager Check ---
	--->
		if not TManager.onTick:isReady() and KatarinaMenu.misc.uTM then return end
	---<
	--- Tick Manager Check ---
	if VIP_USER then
		--- LFC Checks ---
		--->
			if not KatarinaMenu.drawing.lfc.LagFree then 
				_G.DrawCircle = _G.oldDrawCircle 
			else
				_G.DrawCircle = DrawCircle2
			end
		---<
		--- LFC Checks ---
	end
	--- Updates & Checks if Target is Valid ---
	--->
		TargetSelector:update()
		tsTarget = TargetSelector.target
		if tsTarget and tsTarget.type == "obj_AI_Hero" then
			Target = tsTarget
		else
			Target = nil
		end
	---<
	--- Updates & Checks if Target is Valid ---	
	--- Checks and finds Ignite ---
	--->
		if myHero:GetSpellData(SUMMONER_1).name:find("SummonerDot") then
			ignite = SUMMONER_1
		elseif myHero:GetSpellData(SUMMONER_2).name:find("SummonerDot") then
			ignite = SUMMONER_2
		end
	---<
	--- Checks and finds Ignite ---
	--- Slots for Items ---
	--->
		rstSlot, ssSlot, swSlot, vwSlot =			GetInventorySlotItem(2045),
													GetInventorySlotItem(2049),
													GetInventorySlotItem(2044),
													GetInventorySlotItem(2043)
		dfgSlot, hxgSlot, bwcSlot, brkSlot =		GetInventorySlotItem(3128),
													GetInventorySlotItem(3146),
													GetInventorySlotItem(3144),
													GetInventorySlotItem(3153)
		hpSlot, fskSlot =							GetInventorySlotItem(2003),
													GetInventorySlotItem(2041)
		znaSlot, wgtSlot, bftSlot, liandrysSlot =	GetInventorySlotItem(3157),
													GetInventorySlotItem(3090),
													GetInventorySlotItem(3188),
													GetInventorySlotItem(3151)
	---<
	--- Slots for Items ---
	--- Checks if Spells are Ready ---
	--->
		SkillQ.ready = (myHero:CanUseSpell(_Q) == READY)
		SkillW.ready = (myHero:CanUseSpell(_W) == READY)
		SkillE.ready = (myHero:CanUseSpell(_E) == READY)
		SkillR.ready = (myHero:CanUseSpell(_R) == READY)
		iReady = (ignite ~= nil and myHero:CanUseSpell(ignite) == READY)
	---<
	--- Checks if Active Items are Ready ---
	--->
		dfgReady		= (dfgSlot		~= nil and myHero:CanUseSpell(dfgSlot)		== READY)
		hxgReady		= (hxgSlot		~= nil and myHero:CanUseSpell(hxgSlot)		== READY)
		bwcReady		= (bwcSlot		~= nil and myHero:CanUseSpell(bwcSlot)		== READY)
		brkReady		= (brkSlot		~= nil and myHero:CanUseSpell(brkSlot)		== READY)
		znaReady		= (znaSlot		~= nil and myHero:CanUseSpell(znaSlot)		== READY)
		wgtReady		= (wgtSlot		~= nil and myHero:CanUseSpell(wgtSlot)		== READY)
		bftReady		= (bftSlot		~= nil and myHero:CanUseSpell(bftSlot)		== READY)
		lyandrisReady	= (liandrysSlot ~= nil and myHero:CanUseSpell(liandrysSlot) == READY)
	---<
	--- Checks if Items are Ready ---
	--- Checks if Health Pots / Mana Pots are Ready ---
	--->
		Items.HealthPot.ready = (hpSlot ~= nil and myHero:CanUseSpell(hpSlot) == READY)
		Items.FlaskPot.ready = (fskSlot ~= nil and myHero:CanUseSpell(fskSlot) == READY)
	---<
	--- Checks if Health Pots / Mana Pots are Ready ---	
	--- Checks if Wards are Ready ---
	--->
		Items.TrinketWard.ready	  = (myHero:CanUseSpell(ITEM_7) == READY and myHero:getItem(ITEM_7).id == 3340) or (myHero:CanUseSpell(ITEM_7) == READY and myHero:getItem(ITEM_7).id == 3350) or (myHero:CanUseSpell(ITEM_7) == READY and myHero:getItem(ITEM_7).id == 3361) or (myHero:CanUseSpell(ITEM_7) == READY and myHero:getItem(ITEM_7).id == 3362)
		Items.RubySightStone.ready   = (rstSlot ~= nil and myHero:CanUseSpell(rstSlot) == READY)
		Items.SightStone.ready	   = (ssSlot ~= nil and myHero:CanUseSpell(ssSlot) == READY)
		Items.SightWard.ready		= (swSlot ~= nil and myHero:CanUseSpell(swSlot) == READY)
		Items.VisionWard.ready	   = (vwSlot ~= nil and myHero:CanUseSpell(vwSlot) == READY)
	---<
	--- Checks if Wards are Ready ---
	--- Updates Minions ---
	--->
		enemyMinions:update()
		allyMinions:update()
	---<
	--- Updates Minions ---
	--- Setting Cast of Ult ---
	--->
		if GetTickCount() <= SkillR.castDelay then SkillR.castingUlt = true end
		if SkillQ.ready and SkillW.ready and SkillE.ready and not Target then SkillR.castingUlt = false end
		if isChanneling("Spell4") or SkillR.castingUlt then
			if AutoCarry then 
				if AutoCarry.MainMenu ~= nil then
						if AutoCarry.CanAttack ~= nil then
							_G.AutoCarry.CanAttack = false
							_G.AutoCarry.CanMove = false
						end
				elseif AutoCarry.Keys ~= nil then
					if AutoCarry.MyHero ~= nil then
						_G.AutoCarry.MyHero:MovementEnabled(false)
						_G.AutoCarry.MyHero:AttacksEnabled(false)
					end
				end
			elseif MMA_Loaded then
				_G.MMA_AttackAvailable = false
				_G.MMA_AbleToMove = false
			end
		else
			if AutoCarry then 
				if AutoCarry.MainMenu ~= nil then
						if AutoCarry.CanAttack ~= nil then
							_G.AutoCarry.CanAttack = true
							_G.AutoCarry.CanMove = true
						end
				elseif AutoCarry.Keys ~= nil then
					if AutoCarry.MyHero ~= nil then
						_G.AutoCarry.MyHero:MovementEnabled(true)
						_G.AutoCarry.MyHero:AttacksEnabled(true)
					end
				end
			elseif MMA_Loaded then
				_G.MMA_AttackAvailable = true
				_G.MMA_AbleToMove = true
			end
		end
	---<
	--- Setting Cast of Ult ---
end
-- / Checks Function / --

-- / isLow Function / --
function isLow(Name)
	--- Check Zhonya/Wooglets HP ---
	--->
		if Name == 'Zhonya' or Name == 'Wooglets' then
			if (myHero.health / myHero.maxHealth) <= (KatarinaMenu.misc.ZWHealth / 100) then
				return true
			else
				return false
			end
		end
	---<
	--- Check Zhonya/Wooglets HP ---
	--- Check Potions HP ---
	--->
		if Name == 'Health' then
			if (myHero.health / myHero.maxHealth) <= (KatarinaMenu.misc.HPHealth / 100) then
				return true
			else
				return false
			end
		end
	---<
	--- Check Potions HP ---
end
-- / isLow Function / --
