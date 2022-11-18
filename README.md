## to get started read all please... 



# chase-fishing
qbcore advanced fishing

animated fishing where you pull fish out of water
animated loot boxes you open
animated salvage items

boat rental
sell fish
fish shop
lots of stuffs !

preview:

https://youtu.be/BEJLj06NZhI

--===========================================--

DEPPIES:

https://github.com/qbcore-framework/qb-core

https://github.com/qbcore-framework/qb-target

https://github.com/qbcore-framework/dpemotes

https://github.com/qbcore-framework/qb-menu

https://github.com/qbcore-framework/progressbar

https://github.com/Nathan-FiveM/qb-lock

--===========================================--

this is set up for legacy fuel via the boat rental, you can easily change it in the fishing client main. its 1 line  CTRL F and search LeagcyFuel.

this is a WIP tho it is fully functioning, i plan on adding to and making it more interactive, more items, more fun!

enjoy. any issues please let me know!, i hope to have inclueded all item PNGS it was a lot again, if there is a issue let me know TY.







--fish / tiems to catch while fishing.. 
## add to core / items.lua 



	['bristlenosepleco'] 			 = {['name'] = 'bristlenosepleco', 				['label'] = 'Bristlenose Pleco', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'bristlenosepleco.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['goldnuggetpleco'] 			 = {['name'] = 'goldnuggetpleco', 				['label'] = 'Gold Nugget Pleco', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'goldnuggetpleco.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['whiptailcatfish'] 			 = {['name'] = 'whiptailcatfish', 				['label'] = 'Whiptail Catfish', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'whiptailcatfish.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['panaque'] 			 = {['name'] = 'panaque', 				['label'] = 'Panaque', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'panaque.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['redtailcatfish'] 			 = {['name'] = 'redtailcatfish', 				['label'] = 'Redtail Catfish', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'redtailcatfish.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['pictuscatfish'] 			 = {['name'] = 'pictuscatfish', 				['label'] = 'Pictus Catfish', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'pictuscatfish.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['marlin'] 			 = {['name'] = 'marlin', 				['label'] = 'Marlin', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'marlin.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['swordfish'] 			 = {['name'] = 'swordfish', 				['label'] = 'Sword Fish', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'swordfish.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['sailfish'] 			 = {['name'] = 'sailfish', 				['label'] = 'Sail Fish', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'sailfish.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['snapper'] 			 = {['name'] = 'snapper', 				['label'] = 'Snapper', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'snapper.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['grouper'] 			 = {['name'] = 'grouper', 				['label'] = 'Grouper', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'grouper.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['wahoo'] 			 = {['name'] = 'wahoo', 				['label'] = 'Wahoo', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'wahoo.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['mahimahi'] 			 = {['name'] = 'mahimahi', 				['label'] = 'Mahi-Mahi', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'mahimahi.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['cobia'] 			 = {['name'] = 'cobia', 				['label'] = 'Cobia', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'cobia.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['tuna'] 			 = {['name'] = 'tuna', 				['label'] = 'Tuna', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'tuna.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['bluegill'] 			 = {['name'] = 'bluegill', 				['label'] = 'Blue Gill', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'bluegill.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['crappie'] 			 = {['name'] = 'crappie', 				['label'] = 'Crappie',			['weight'] = 150, 		['type'] = 'item', 		['image'] = 'crappie.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['musky'] 			 = {['name'] = 'musky', 				['label'] = 'Musky', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'musky.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['northernpike'] 			 = {['name'] = 'northernpike', 				['label'] = 'Northern Pike', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'northernpike.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['walleye'] 			 = {['name'] = 'walleye', 				['label'] = 'Walleye', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'walleye.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['salmon'] 			 = {['name'] = 'salmon', 				['label'] = 'Salmon', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'salmon.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['pumpkinseed'] 			 = {['name'] = 'pumpkinseed', 				['label'] = 'Pumpkin Seed Fish', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'pumpkinseed.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['rockbass'] 			 = {['name'] = 'rockbass', 				['label'] = 'Rock Bass', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'rockbass.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['yellowpurch'] 			 = {['name'] = 'yellowpurch', 				['label'] = 'Yellow Purch', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'yellowpurch.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['bullhead'] 			 = {['name'] = 'bullhead', 				['label'] = 'Bullhead', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'bullhead.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['sturgeon'] 			 = {['name'] = 'sturgeon', 				['label'] = 'Sturgeon', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'sturgeon.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['halibut'] 			 = {['name'] = 'halibut', 				['label'] = 'Halibut', 				['weight'] = 150, 		['type'] = 'item', 		['image'] = 'halibut.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['stingray'] 			     	 = {['name'] = 'stingray', 				    ['label'] = 'Stingray',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'stingray.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Stingray'},
	['flounder'] 			     	 = {['name'] = 'flounder', 				    ['label'] = 'Flounder',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'flounder.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Flounder'},
	['codfish'] 			     	 = {['name'] = 'codfish', 				    ['label'] = 'Cod',            			['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'codfish.png',         		['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Cod'},
	['mackerel'] 			     	 = {['name'] = 'mackerel', 				    ['label'] = 'Mackerel',            		['weight'] = 2500,      ['type'] = 'item',      ['image'] = 'mackerel.png',         	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Mackerel'},
	['bass'] 			 		 	 = {['name'] = 'bass', 						['label'] = 'Bass',                     ['weight'] = 1250,      ['type'] = 'item',      ['image'] = 'bass.png',                 ['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'A normal fish Tatses pretty good!'},
	['fishingtin'] 			 	 	 = {['name'] = 'fishingtin', 				['label'] = 'Fishing Tin', 				['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'fishingtin.png', 			['unique'] = false,    ['useable'] = false, 	['shouldClose'] = false,	 ['combinable'] = nil,   ['description'] = 'Fishing Tin'},	
	['fishingboot'] 			 	 = {['name'] = 'fishingboot', 				['label'] = 'Fishing Boot', 			['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'fishingboot.png', 			['unique'] = false,    ['useable'] = false, 	['shouldClose'] = false,	 ['combinable'] = nil,   ['description'] = 'Fishing Boot'},	
	['killerwhale'] 			 	 = {['name'] = 'killerwhale', 				['label'] = 'Whale', 					['weight'] = 15000, 	['type'] = 'item', 		['image'] = 'killerwhale.png', 			['unique'] = true, 	   ['useable'] = false, 	['shouldClose'] = false,	 ['combinable'] = nil,   ['description'] = 'Killer Whale'},	
	['dolphin'] 			     	 = {['name'] = 'dolphin', 					['label'] = 'Dolphin',          		['weight'] = 5000,      ['type'] = 'item',      ['image'] = 'dolphin.png',       		['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Dolphin'},
	['sharkhammer'] 			     = {['name'] = 'sharkhammer', 				['label'] = 'Shark',         			['weight'] = 5000,      ['type'] = 'item',      ['image'] = 'sharkhammer.png',       	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Hammerhead Shark'},
	['sharktiger'] 			     	 = {['name'] = 'sharktiger', 				['label'] = 'Shark',          			['weight'] = 5000,      ['type'] = 'item',      ['image'] = 'sharktiger.png',       	['unique'] = true,     ['useable'] = false,     ['shouldClose'] = false,     ['combinable'] = nil,   ['description'] = 'Tigershark'},
	['exoticfish'] 			 = {['name'] = 'exoticfish', 				['label'] = 'Exotic Fish', 				['weight'] = 1585, 		['type'] = 'item', 		['image'] = 'exoticfish.png', 		['unique'] = true, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Looks like i should throw this one back, might get me in trouble..'},
	['fishbait'] 			 = {['name'] = 'fishbait', 				['label'] = 'Fishing lure', 				['weight'] = 45, 		['type'] = 'item', 		['image'] = 'fishingbait.png', 		['unique'] = false, 		['useable'] = false, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Kind of stinks.. pew'},
	['fishingrod'] 			 = {['name'] = 'fishingrod', 				['label'] = 'Fishing Rod', 				['weight'] = 2200, 		['type'] = 'item', 		['image'] = 'fishingrod.png', 		['unique'] = true, 		['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'finely crafted pole, Made in Baileys!'},
	['anchor'] 			 	 		 = {['name'] = 'anchor', 					['label'] = 'Boat Anchor', 				['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'anchor.png', 				['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Boat Anchor'},	
	['fishicebox'] 			 	 	 = {['name'] = 'fishicebox', 				['label'] = 'Fishing Ice Chest', 		['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'fishicebox.png', 			['unique'] = true,     ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Ice Box to store all of your fish'},	
	['fishingloot'] 			 	 = {['name'] = 'fishingloot', 				['label'] = 'Metal Box', 				['weight'] = 500, 		['type'] = 'item', 		['image'] = 'fishingloot.png', 			['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Seems to be a corroded from the salt water, Should be easy to open'},	
	['fishinglootbig'] 			 	 = {['name'] = 'fishinglootbig', 			['label'] = 'Treasure Chest', 			['weight'] = 2500, 		['type'] = 'item', 		['image'] = 'fishinglootbig.png', 		['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'The lock seems to be intact, Might need a key'},	
	['fishingkey'] 			 	 	 = {['name'] = 'fishingkey', 			    ['label'] = 'Corroded Key', 			['weight'] = 100, 		['type'] = 'item', 		['image'] = 'fishingkey.png', 		    ['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A weathered key that looks usefull'},	
	['fishtacklebox'] 			 	 = {['name'] = 'fishtacklebox', 			['label'] = 'Tackle Box', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fishtacklebox.png', 		['unique'] = false,    ['useable'] = true, 	   ['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Seems to be left over tackle box from another fisherman'},	

    --lootbox reward
	["metaltrash"] = {    ["name"] = "metaltrash",    ["label"] = "Metal Trash",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "metaltrash.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "Trashed Metal"},
	["irontrash"] = {    ["name"] = "irontrash",    ["label"] = "Iron Trash",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "irontrash.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "Trashed Iron"},
	["bulletcasings"] = {    ["name"] = "bulletcasings",    ["label"] = "Bullet Casings",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "bulletcasings.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "Bullet Casings"},
	["aluminumcan"] = {    ["name"] = "aluminumcan",    ["label"] = "Aluminium Can",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "aluminiumcan.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "Alumunim Cans"},
	["brokenknife"] = {    ["name"] = "brokenknife",    ["label"] = "Broken Knife",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "brokenknife.png",    ["unique"] = false,   ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "Rusted Knife"},
	["brokenphone"] = {    ["name"] = "brokenphone",    ["label"] = "Broken Phone",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "brokenphone.png",    ["unique"] = false,    ["useable"] = false,   ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "Broken Phone"},
	["housekeys"] = {    ["name"] = "housekeys",    ["label"] = "House Keys",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "housekeys.png",   ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "Random House Keys"},
	["brokengameboy"] = {    ["name"] = "brokengameboy",    ["label"] = "Broken Gameboy",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "brokengameboy.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "A Broken Gameboy"},
	["burriedtreasure"] = {    ["name"] = "burriedtreasure",    ["label"] = "Sunken Treasure",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "burriedtreasure.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "Burried Treasure, woah"},
	["antiquecoin"] = {    ["name"] = "antiquecoin",    ["label"] = "Antique Coin",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "antiquecoin.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "This seems old..."},
	["goldennugget"] = {    ["name"] = "goldennugget",    ["label"] = "The Mojave Nugget",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "goldnugget.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "This seems valuable, hmm"},
	["goldcoin"] = {    ["name"] = "goldcoin",    ["label"] = "Gold coin",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "goldcoin.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "o.O GOLD!"},
	["ancientcoin"] = {    ["name"] = "ancientcoin",    ["label"] = "Ancient Coin",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "aincientcoin.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "This seems really old and unique."},
	["ww2relic"] = {    ["name"] = "ww2relic",    ["label"] = "WW2 Relic",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "ww2relic.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = false,    ["combinable"] = nil,    ["description"] = "I rememeber this from history class."},
	["pocketwatch"] = {    ["name"] = "pocketwatch",    ["label"] = "Pocket Watch",    ["weight"] = 200,    ["type"] = "item",    ["image"] = "pocketwatch.png",    ["unique"] = false,    ["useable"] = false,    ["shouldClose"] = true,    ["combinable"] = nil,    ["description"] = "A pocket watch"},

    --treasurechest reward
	["diamond_necklace2"] 			 = {["name"] = "diamond_necklace2", 			  	["label"] = "Old Wet Diamond Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["ruby_necklace2"] 				 = {["name"] = "ruby_necklace2", 			  	["label"] = "Old Wet Ruby Necklace", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_necklace.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["sapphire_necklace2"] 			 = {["name"] = "sapphire_necklace2", 			["label"] = "Old Wet Sapphire Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["emerald_necklace2"] 			 = {["name"] = "emerald_necklace2", 			  	["label"] = "Old Wet Emerald Necklace", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_necklace.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["silverchain2"] 				 = {["name"] = "silverchain2", 			  	 	["label"] = "Old Wet Silver Chain", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "silverchain.png", 			["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["diamond_necklace_silver2"] 	 = {["name"] = "diamond_necklace_silver2", 		["label"] = "Old Wet Diamond Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["ruby_necklace_silver2"] 		 = {["name"] = "ruby_necklace_silver2", 			["label"] = "Old Wet Ruby Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_necklace_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["sapphire_necklace_silver2"] 	 = {["name"] = "sapphire_necklace_silver2", 		["label"] = "Old Wet Sapphire Necklace Silver", ["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["emerald_necklace_silver2"] 	 = {["name"] = "emerald_necklace_silver2", 		["label"] = "Old Wet Emerald Necklace Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_necklace_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["goldearring2"] 				 = {["name"] = "goldearring2", 				  	["label"] = "Old Wet Golden Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "gold_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["diamond_earring2"] 			 = {["name"] = "diamond_earring2", 			  	["label"] = "Old Wet Diamond Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["ruby_earring2"] 				 = {["name"] = "ruby_earring2", 			  		["label"] = "Old Wet Ruby Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["sapphire_earring2"] 			 = {["name"] = "sapphire_earring2", 				["label"] = "Old Wet Sapphire Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_earring.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["emerald_earring2"] 			 = {["name"] = "emerald_earring2", 			  	["label"] = "Old Wet Emerald Earrings", 		["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["silverearring2"] 				 = {["name"] = "silverearring2", 				["label"] = "Old Wet Silver Earrings", 			["weight"] = 200, 		["type"] = "item", 		["image"] = "silver_earring.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["diamond_earring_silver2"] 		 = {["name"] = "diamond_earring_silver2", 		["label"] = "Old Wet Diamond Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "diamond_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["ruby_earring_silver2"] 		 = {["name"] = "ruby_earring_silver2", 			["label"] = "Old Wet Ruby Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "ruby_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["sapphire_earring_silver2"] 	 = {["name"] = "sapphire_earring_silver2", 		["label"] = "Old Wet Sapphire Earrings Silver", ["weight"] = 200, 		["type"] = "item", 		["image"] = "sapphire_earring_silver.png", 	["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},
	["emerald_earring_silver2"] 		 = {["name"] = "emerald_earring_silver2", 		["label"] = "Old Wet Emerald Earrings Silver", 	["weight"] = 200, 		["type"] = "item", 		["image"] = "emerald_earring_silver.png", 		["unique"] = false, 	["useable"] = false, 	["shouldClose"] = false, ["combinable"] = nil,   ["description"] = "This was found fishing, fair and square!"},

