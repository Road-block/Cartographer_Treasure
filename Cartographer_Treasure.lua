local bs = AceLibrary("Babble-Spell-2.2")
local BZ = AceLibrary("Babble-Zone-2.2")
local AceAddon = AceLibrary("AceAddon-2.0")
local Tablet = AceLibrary("Tablet-2.0")

local L = AceLibrary("AceLocale-2.2"):new("Cartographer_Treasure")
L:RegisterTranslations("enUS", function() return {
	["Filter"] = true,
	["Filter out treasure"] = true,	
	["Select all"] = true,
	["Select none"] = true,
	
  ["Treasure"] = true,
	["Module description"] = "Treasure mapnotes for Cartographer (based on Cartographer_Mining by kergoth)",
  
  ["Icon alpha"] = true,
	["Alpha transparency of the icon"] = true,
	["Icon size"] = true,
	["Size of the icons on the map"] = true,
	
	-- Icons
	["Box"] = true,
	["Chest"] = true,
	["Clam"] = true,
	["Barrel"] = true,
	["Shellfish"] = true,
	["Footlocker"] = true,
	["Blood"] = true,
	["Soil"] = true,
	["Sprout"] = true,
	["Crystal"] = true,
	["Berries"] = true,
	["Tuber"] = true,
	["Nightdragon"] = true,
	["Songflower"] = true,
	
	-- Descriptive/Menu names
	["Blood of Heroes"] = true,
	["Hero"] = true,
	["Un'Goro Dirt Pile"] = true,
	["Bloodpetal Sprout"] = true,
	["Power Crystal"] = true,
	["Food Crate"] = true,
	["Drink Barrel"] = true,
	["Shellfish Trap"] = true,
	["Giant Clam"] = true,
	["Un'Goro Power Crystal"] = true,
	["Night Dragon's Breath"] = true,
	["Nightdragon"] = true,
	["Whipper Root Tuber"] = true,
	["Whipper Root"] = true,
	["Windblossom Berries"] = true,
	["SongFlower"] = true,
	["Songflower"] = true,
	-- regex needs
	["Crate"] = true,
	["Cask"] = true,
	["Dirt Pile"] = true,
	--- Various treasure found around the world
	["Solid Chest"] = true,
	["Battered Footlocker"] = true,
	["Food Crate"] = true,
	["Barrel Of Melon Juice"] = true,
	["Horde Supply Crate"] = true,
	["Document Chest"] = true,
	["Damaged Chest"] = true,
	["Alliance Chest"] = true,
	["Barrel Of Sweet Nectar"] = true,
	["Trelane's Chest"] = true,
	["Battered Chest"] = true,
	["Barrel Of Milk"] = true,
	["Box of Assorted Parts"] = true,
	["Broken Barrel"] = true,
	["Alexston's Chest"] = true,
	["Excavation Supply Crate"] = true,
	["Chest Of Containment Coffers"] = true,
	["Karnitol's Chest"] = true,
	["Malem Chest"] = true,
	["Water Barrel"] = true,
	["Perrine's Chest"] = true,
	["Weapon Crate"] = true,
	["Crate With Holes"] = true,
	["Stolen Iron Chest"] = true,
	["Armor Crate"] = true,
	["Marvon's Chest"] = true,
	["Scattered Crate"] = true,
	["Caravan Chest"] = true,
	["Mossy Footlocker"] = true,
	["Worn Wooden Chest"] = true,
	["Arena Treasure Chest"] = true,
	["Abercrombie's Crate"] = true,
	["Rusty Chest"] = true,
	["Marshal Haggard's Chest"] = true,
	["Sealed Supply Crate"] = true,
	["Damaged Crate"] = true,
	["Gizmorium Shipping Crate"] = true,
	["Shay's Chest"] = true,
	["Kerlonian's Chest"] = true,
	
	
} end)

