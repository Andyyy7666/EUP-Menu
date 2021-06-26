------------------------------------------------------------------------
------------------------------------------------------------------------
--																	  --
--     For support join my discord: https://discord.gg/Z9Mxu72zZ6     --
--																	  --
------------------------------------------------------------------------
------------------------------------------------------------------------

Config = {}

--Button = 0 |  Command = 1 | Blue circle = 2
Config.OpenMenu = 1

--https://docs.fivem.net/game-references/controls/
Config.MenuButton = 51

--This is the command that will open the menu (If chosen at Config.OpenMenu)
Config.Command = "eup"

--Locations to access the eup menu from a blue circle (If chosen at Config.OpenMenu)
Config.table = {
	{x = 1849.88,y = 3695.16,z = 33.27},
	{x = -452.62,y = 6013.77,z = 30.72},
	{x = 461.62,y = -996.51,z = 29.69},
}

--This is the width of the menu when open
--Default = 80
Config.MenuWidth = 80

--Default = 0 |  Player Name = 1  |  Custom = 2
Config.MenuTitle = 0

--This is the custom title you can set for the menu (If chosen at Config.MenuTitle)
Config.MenuTitleCustom = "Locker room"

--Change department names
Config.SAHPName = "San Andreas Highway Patrol"
Config.LSPDName = "Los Santos Police Department"
Config.BCSOName = "Blaine County Sheriff's Office"
Config.LSFDName = "Los Santos Fire Department"

--Hide or show departments
--Disabled = 0 | Enabled = 1
Config.SAHPEnable = 1
Config.LSPDEnable = 1
Config.BCSOEnable = 1
Config.LSFDEnable = 0

-- This will enable or disable accessories menu in components.
--Disable = 0 | Enabled = 1
Config.AccessoriesEnable = 1

--Disabled = 0 | Enabled = 1
Config.Loadout = 0

--Add wepons to the loadout option (If chosen at Config.Loadout)
--https://wiki.rage.mp/index.php?title=Weapons
function weaponlist()
	giveWeapon("weapon_nightstick")
	giveWeapon("weapon_stungun")
	giveWeapon("weapon_flashlight")
	giveWeapon("weapon_combatpistol")
	GiveWeaponComponentToPed(GetPlayerPed(-1), 1593441988, 0x359B7AAE)
	giveWeapon("weapon_carbinerifle")
	GiveWeaponComponentToPed(GetPlayerPed(-1), -2084633992, 0x7BC4CDDC)
	GiveWeaponComponentToPed(GetPlayerPed(-1), -2084633992, 0xC164F53)
	GiveWeaponComponentToPed(GetPlayerPed(-1), -2084633992, 0xA0D89C42)
	giveWeapon("weapon_pumpshotgun")
	GiveWeaponComponentToPed(GetPlayerPed(-1), 487013001, 0x7BC4CDDC)
	SetPedArmour(GetPlayerPed(-1), 100)
	notify("~g~Loadout equipped.")
end