L:RegisterTranslations("deDE", function() return {
	["Filter"] = "Filter",
	["Filter out treasure"] = "Filtere Sch\195\164tze",	
	["Select all"] = "Alle ausw\195\164hlen",
	["Select none"] = "Nichts ausw\195\164hlen",
	
  ["Treasure"] = "Sch\195\164tze",
	["Module description"] = "Notizen von Schatzfundorten f\195\188r Cartographer (basiert auf Cartographer_Mining von kergoth)",
  
  ["Icon alpha"] = "Transparenz",
	["Alpha transparency of the icon"] = "Transparenz der Symbole",
	["Icon size"] = "Symbolgr\195\182\195\159e",
	["Size of the icons on the map"] = "Gr\195\182\195\159e des Symbols auf der Karte",
  
  -- Icons
	["Box"] = "Kiste",
  ["Chest"] = "Truhe",
	["Clam"] = "Muschel",
	["Barrel"] = "Fass",
	["Shellfish"] = "Schalentier",
	["Footlocker"] = "Schlie\195\159kiste",
	["Blood"] = "Blut",
	["Soil"] = "Erde",
	["Sprout"] = "Spr\195\182ssling",
	["Crystal"] = "Kristall",
	["Berries"] = "Beeren",
	["Tuber"] = "Knollen",
	["Nightdragon"] = "Nachtdrache",
	["Songflower"] = "Liedblume",	
  
  -- Descriptive/Menu names
	["Blood of Heroes"] = "Blut von Helden",
	["Un'Goro Dirt Pile"] = "Un'Goro-Erdhaufen",
	["Bloodpetal Sprout"] = "Blutbl\195\188tenspr\195\182ssling",
	["Power Crystal"] = "Machtkristall",
	["Food Crate"] = "Lebensmittelkiste",
	["Drink Barrel"] = "Fass mit Getr\195\164nken", -- check
	["Shellfish Trap"] = "Schalentierfalle",
	["Giant Clam"] = "Riesenmuschel",
	["Un'Goro Power Crystal"] = "Un'Goro-Machtkristall", --check
	["Night Dragon's Breath"] = "Nachtdrachenodem",
	["Nightdragon"] = "Nachtdrache",
	["Whipper Root Tuber"] = "Peitscherwurzelknollen",
	["Whipper Root"] = "Peitscherwurzel",
	["Windblossom Berries"] = "Windbl\195\188tenbeeren",
	["SongFlower"] = "Liedblume",
	["Songflower"] = "Liedblume",
	-- regex needs
	["Crate"] = "Kiste",
	["Cask"] = "Fass",
	["Dirt Pile"] = "Erdhaufen",
} end)


L:RegisterTranslations("frFR", function() return {
   ["Filter"] = "filtrer",
   ["Filter out treasure"] = "filtrer les tr\195\169sors",   
   ["Select all"] =  "Tout selectionner",
   ["Select none"] = "Rien selectionner",
   
  ["Treasure"] = "tr\195\169sors et consommables",
   ["Module description"] = "Notes Cartographe pour les tr\195\169sors et consommables (based on Cartographer_Mining by kergoth)",
 
  ["Icon alpha"] = "alpha icone",
   ["Alpha transparency of the icon"] = "transparence alpha de l'icone",
   ["Icon size"] = "taille de l'icone",
   ["Size of the icons on the map"] = "taille des icones sur la carte",
   
   -- Icons
   ["Box"] = "Boite",
   ["Chest"] = "Coffre",
   ["Clam"] = "Palourde",
   ["Barrel"] = "Baril",
   ["Shellfish"] = "Crustac\195\169s",
   ["Footlocker"] = "Pi\195\168ge",
   ["Blood"] = "Sang",
   ["Soil"] = "Tas de poussi\195\168re",
   ["Sprout"] = "Pousse",
   ["Crystal"] = "Cristal",
   ["Berries"] = "Baies",
   ["Tuber"] = "Tubercule",
   ["Nightdragon"] = "Dragon de nuit",
   ["Songflower"] = "Fleur-de-chant",


   -- Descriptive/Menu names
   ["Blood of Heroes"] = "Sang des h\195\169ros",
   ["Hero"] = "h\195\169ro",
   ["Un'Goro Dirt Pile"] = "Tas de poussi\195\168re d'Un'Goro",
   ["Bloodpetal Sprout"] = "Pousse de P\195\169tale-de-sang",
   ["Power Crystal"] = "Cristal de puissance",
   ["Food Crate"] = "Caisse de nourriture",
   ["Drink Barrel"] = "Barrique de boisson",
   ["Shellfish Trap"] = "Pi\195\168ge a crustac\195\169s",
   ["Giant Clam"] = "Palourde g\195\169ante",
   ["Un'Goro Power Crystal"] = "Cristal de puissance d'Ungoro",
   ["Night Dragon's Breath"] = "Souffle de dragon nocturne",
   ["Nightdragon"] = "Dragon nocturne",
   ["Whipper Root Tuber"] = "Tubercule de navetille",
   ["Whipper Root"] = "Navetille",
   ["Windblossom Berries"] = "Baies de fleur-de-vent",
   ["SongFlower"] = "Fleur-de-chant",
   ["Songflower"] = "Fleur de chant",
   -- regex needs
   ["Crate"] = "Caisse",
   ["Cask"] = "Tonneau",
   ["Dirt Pile"] = "Pile de d\195\169chets",
   
} end)

L:RegisterTranslations("esES", function() return {
	["Filter"] = "Filtrar",
	["Filter out treasure"] = "Filtra tesoros",
	["Select all"] = "Seleccionar todo",
	["Select none"] = "No seleccionar nada",

  ["Treasure"] = "Tesoro",
	["Module description"] = "Notas de mapa de tesoros para Cartographer (basado en Cartographer_Mining por kergoth)",
  
  ["Icon alpha"] = "Transparencia de icono",
	["Alpha transparency of the icon"] = "Transparencia del icono",
	["Icon size"] = "Tama\195\177o del icono",
	["Size of the icons on the map"] = "Tama\195\177o de los iconos en el mapa",
	
	-- Icons
	["Box"] = "Caja",
	["Chest"] = "Cofre",
	["Clam"] = "Almeja",
	["Barrel"] = "Barril",
	["Shellfish"] = "Marisco",
	["Footlocker"] = "Cofre personal",
	["Blood"] = "Sangre",
	["Soil"] = "Tierra",
	["Sprout"] = "Brote",
	["Crystal"] = "Cristal",
	["Berries"] = "Bayas",
	["Tuber"] = "Tub\195\169rculo",
--	["Nightdragon"] = true,
--	["Songflower"] = true,

	-- Descriptive/Menu names
--	["Blood of Heroes"] = true,
--	["Hero"] = true,
--	["Un'Goro Dirt Pile"] = true,
--	["Bloodpetal Sprout"] = true,
--	["Power Crystal"] = true,
--	["Food Crate"] = true,
--	["Drink Barrel"] = true,
--	["Shellfish Trap"] = true,
--	["Giant Clam"] = true,
--	["Un'Goro Power Crystal"] = true,
--	["Night Dragon's Breath"] = true,
--	["Nightdragon"] = true,
--	["Whipper Root Tuber"] = true,
--	["Whipper Root"] = true,
--	["Windblossom Berries"] = true,
--	["SongFlower"] = true,
--	["Songflower"] = true,
	-- regex needs
--	["Crate"] = true,
--	["Cask"] = true,
--	["Dirt Pile"] = true,
	--- Various treasure found around the world
--	["Solid Chest"] = true,
--	["Battered Footlocker"] = true,
--	["Food Crate"] = true,
--	["Barrel Of Melon Juice"] = true,
--	["Horde Supply Crate"] = true,
--	["Document Chest"] = true,
--	["Damaged Chest"] = true,
--	["Alliance Chest"] = true,
--	["Barrel Of Sweet Nectar"] = true,
--	["Trelane's Chest"] = true,
--	["Battered Chest"] = true,
--	["Barrel Of Milk"] = true,
--	["Box of Assorted Parts"] = true,
--	["Broken Barrel"] = true,
--	["Alexston's Chest"] = true,
--	["Excavation Supply Crate"] = true,
--	["Chest Of Containment Coffers"] = true,
--	["Karnitol's Chest"] = true,
--	["Malem Chest"] = true,
--	["Water Barrel"] = true,
--	["Perrine's Chest"] = true,
--	["Weapon Crate"] = true,
--	["Crate With Holes"] = true,
--	["Stolen Iron Chest"] = true,
--	["Armor Crate"] = true,
--	["Marvon's Chest"] = true,
--	["Scattered Crate"] = true,
--	["Caravan Chest"] = true,
--	["Mossy Footlocker"] = true,
--	["Worn Wooden Chest"] = true,
--	["Arena Treasure Chest"] = true,
--	["Abercrombie's Crate"] = true,
--	["Rusty Chest"] = true,
--	["Marshal Haggard's Chest"] = true,
--	["Sealed Supply Crate"] = true,
--	["Damaged Crate"] = true,
--	["Gizmorium Shipping Crate"] = true,
--	["Shay's Chest"] = true,
--	["Kerlonian's Chest"] = true,

	
} end)

L:RegisterTranslations("koKR", function() return {
	["Filter"] = "필터링",
	["Filter out treasure"] = "보물상자 필터링",	
	["Select all"] = "모두 선택",
	["Select none"] = "선택 해제",
	["Treasure"] = "보물",
	-- Icons
	["Box"] = "상자",
	["Chest"] = "궤짝",
	["Clam"] = "조개",
	["Barrel"] = "음료",
	["Shellfish"] = "통발",
	["Footlocker"] = "사물함",
	["Blood"] = "피",
	["Soil"] = "토양",
	["Sprout"] = "씨앗",
	["Crystal"] = "수정",
	["Berries"] = "바람꽃 열매",
	["Tuber"] = "채찍뿌리 줄기",
	["Nightdragon"] = "어둠용의 숨결",
	["Songflower"] = "노래꽃",
	
	-- Descriptive/Menu names
	["Blood of Heroes"] = "영웅의 피",
	["Un'Goro Dirt Pile"] = "운고로 흙더미",
	["Bloodpetal Sprout"] = "붉은꽃잎 씨앗",
	["Power Crystal"] = "마력의 수정",
	["Food Crate"] = "음식 상자",
	["Drink Barrel"] = "물통",
	["Shellfish Trap"] = "가재 통발",
	["Giant Clam"] = "대합",
	["Un'Goro Power Crystal"] = "운고로 마력의 수정",
	["Night Dragon's Breath"] = "어둠용의 숨결",
	["Nightdragon"] = "어둠용",
	["Whipper Root Tuber"] = "채찍뿌리 줄기",
	["Whipper Root"] = "채찍뿌리",
	["Windblossom Berries"] = "바람꽃 열매",
	["SongFlower"] = "노래꽃",
	["Songflower"] = "노래꽃",
	-- regex needs
	["Crate"] = "바구니",
	["Cask"] = "통",
	["Dirt Pile"] = "흙더미",
} end)

L:RegisterTranslations("zhTW", function() return {
	["Filter"] = "篩檢",
} end)

L:RegisterTranslations("zhCN", function() return {
--	["Filter"] = true,	
} end)

Cartographer_Treasure = Cartographer:NewModule("Treasure", "AceConsole-2.0", "AceEvent-2.0")

-- Filter configuration
Cartographer_Treasure.filter = {
	["Barrel"] = L["Drink Barrel"],
	["Blood"] = L["Blood of Heroes"],
	["Box"] = L["Food Crate"],
	["Chest"] = L["Chest"],
	["Clam"] = L["Giant Clam"],
	["Crystal"] = L["Un'Goro Power Crystal"],
	["Shellfish"] = L["Shellfish Trap"],
	["Footlocker"] = L["Footlocker"],
	["Soil"] = L["Un'Goro Dirt Pile"],
	["Sprout"] = L["Bloodpetal Sprout"],
	["Whipper Root Tuber"] = L["Whipper Root Tuber"],
	["SongFlower"] = L["SongFlower"],
	["Night Dragon's Breath"] = L["Night Dragon's Breath"],
	["Windblossom Berries"] = L["Windblossom Berries"],	
}
-- icons for felwood
Cartographer_Treasure.icon_felwood = {
	["Windblossom Berries"] = {
		text = L["Windblossom Berries"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\Berries",
		width = 14,
		height = 14,
	},
	["Night Dragon's Breath"] = {
		text = L["Night Dragon's Breath"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\Sprout",
		width = 14,
		height = 14
	},
	["Whipper Root Tuber"] = {
		text = L["Whipper Root Tuber"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\Tuber",
		width = 14,
		height = 14
	},
	["SongFlower"] = {
		text = L["SongFlower"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\songflower",
		width = 14,
		height = 14
	},	
}
Cartographer_Treasure.icon = {
	["Box"] = {
		text = L["Box"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\Crate",
		width = 14,
		height = 14,
	},
	["Barrel"] = {
		text = L["Barrel"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\Barrel",
		width = 14,
		height = 14
	},
	["Blood"] = {
		text = L["Blood"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\HeroBlood",
		width = 14,
		height = 14
	},
	["Chest"] = {
		text = L["Chest"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\Chest",
		width = 14,
		height = 14
	},
	["Clam"] = {
		text = L["Clam"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\ClamShell",
		width = 14,
		height = 14
	},
	["Crystal"] = {
		text = L["Crystal"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\Crystal",
		width = 14,
		height = 14
	},
	["Shellfish"] = {
		text = L["Shellfish"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\Lobster",
		width = 14,
		height = 14
	},
	["Footlocker"] = {
		text = L["Chest"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\Footlocker",
		width = 14,
		height = 14
	},
	["Soil"] = {
		text = L["Soil"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\Soil",
		width = 14,
		height = 14
	},
	["Sprout"] = {
		text = L["Sprout"],
		path = "Interface\\AddOns\\Cartographer_Treasure\\Artwork\\Sprout",
		width = 14,
		height = 14
	},
}
local regex_filter = {
	-- food boxes
	[L["Box"]] = "Box",
	[L["Crate"]] = "Box",
	-- chest goodies
	[L["Chest"]] = "Chest",
	-- underwater clam
	[L["Clam"]] = "Clam",
	-- drink tanks
	[L["Barrel"]] = "Barrel",
	[L["Cask"]] = "Barrel",
	-- Shellfish trap
	[L["Shellfish"]] = "Shellfish",
	-- rogue practice footlockers
	[L["Footlocker"]] = "Footlocker",
	-- EPL/WPL blood
	[L["Blood of Heroes"]] = "Blood",
	[L["Hero"]] = "Blood",
	-- Ungoro
	[L["Un'Goro Dirt Pile"]] = "Soil",
	[L["Dirt Pile"]] = "Soil",
	[L["Bloodpetal Sprout"]] = "Sprout",
	[L["Power Crystal"]] = "Crystal",
	-- Felwood
	[L["Nightdragon"]] = "Nightdragon",
	[L["SongFlower"]] = "SongFlower",
	[L["Songflower"]] = "SongFlower",
	[L["Windblossom Berries"]] = "Windblossom Berries",
	[L["Whipper Root"]] = "Whipper Root Tuber",
	[L["Night Dragon's Breath"]] = "Night Dragon's Breath",
	[L["Nightdragon"]] = "Night Dragon's Breath",
}
local direct_lookup = {
	["Blood of Heroes"] = "Blood",
	["Un'Goro Dirt Pile"] = "Soil",
	["Bloodpetal Sprout"] = "Sprout",
	["Food Crate"] = "Box",
	["Shellfish Trap"] = "Shellfish",
	["Giant Clam"] = "Clam",
	["Night Dragon's Breath"] = "Night Dragon's Breath",
	["Whipper Root Tuber"] = "Whipper Root Tuber",
	["Windblossom Berries"] = "Windblossom Berries",
	["SongFlower"] = "SongFlower",
	["Solid Chest"] = "Chest",
	["Battered Footlocker"] = "Footlocker",
	["Food Crate"] = "Box",
	["Barrel Of Melon Juice"] = "Barrel",
	["Horde Supply Crate"] = "Box",
	["Document Chest"] = "Chest",
	["Damaged Chest"] = "Chest",
	["Alliance Chest"] = "Chest",
	["Barrel Of Sweet Nectar"] = "Barrel",
	["Trelane's Chest"] = "Chest",
	["Battered Chest"] = "Chest",
	["Barrel Of Milk"] = "Barrel",
	["Box of Assorted Parts"] = "Box",
	["Broken Barrel"] = "Barrel",
	["Alexston's Chest"] = "Chest",
	["Excavation Supply Crate"] = "Box",
	["Chest Of Containment Coffers"] = "Box",
	["Karnitol's Chest"] = "Chest",
	["Malem Chest"] = "Chest",
	["Water Barrel"] = "Barrel",
	["Perrine's Chest"] = "Chest",
	["Weapon Crate"] = "Box",
	["Crate With Holes"] = "Box",
	["Stolen Iron Chest"] = "Chest",
	["Armor Crate"] = "Box",
	["Marvon's Chest"] = "Chest",
	["Scattered Crate"] = "Box",
	["Caravan Chest"] = "Chest",
	["Mossy Footlocker"] = "Footlocker",
	["Worn Wooden Chest"] = "Chest",
	["Arena Treasure Chest"] = "Chest",
	["Abercrombie's Crate"] = "Box",
	["Rusty Chest"] = "Chest",
	["Marshal Haggard's Chest"] = "Chest",
	["Sealed Supply Crate"] = "Box",
	["Damaged Crate"] = "Box",
	["Gizmorium Shipping Crate"] = "Box",
	["Shay's Chest"] = "Chest",
	["Kerlonian's Chest"] = "Chest",	
}
local cache = {}
local lua51
function Cartographer_Treasure:OnInitialize()
	self.db = Cartographer:AcquireDBNamespace("Treasure")
	Cartographer:RegisterDefaults("Treasure", "profile", {
		filter = {
			['*'] = true,
		},
		iconAlpha = 1,
		iconScale = 1,
	})
	-- clear our cache we may have to do some renaming
	
	local aceopts = {}
	aceopts.toggle = {
		name = Cartographer.L["Active"],
		desc = Cartographer.L["Suspend/resume this module."],
		type  = 'toggle',
		order = -1,
		get   = function() return Cartographer:IsModuleActive(self) end,
		set   = function() Cartographer:ToggleModuleActive(self) end,
	}
	aceopts.trans = {
		name = L["Icon alpha"],
		desc = L["Alpha transparency of the icon"],
		type = 'range',
		min = 0.1,
		max = 1,
		step = 0.05,
		isPercent = true,
		get = "GetIconAlpha",
		set = "SetIconAlpha",
		order = 1
	}
	aceopts.scal = {
		name = L["Icon size"],
		desc = L["Size of the icons on the map"],
		type = 'range',
		min = 0.5,
		max = 2,
		step = 0.05,
		isPercent = true,
		get = "GetIconScale",
		set = "SetIconScale",
		order = 1
	}

	aceopts.filter = {
		name = L["Filter"],
		desc = L["Filter out treasure"],
		type = 'group',
		args = {
			all = {
				name = L["Select all"],
				desc = L["Select all"],
				type = 'execute',
				func = function()
					for k in pairs(self.filter) do
						self:ToggleShowingTreasure(k, true)
					end
				end,
				order = 1,
			},
			none = {
				name = L["Select none"],
				desc = L["Select none"],
				type = 'execute',
				func = function()
					for k in pairs(self.filter) do
						self:ToggleShowingTreasure(k, false)
					end
				end,
				order = 2,
			},
			blank = {
				type = 'header',
				order = 3,
			}
		}
	}
	for k,v in pairs(self.filter) do
		local k = k 
		aceopts.filter.args[string.gsub(k, "%s", "-")] = {
			name = v,
			desc = v,
			type = 'toggle',
			get = function()
				return self:IsShowingTreasure(k)
			end,
			set = function(value)
				return self:ToggleShowingTreasure(k, value)
			end,
		}
	end	

	Cartographer.options.args.Treasure = {
		name = L["Treasure"],
		desc = L["Module description"],
		type = 'group',
		args = aceopts,
		handler = self,
	}
	AceLibrary("AceConsole-2.0"):InjectAceOptionsTable(self, Cartographer.options.args.Treasure)
	
	if not Cartographer_TreasureDB then
		Cartographer_TreasureDB = {}
	else
    -- Felwood farmer support
    local _, _, _, fenabled, floadable, freason, _ = GetAddOnInfo("FelwoodFarmer")
    if fenabled then
      self.felwood_farmer = true
    else -- no felwood farmer installed
      self.felwood_farmer = false
      if not Cartographer_TreasureDB["Felwood"] then Cartographer_TreasureDB["Felwood"] = {} end
      Cartographer_TreasureDB["Felwood"][122616] = "Whipper Root Tuber"
      Cartographer_TreasureDB["Felwood"][191598] = "Whipper Root Tuber"
      Cartographer_TreasureDB["Felwood"][183689] = "Whipper Root Tuber"
      Cartographer_TreasureDB["Felwood"][470900] = "Whipper Root Tuber"
      Cartographer_TreasureDB["Felwood"][602943] = "Whipper Root Tuber"
      Cartographer_TreasureDB["Felwood"][853253] = "Whipper Root Tuber"
      Cartographer_TreasureDB["Felwood"][304810] = "Night Dragon's Breath" 
      Cartographer_TreasureDB["Felwood"][139564] = "Night Dragon's Breath"
      Cartographer_TreasureDB["Felwood"][589940] = "Night Dragon's Breath"
      Cartographer_TreasureDB["Felwood"][784190] = "Night Dragon's Breath"
      Cartographer_TreasureDB["Felwood"][70628]  = "Windblossom Berries"
      Cartographer_TreasureDB["Felwood"][183637] = "Windblossom Berries"
      Cartographer_TreasureDB["Felwood"][219607] = "Windblossom Berries"
      Cartographer_TreasureDB["Felwood"][417865] = "Windblossom Berries"
      Cartographer_TreasureDB["Felwood"][487830] = "Windblossom Berries"
      Cartographer_TreasureDB["Felwood"][591981] = "Windblossom Berries"
      Cartographer_TreasureDB["Felwood"][620986] = "Windblossom Berries"
      Cartographer_TreasureDB["Felwood"][801300] = "Windblossom Berries"
      Cartographer_TreasureDB["Felwood"][235787] = "Windblossom Berries"
      Cartographer_TreasureDB["Felwood"][200775] = "Windblossom Berries"
      Cartographer_TreasureDB["Felwood"][758240] = "SongFlower"
      Cartographer_TreasureDB["Felwood"][61700]  = "SongFlower"
      Cartographer_TreasureDB["Felwood"][853311] = "SongFlower"
      Cartographer_TreasureDB["Felwood"][444845] = "SongFlower"
      Cartographer_TreasureDB["Felwood"][565966] = "SongFlower"
      Cartographer_TreasureDB["Felwood"][522865] = "SongFlower"
      Cartographer_TreasureDB["Felwood"][226859] = "SongFlower"
      Cartographer_TreasureDB["Felwood"][139645] = "SongFlower"
      Cartographer_TreasureDB["Felwood"][879407] = "SongFlower" 
    end
	end
	lua51 = loadstring("return function(...) return ... end") and true or false
end

-- Enable function
function Cartographer_Treasure:OnEnable()
	if Cartographer_Notes then
		self:RegisterEvent("UI_ERROR_MESSAGE")
		if lua51 then
			self:RegisterEvent("CHAT_MSG_SPELL_SELF_BUFF")
		else
			self:RegisterEvent("SPELLCAST_START")
		end	
	
		if not self.iconsregistered then
			for k,v in pairs(self.icon) do
				Cartographer_Notes:RegisterIcon(k, v)
			end
			if not self.felwood_farmer then
				for k,v in pairs(self.icon_felwood) do
					Cartographer_Notes:RegisterIcon(k,v)
				end
			end
			self.iconsregistered = true
		end
		Cartographer_Notes:RegisterNotesDatabase('Treasure', Cartographer_TreasureDB, self)
	else
		Cartographer:ToggleTreasureActive(self, false)
	end
end

-- Disable function
function Cartographer_Treasure:OnDisable()
	self:UnregisterAllEvents()
	if Cartographer_Notes then
		Cartographer_Notes:UnregisterNotesDatabase('Treasure')
	end
end

function Cartographer_Treasure:ImportNote(zone,x,y,name)
	local icon = self:getIcon(name)
	if icon then
		Cartographer_Notes:SetNote(zone,x,y,icon,"Treasure",'title',name)
		return true
	end
	return false
end

-- Set the note
function Cartographer_Treasure:SetNote(what,details)
	local x, y = GetPlayerMapPosition("player")
	if x == 0 and y == 0 then return end
	local zone = GetRealZoneText()
	for zone, x_p, y_p, icon, creator, data in Cartographer_Notes:IterateNearbyNotes(zone, x, y, 2, "Treasure") do
		if icon == what then
			Cartographer_Notes:DeleteNote(zone, x_p, y_p)
		end
	end
	Cartographer_Notes:SetNote(zone, x, y, what, "Treasure",'title',details)
end

function Cartographer_Treasure:OnNoteTooltipRequest(zone, id)
  local icon = Cartographer_TreasureDB[zone][id]
  
  Tablet:SetTitle(L[icon])
  Tablet:SetTitleColor(0, 0.8, 0)
  
  Tablet:AddCategory(
    'columns', 2,
    'hideBlankLine', true
  ):AddLine(
    'text', AceLibrary("AceLocale-2.2"):new("Cartographer-Notes")["Created by"],
    'text2', "Treasure"
  )
end

function Cartographer_Treasure:getIcon(item)
	if item and strlen(item) > 0 then	
		local item = string.gsub(item,"^(.-) %(%d+%)$", "%1")
		if cache[item] then
			return cache[item]
		end
		-- check direct lookup
		if L:HasReverseTranslation(item) and direct_lookup[L:GetReverseTranslation(item)] then
			local icon = direct_lookup[L:GetReverseTranslation(item)]
			cache[item] = icon
			return icon
		end
		for k,v in pairs(regex_filter) do
			local _,_,found = string.find(item,k)
			if (found) then
				cache[k] = v
				return v
			end
		end
		return nil
	else
		return nil
	end
end

-- regex match
function Cartographer_Treasure:RegisterTreasure(what)
	local icon = self:getIcon(what)
	local _,_,found
	if icon then
		_,_,found = string.find(what,"("..L["Power Crystal"]..")")
		if found == L["Power Crystal"] then
			what = L["Un'Goro Power Crystal"]
		end
		_,_,found = string.find(what,"("..L["Whipper Root Tuber"]..")")
		if found == L["Whipper Root Tuber"] then
			what = L["Whipper Root Tuber"]
		end
		_,_,found = string.find(what,"("..L["Night Dragon's Breath"]..")")
		if found == L["Night Dragon's Breath"] then
			what = L["Night Dragon's Breath"]
		end
		_,_,found = string.find(what,"("..L["Windblossom Berries"]..")")
		if found == L["Windblossom Berries"] then
			what = L["Windblossom Berries"]
		end
		_,_,found = string.find(what,"("..L["Songflower"]..")")
		if found == L["Songflower"] then
			what = L["SongFlower"]
		end
		if L:HasReverseTranslation(what) then
			self:SetNote(icon,L:GetReverseTranslation(what))
		else
			self:SetNote(icon,what)
		end
	end	
end

-- i used this from cart mining seemes over complicated, but maybe due to localization issues
local perform_string = '^' .. string.gsub(string.gsub(string.format(SIMPLEPERFORMSELFOTHER, bs["Opening"], "%s"), "([%(%)%.%*%+%-%[%]%?%^%$%%])", "%%%1"), "%%%%s", "(.+)") .. '$'

-- This shouldnt fire apparently
function Cartographer_Treasure:CHAT_MSG_SPELL_SELF_BUFF(msg)
	local _,_,what = string.find(msg,perform_string)
	if what then
		self:RegisterTreasure(what)
	end
end

-- opening now seems to just do a blank "Opening cast spell"
function Cartographer_Treasure:SPELLCAST_START(msg)
	if (msg == bs["Opening"]) or (msg == bs["Pick Lock"]) or (msg == L["Un'Goro Dirt Pile"]) then
		local what = GameTooltipTextLeft1:GetText();
		if what then
			self:RegisterTreasure(what)
		end
	end
end

-- Error your in comabt or had to pick the lock
function Cartographer_Treasure:UI_ERROR_MESSAGE(msg)
	-- see if we are trying to open/activate something while mounted
	if (string.find(msg,SPELL_FAILED_NOT_MOUNTED)) or (string.find(msg,ERR_NOT_IN_COMBAT)) then
		local what = GameTooltipTextLeft1:GetText()
		if what then
			self:RegisterTreasure(what)
		end
	end
end

function Cartographer_Treasure:IsNoteHidden(zone, id)
  if type(Cartographer_TreasureDB[zone][id]) == "table" then
    return not self.db.profile.filter[Cartographer_TreasureDB[zone][id].icon]
  end
  return not self.db.profile.filter[Cartographer_TreasureDB[zone][id]]
end

function Cartographer_Treasure:IsShowingTreasure(treasure)
	return self.db.profile.filter[treasure]
end

function Cartographer_Treasure:ToggleShowingTreasure(treasure, value)
	if value == nil then
		value = not self.db.profile.filter[treasure]
	end
	self.db.profile.filter[treasure] = value
	self:ScheduleEvent("CartographerTreasure_RefreshMap", Cartographer_Notes.RefreshMap, 0, Cartographer_Notes)
end

function Cartographer_Treasure:GetIconScale()
	return self.db.profile.iconScale
end

function Cartographer_Treasure:SetIconScale(value)
	self.db.profile.iconScale = value
	self:ScheduleEvent("CartographerTreasure_RefreshMap", Cartographer_Notes.RefreshMap, 0, Cartographer_Notes)
end
function Cartographer_Treasure:GetIconAlpha()
	return self.db.profile.iconAlpha
end

function Cartographer_Treasure:SetIconAlpha(value)
	self.db.profile.iconAlpha = value
	self:ScheduleEvent("CartographerTreasure_RefreshMap", Cartographer_Notes.RefreshMap, 0, Cartographer_Notes)
end

function Cartographer_Treasure:GetNoteTransparency(zone,id,data)
	return self.db.profile.iconAlpha
end
function Cartographer_Treasure:GetNoteScaling(zone,id,data)
	return self.db.profile.iconScale
end