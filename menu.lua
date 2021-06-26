------------------------------------------------------------------------
------------------------------------------------------------------------
--																	  --
--     For support join my discord: https://discord.gg/Z9Mxu72zZ6     --
--																	  --
------------------------------------------------------------------------
------------------------------------------------------------------------

local MenuOri = 0
if Config.MenuOrientation == 0 then
    MenuOri = 0
elseif Config.MenuOrientation == 1 then
    MenuOri = 1320
else
    MenuOri = 0
end

_MenuPool = NativeUI.CreatePool()
MainMenu = NativeUI.CreateMenu()

function Menu()
    local MenuTitle = ""
    if Config.MenuTitle == 0 then
        MenuTitle = "EUP Menu"
    elseif Config.MenuTitle == 1 then
        MenuTitle = GetPlayerName(source)
    elseif Config.MenuTitle == 2 then
        MenuTitle = Config.MenuTitleCustom
    else
        MenuTitle = "EUP Menu"
    end

	_MenuPool:Remove()
	_MenuPool = NativeUI.CreatePool()
	MainMenu = NativeUI.CreateMenu(MenuTitle, GetResourceMetadata(GetCurrentResourceName(), "title", 0), MenuOri)
	_MenuPool:Add(MainMenu)
	MainMenu:SetMenuWidthOffset(Config.MenuWidth)
	collectgarbage()
	
	MainMenu:SetMenuWidthOffset(Config.MenuWidth)	
	_MenuPool:ControlDisablingEnabled(false)
	_MenuPool:MouseControlsEnabled(false)

    local PresetMenu = _MenuPool:AddSubMenu(MainMenu, "EUP - Ped Presets", "EUP - Department Ped Presets", true)
    PresetMenu:SetMenuWidthOffset(Config.MenuWidth)
        if SAHP() then
            local SAHP = _MenuPool:AddSubMenu(PresetMenu, Config.SAHPName, "", true)
            SAHP:SetMenuWidthOffset(Config.MenuWidth)
                local SAHPClassA = NativeUI.CreateItem("Patrol Class A uniform", "")
                local SAHPClassB = NativeUI.CreateItem("Patrol Class B uniform", "")
                local SAHPClassC = NativeUI.CreateItem("Patrol Class C uniform", "")
                SAHP:AddItem(SAHPClassA)
                SAHP:AddItem(SAHPClassB)
                SAHP:AddItem(SAHPClassC)

                SAHPClassA.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['SAHP Uniform A'] = {
                            category = 'SAHP',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 32, 1 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 12, 1 }, -- Upper body
                                { 4, 26, 1 }, -- Legs / Pants
                                { 5, 56, 1 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 20, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 191, 1 }, -- Jackets
                            },
                        },
                    }
                    )
                end
                SAHPClassB.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['SAHP Uniform B'] = {
                            category = 'SAHP',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 32, 1 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 5, 1 }, -- Upper body
                                { 4, 26, 1 }, -- Legs / Pants
                                { 5, 56, 1 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 20, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 194, 1 }, -- Jackets
                            },
                        },
                    }
                    )
                end
                SAHPClassC.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['SAHP Uniform C'] = {
                            category = 'SAHP',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 32, 1 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 5, 1 }, -- Upper body
                                { 4, 26, 1 }, -- Legs / Pants
                                { 5, 56, 1 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 20, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 201, 1 }, -- Jackets
                            },
                        },
                    }
                    )    
                end
        end
        if LSPD() then
            local LSPD = _MenuPool:AddSubMenu(PresetMenu, Config.LSPDName, "", true)
            LSPD:SetMenuWidthOffset(Config.MenuWidth)
                local LSPDClassA = NativeUI.CreateItem("Patrol Class A uniform", "")
                local LSPDClassB = NativeUI.CreateItem("Patrol Class B uniform", "")
                local SupervisorClassA = NativeUI.CreateItem("Supervisor Class A uniform", "")
                local SupervisorClassB = NativeUI.CreateItem("Supervisor Class B uniform", "")
                LSPD:AddItem(LSPDClassA)
                LSPD:AddItem(LSPDClassB)
                LSPD:AddItem(SupervisorClassA)
                LSPD:AddItem(SupervisorClassB)

                LSPDClassA.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['LSPD Patrol Class A'] = {
                            category = 'LSPD',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 0, 1 }, -- Hats / Helments
                                { 1, 0, 0 }, -- Glassess
                                { 2, 0, 0 }, -- Misc
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 12, 1 }, -- Upper body
                                { 4, 26, 3 }, -- Legs / Pants
                                { 5, 32, 1 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 15, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 191, 4 }, -- Jackets
                            },
                        },
                    }
                    )
                end
                LSPDClassB.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['LSPD Patrol Class B'] = {
                            category = 'LSPD',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 0, 1 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 5, 1 }, -- Upper body
                                { 4, 26, 3 }, -- Legs / Pants
                                { 5, 32, 1 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 15, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 194, 4 }, -- Jackets
                            },
                        },
                    }
                    )
                end
                SupervisorClassA.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['LSPD Supervisor Class A'] = {
                            category = 'LSPD',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 0, 1 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 12, 1 }, -- Upper body
                                { 4, 26, 3 }, -- Legs / Pants
                                { 5, 36, 1 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 15, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 191, 5 }, -- Jackets
                            },
                        },
                    }
                    )
                end
                SupervisorClassB.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['LSPD Supervisor Class B'] = {
                            category = 'LSPD',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 0, 1 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 5, 1 }, -- Upper body
                                { 4, 26, 3 }, -- Legs / Pants
                                { 5, 36, 1 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 15, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 194, 5 }, -- Jackets
                            },
                        },
                    }
                    )
                end
        end
        if BCSO() then
            local BCSO = _MenuPool:AddSubMenu(PresetMenu, Config.BCSOName, "", true)
            BCSO:SetMenuWidthOffset(Config.MenuWidth)
                local BCSOClassA = NativeUI.CreateItem("Patrol Class A uniform", "")
                local BCSOClassB = NativeUI.CreateItem("Patrol Class B uniform", "")
                local BCSOClassC = NativeUI.CreateItem("Patrol Class C uniform", "")
                local BCSOSupervisorClassA = NativeUI.CreateItem("Supervisor Class A uniform", "")
                local BCSOSupervisorClassB = NativeUI.CreateItem("Supervisor Class B uniform", "")
                local BCSOSupervisorClassC = NativeUI.CreateItem("Supervisor Class C uniform", "")
                BCSO:AddItem(BCSOClassA)
                BCSO:AddItem(BCSOClassB)
                BCSO:AddItem(BCSOClassC)
                BCSO:AddItem(BCSOSupervisorClassA)
                BCSO:AddItem(BCSOSupervisorClassB)
                BCSO:AddItem(BCSOSupervisorClassC)
                

                BCSOClassA.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['BCSO Patrol Class A'] = {
                            category = 'BCSO',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 14, 1 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 12, 1 }, -- Upper body
                                { 4, 26, 2 }, -- Legs / Pants
                                { 5, 56, 2 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 27, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 191, 2 }, -- Jackets
                            },
                        },
                    }
                    )
                end
                BCSOClassB.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['BCSO Patrol Class B'] = {
                            category = 'BCSO',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 14, 1 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 5, 1 }, -- Upper body
                                { 4, 26, 2 }, -- Legs / Pants
                                { 5, 56, 2 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 27, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 194, 2 }, -- Jackets
                            },
                        },
                    }
                    )
                end
                BCSOClassC.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['BCSO Patrol Class C'] = {
                            category = 'BCSO',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 14, 1 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 5, 1 }, -- Upper body
                                { 4, 26, 2 }, -- Legs / Pants
                                { 5, 56, 2 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 27, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 201, 2 }, -- Jackets
                            },
                        },
                    }
                    )
                end
                BCSOSupervisorClassA.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['BCSO Supervisor Class A'] = {
                            category = 'BCSO',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 14, 2 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 12, 1 }, -- Upper body
                                { 4, 26, 2 }, -- Legs / Pants
                                { 5, 56, 2 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 27, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 191, 3 }, -- Jackets
                            },
                        },
                    }
                    )
                end
                BCSOSupervisorClassB.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['BCSO Supervisor Class B'] = {
                            category = 'BCSO',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 14, 2 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 5, 1 }, -- Upper body
                                { 4, 26, 2 }, -- Legs / Pants
                                { 5, 56, 2 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 27, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 194, 3 }, -- Jackets
                            },
                        },
                    }
                    )
                end
                BCSOSupervisorClassC.Activated = function(ParentMenu, SelectedItem)
                    EUP(
                        {
                        ['BCSO Supervisor Class C'] = {
                            category = 'BCSO',
                            ped = 'mp_m_freemode_01',
                            props = {
                                { 0, 14, 2 }, -- Hats / Helments
                                { 1, 0, 0 },
                                { 2, 0, 0 },
                                { 3, 0, 0 },
                            },
                            components = {
                                { 1, 1, 1 }, -- Mask
                                { 3, 5, 1 }, -- Upper body
                                { 4, 26, 2 }, -- Legs / Pants
                                { 5, 56, 2 }, -- Bags / Parachutes
                                { 6, 26, 1 }, -- Shoes
                                { 7, 9, 1 }, -- Neck / Scarfs
                                { 8, 106, 1 }, -- Shirt / Accessory
                                { 9, 27, 1 }, -- Body Armor
                                { 10, 1, 1 }, -- Badges / Logos
                                { 11, 201, 3 }, -- Jackets
                            },
                        },
                    }
                    )
                end
        end
        if LSFD() then
            local LSFD = _MenuPool:AddSubMenu(PresetMenu, Config.LSFDName, "", true)
            LSFD:SetMenuWidthOffset(Config.MenuWidth)
                local LSFDClassA = NativeUI.CreateItem("Comming soon", "")
                LSFD:AddItem(LSFDClassA)

                LSFDClassA.Activated = function(ParentMenu, SelectedItem)
                    notify("feature in development, updated will be posted in the discord.")
                end
        end
    local ComponentMenu = _MenuPool:AddSubMenu(MainMenu, "EUP - Ped Components", "EUP - Ped Components", true)
    ComponentMenu:SetMenuWidthOffset(Config.MenuWidth)


local BaseBallCap = _MenuPool:AddSubMenu(SAHPHeadwear, "Baseball Cap", "", true)
BaseBallCap:SetMenuWidthOffset(Config.MenuWidth)
    local BlackCap = NativeUI.CreateItem("Black", "")
    local GrayCap = NativeUI.CreateItem("Black", "")
    BaseBallCap:AddItem(BlackCap)
    BaseBallCap:AddItem(GrayCap)

    BlackCap.Activated = function(ParentMenu, SelectedItem)
        EUP(
            {
            ['Cap'] = {
                category = 'SAHP',
                ped = 'mp_m_freemode_01',
                props = {
                    { 0, 3, 1 }, -- Hats / Helments
                },
                components = {},
            },
        }
        )
    end
    GrayCap.Activated = function(ParentMenu, SelectedItem)
        EUP(
            {
            ['Cap'] = {
                category = 'SAHP',
                ped = 'mp_m_freemode_01',
                props = {
                    { 0, 3, 1 }, -- Hats / Helments
                },
                components = {},
            },
        }
        )
    end


            if SAHP() then
                local SAHPComponents = _MenuPool:AddSubMenu(ComponentMenu, Config.SAHPName, "", true)
                SAHPComponents:SetMenuWidthOffset(Config.MenuWidth)
                    local SAHPHeadwear = _MenuPool:AddSubMenu(SAHPComponents, "Headwear", "", true)
                    local SAHPVests = _MenuPool:AddSubMenu(SAHPComponents, "Vests", "", true)
                    local SAHPUB = _MenuPool:AddSubMenu(SAHPComponents, "Upper body", "", true)
                    local SAHPLB = _MenuPool:AddSubMenu(SAHPComponents, "Lower body", "", true)
                    SAHPHeadwear:SetMenuWidthOffset(Config.MenuWidth)
                    SAHPVests:SetMenuWidthOffset(Config.MenuWidth)
                    SAHPUB:SetMenuWidthOffset(Config.MenuWidth)
                    SAHPLB:SetMenuWidthOffset(Config.MenuWidth)
                        local SAHPBeanie = NativeUI.CreateItem("Beanie", "")
                        local SAHPHat = NativeUI.CreateItem("Hat", "")
                        local SAHPmbu = NativeUI.CreateItem("Motorcycle helment", "")
                        local SAHPCap1 = NativeUI.CreateItem("Forward SAHP Cap", "")
                        local SAHPCap2 = NativeUI.CreateItem("Forward Patch SAHP Cap", "")
                        local SAHPCap3 = NativeUI.CreateItem("Backward SAHP Cap", "")
                        local SAHPCap4 = NativeUI.CreateItem("Backward Patch SAHP Cap", "")
                        local NoSAHPHat = NativeUI.CreateItem("No hat", "")
                        SAHPHeadwear:AddItem(SAHPBeanie)
                        SAHPHeadwear:AddItem(SAHPHat)
                        SAHPHeadwear:AddItem(SAHPmbu)
                        SAHPHeadwear:AddItem(SAHPCap1)
                        SAHPHeadwear:AddItem(SAHPCap2)
                        SAHPHeadwear:AddItem(SAHPCap3)
                        SAHPHeadwear:AddItem(SAHPCap4)
                        SAHPHeadwear:AddItem(NoSAHPHat)
                        local SAHPVest1 = NativeUI.CreateItem("Vest 1", "")
                        local SAHPVest2 = NativeUI.CreateItem("Vest 2", "")
                        local SAHPVest3 = NativeUI.CreateItem("Vest 3", "")
                        local SAHPVest4 = NativeUI.CreateItem("High visibility vest", "")
                        local SAHPVest5 = NativeUI.CreateItem("Plate carrier", "")
                        local NoSAHPVest = NativeUI.CreateItem("No vest", "")
                        SAHPVests:AddItem(SAHPVest1)
                        SAHPVests:AddItem(SAHPVest2)
                        SAHPVests:AddItem(SAHPVest3)
                        SAHPVests:AddItem(SAHPVest4)
                        SAHPVests:AddItem(SAHPVest5)
                        SAHPVests:AddItem(NoSAHPVest)
                        local SAHPClassAShirt = NativeUI.CreateItem("Class A Shirt", "")
                        local SAHPClassBShirt = NativeUI.CreateItem("Class B Shirt", "")
                        local SAHPClassCShirt = NativeUI.CreateItem("Class C Shirt", "")
                        SAHPUB:AddItem(SAHPClassAShirt)
                        SAHPUB:AddItem(SAHPClassBShirt)
                        SAHPUB:AddItem(SAHPClassCShirt)
                        local SAHPPatrolPants = NativeUI.CreateItem("Patrol Pants", "")
                        local SAHPCargoPants = NativeUI.CreateItem("Cargo Pants", "")
                        local SAHPMBUPants = NativeUI.CreateItem("MBU Pants", "")
                        SAHPLB:AddItem(SAHPPatrolPants)
                        SAHPLB:AddItem(SAHPCargoPants)
                        SAHPLB:AddItem(SAHPMBUPants)

                    SAHPBeanie.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['SAHPBeanie'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 3, 1 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    SAHPHat.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['SAHPHat'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 32, 1 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    SAHPmbu.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['SAHPmbu'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 18, 1 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    SAHPCap1.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Forward SAHP Cap'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 8, 3 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    SAHPCap2.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Forward Patch SAHP Cap'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 8, 4 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    SAHPCap3.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Backward SAHP Cap'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 7, 3 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    SAHPCap4.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Backward Patch SAHP Cap'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 7, 4 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    NoSAHPHat.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['No SAHP hat'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 0, 0 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    SAHPVest1.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['SAHPVest 1'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 2, 1 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    SAHPVest2.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['SAHPVest 2'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 3, 1 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    SAHPVest3.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['SAHPVest 3'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 4, 1 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    SAHPVest4.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['SAHPVest 4'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 11, 1 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    SAHPVest5.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['SAHPVest 5'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 5, 11, 3 }, -- Bags / Parachutes
                                },
                            },
                        }
                        )
                    end
                    NoSAHPVest.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['No SAHP Vests'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 5, 0, 0 }, -- Bags / Parachutes
                                    { 9, 0, 0 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    SAHPClassAShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['SAHP A Shirt'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 12, 1 }, -- Upper body
                                    { 5, 56, 1 }, -- Bags / Parachutes
                                    { 11, 191, 1 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    SAHPClassBShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['SAHP B Shirt'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 5, 1 }, -- Upper body
                                    { 5, 56, 1 }, -- Bags / Parachutes
                                    { 11, 194, 1 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    SAHPClassCShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['SAHP C Shirt'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 5, 1 }, -- Upper body
                                    { 5, 56, 1 }, -- Bags / Parachutes
                                    { 11, 201, 1 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    SAHPPatrolPants.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Patrol Pants'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 4, 26, 1 }, -- Legs / Pants
                                    { 6, 26, 1 }, -- Shoes
                                },
                            },
                        }
                        )
                    end
                    SAHPCargoPants.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Cargo Pants'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 4, 50, 2 }, -- Legs / Pants
                                    { 6, 26, 1 }, -- Shoes
                                },
                            },
                        }
                        )
                    end
                    SAHPMBUPants.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['MBU Pants'] = {
                                category = 'SAHP',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 4, 33, 1 }, -- Legs / Pants
                                    { 6, 14, 1 }, -- Shoes
                                },
                            },
                        }
                        )
                    end
            end
            if LSPD() then
                local LSPDComponents = _MenuPool:AddSubMenu(ComponentMenu, Config.LSPDName, "", true)
                LSPDComponents:SetMenuWidthOffset(Config.MenuWidth)
                    local LSPDHeadwear = _MenuPool:AddSubMenu(LSPDComponents, "Headwear", "", true)
                    local LSPDVests = _MenuPool:AddSubMenu(LSPDComponents, "Vests", "", true)
                    local LSPDUB = _MenuPool:AddSubMenu(LSPDComponents, "Upper body", "", true)
                    local LSPDLB = _MenuPool:AddSubMenu(LSPDComponents, "Lower body", "", true)
                    LSPDHeadwear:SetMenuWidthOffset(Config.MenuWidth)
                    LSPDVests:SetMenuWidthOffset(Config.MenuWidth)
                    LSPDUB:SetMenuWidthOffset(Config.MenuWidth)
                    LSPDLB:SetMenuWidthOffset(Config.MenuWidth)
                        local LSPDBeanie = NativeUI.CreateItem("Beanie", "")
                        local LSPDmbu = NativeUI.CreateItem("Motorcycle helment", "")
                        local LSPDBicycle = NativeUI.CreateItem("Bicycle helment", "")
                        local LSPDCap1 = NativeUI.CreateItem("LSPD Cap", "")
                        local LSPDCap2 = NativeUI.CreateItem("Police Cap", "")
                        local LSPDCap3 = NativeUI.CreateItem("LSPD Patch Cap", "")
                        local LSPDCap4 = NativeUI.CreateItem("K9 Cap", "")
                        local NoLSPDHat = NativeUI.CreateItem("No hat", "")
                        LSPDHeadwear:AddItem(LSPDBeanie)
                        LSPDHeadwear:AddItem(LSPDmbu)
                        LSPDHeadwear:AddItem(LSPDBicycle)
                        LSPDHeadwear:AddItem(LSPDCap1)
                        LSPDHeadwear:AddItem(LSPDCap2)
                        LSPDHeadwear:AddItem(LSPDCap3)
                        LSPDHeadwear:AddItem(LSPDCap4)
                        LSPDHeadwear:AddItem(NoLSPDHat)
                        local LSPDVest1 = NativeUI.CreateItem("Vest 1", "")
                        local LSPDVest2 = NativeUI.CreateItem("Vest 2", "")
                        local LSPDVest3 = NativeUI.CreateItem("Vest 3", "")
                        local LSPDVest4 = NativeUI.CreateItem("High visibility vest", "")
                        local LSPDVest5 = NativeUI.CreateItem("Plate carrier", "")
                        local NoLSPDVest = NativeUI.CreateItem("No vest", "")
                        LSPDVests:AddItem(LSPDVest1)
                        LSPDVests:AddItem(LSPDVest2)
                        LSPDVests:AddItem(LSPDVest3)
                        LSPDVests:AddItem(LSPDVest4)
                        LSPDVests:AddItem(LSPDVest5)
                        LSPDVests:AddItem(NoLSPDVest)
                        local LSPDClassAShirt = NativeUI.CreateItem("Class A Shirt", "")
                        local LSPDClassBShirt = NativeUI.CreateItem("Class B Shirt", "")
                        local LSPDClassSupervisorAShirt = NativeUI.CreateItem("Class A Shirt", "")
                        local LSPDClassSupervisorBShirt = NativeUI.CreateItem("Class B Shirt", "")
                        LSPDUB:AddItem(LSPDClassAShirt)
                        LSPDUB:AddItem(LSPDClassBShirt)
                        LSPDUB:AddItem(LSPDClassSupervisorAShirt)
                        LSPDUB:AddItem(LSPDClassSupervisorBShirt)
                        local LSPDPatrolPants = NativeUI.CreateItem("Patrol Pants", "")
                        local LSPDCargoPants = NativeUI.CreateItem("Cargo Pants", "")
                        local LSPDMBUPants = NativeUI.CreateItem("MBU Pants", "")
                        LSPDLB:AddItem(LSPDPatrolPants)
                        LSPDLB:AddItem(LSPDCargoPants)
                        LSPDLB:AddItem(LSPDMBUPants)

                    LSPDBeanie.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPDBeanie'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 3, 4 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    LSPDmbu.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPDmbu'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 49, 1 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    LSPDBicycle.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPDmbu'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 50, 1 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    LSPDCap1.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPD Cap'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 85, 1 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    LSPDCap2.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Police Cap'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 85, 2 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    LSPDCap3.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPD Patch Cap'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 85, 3 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    LSPDCap4.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['K9 LSPD Cap'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 85, 8 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    NoLSPDHat.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['No LSPD hat'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 0, 0 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    LSPDVest1.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPDVest 1'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 2, 3 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    LSPDVest2.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPDVest 2'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 3, 3 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    LSPDVest3.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPDVest 3'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 4, 3 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    LSPDVest4.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPDVest 4'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 11, 2 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    LSPDVest5.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPDVest 5'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 5, 11, 2 }, -- Bags / Parachutes
                                },
                            },
                        }
                        )
                    end
                    NoLSPDVest.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['No LSPD Vests'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 5, 0, 0 }, -- Bags / Parachutes
                                    { 9, 0, 0 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    LSPDClassAShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPD A Shirt'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 12, 1 }, -- Upper body
                                    { 5, 32, 1 }, -- Bags / Parachutes
                                    { 11, 191, 4 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    LSPDClassBShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPD B Shirt'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 5, 1 }, -- Upper body
                                    { 5, 32, 1 }, -- Bags / Parachutes
                                    { 11, 194, 4 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    LSPDClassSupervisorAShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPD C Shirt'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 12, 1 }, -- Upper body
                                    { 5, 32, 1 }, -- Bags / Parachutes
                                    { 11, 191, 5 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    LSPDClassSupervisorBShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['LSPD B Shirt'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 5, 1 }, -- Upper body
                                    { 5, 32, 1 }, -- Bags / Parachutes
                                    { 11, 194, 5 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    LSPDPatrolPants.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Patrol Pants'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 4, 26, 3 }, -- Legs / Pants
                                    { 6, 26, 1 }, -- Shoes
                                },
                            },
                        }
                        )
                    end
                    LSPDCargoPants.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Cargo Pants'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 4, 50, 4 }, -- Legs / Pants
                                    { 6, 26, 1 }, -- Shoes
                                },
                            },
                        }
                        )
                    end
                    LSPDMBUPants.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['MBU Pants'] = {
                                category = 'LSPD',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 4, 33, 3 }, -- Legs / Pants
                                    { 6, 14, 1 }, -- Shoes
                                },
                            },
                        }
                        )
                    end
            end
            if BCSO() then
                local BCSOComponents = _MenuPool:AddSubMenu(ComponentMenu, Config.BCSOName, "", true)
                BCSOComponents:SetMenuWidthOffset(Config.MenuWidth)
                    local BCSOHeadwear = _MenuPool:AddSubMenu(BCSOComponents, "Headwear", "", true)
                    local BCSOVests = _MenuPool:AddSubMenu(BCSOComponents, "Vests", "", true)
                    local BCSOUB = _MenuPool:AddSubMenu(BCSOComponents, "Upper body", "", true)
                    local BCSOLB = _MenuPool:AddSubMenu(BCSOComponents, "Lower body", "", true)
                    BCSOHeadwear:SetMenuWidthOffset(Config.MenuWidth)
                    BCSOVests:SetMenuWidthOffset(Config.MenuWidth)
                    BCSOUB:SetMenuWidthOffset(Config.MenuWidth)
                    BCSOLB:SetMenuWidthOffset(Config.MenuWidth)
                        local BCSOBeanie = NativeUI.CreateItem("Beanie", "")
                        local BCSOASU = NativeUI.CreateItem("TED Air Unit helment", "")
                        local BCSOBicycle = NativeUI.CreateItem("Bicycle helment", "")
                        local BCSOCap1 = NativeUI.CreateItem("Forward Sheriff Cap", "")
                        local BCSOCap2 = NativeUI.CreateItem("Forward BCSO Patch Cap", "")
                        local BCSOCap3 = NativeUI.CreateItem("Backward Sheriff Cap", "")
                        local BCSOCap4 = NativeUI.CreateItem("Backward BCSO Patch Cap", "")
                        local NoBCSOHat = NativeUI.CreateItem("No hat", "")
                        BCSOHeadwear:AddItem(BCSOBeanie)
                        BCSOHeadwear:AddItem(BCSOASU)
                        BCSOHeadwear:AddItem(BCSOBicycle)
                        BCSOHeadwear:AddItem(BCSOCap1)
                        BCSOHeadwear:AddItem(BCSOCap2)
                        BCSOHeadwear:AddItem(BCSOCap3)
                        BCSOHeadwear:AddItem(BCSOCap4)
                        BCSOHeadwear:AddItem(NoBCSOHat)
                        local BCSOVest1 = NativeUI.CreateItem("Vest 1", "")
                        local BCSOVest2 = NativeUI.CreateItem("Vest 2", "")
                        local BCSOVest3 = NativeUI.CreateItem("Vest 3", "")
                        local BCSOVest4 = NativeUI.CreateItem("High visibility vest", "")
                        local BCSOVest5 = NativeUI.CreateItem("Plate carrier", "")
                        local NoBCSOVest = NativeUI.CreateItem("No vest", "")
                        BCSOVests:AddItem(BCSOVest1)
                        BCSOVests:AddItem(BCSOVest2)
                        BCSOVests:AddItem(BCSOVest3)
                        BCSOVests:AddItem(BCSOVest4)
                        BCSOVests:AddItem(BCSOVest5)
                        BCSOVests:AddItem(NoBCSOVest)
                        local BCSOClassAShirt = NativeUI.CreateItem("Class A Shirt", "")
                        local BCSOClassBShirt = NativeUI.CreateItem("Class B Shirt", "")
                        local BCSOClassCShirt = NativeUI.CreateItem("Class C Shirt", "")
                        local BCSOClassSupervisorAShirt = NativeUI.CreateItem("Class A Shirt", "")
                        local BCSOClassSupervisorBShirt = NativeUI.CreateItem("Class B Shirt", "")
                        local BCSOClassSupervisorCShirt = NativeUI.CreateItem("Class C Shirt", "")
                        BCSOUB:AddItem(BCSOClassAShirt)
                        BCSOUB:AddItem(BCSOClassBShirt)
                        BCSOUB:AddItem(BCSOClassSupervisorAShirt)
                        BCSOUB:AddItem(BCSOClassSupervisorBShirt)
                        local BCSOPatrolPants = NativeUI.CreateItem("Patrol Pants", "")
                        local BCSOCargoPants = NativeUI.CreateItem("Cargo Pants", "")
                        local BCSOMBUPants = NativeUI.CreateItem("MBU Pants", "")
                        BCSOLB:AddItem(BCSOPatrolPants)
                        BCSOLB:AddItem(BCSOCargoPants)
                        BCSOLB:AddItem(BCSOMBUPants)

                    BCSOBeanie.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSOBeanie'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 3, 2 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    BCSOASU.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSOASU'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 80, 1 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    BCSOBicycle.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSOmbu'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 50, 1 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    BCSOCap1.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSO Cap1'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 8, 1 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    BCSOCap2.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSO Cap2'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 8, 2 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    BCSOCap3.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSO Cap3'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 7, 1 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    BCSOCap4.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSO Cap4'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 7, 2 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    NoBCSOHat.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['No BCSO hat'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {
                                    { 0, 0, 0 }, -- Hats / Helments
                                },
                                components = {},
                            },
                        }
                        )
                    end
                    BCSOVest1.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSOVest 1'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 2, 2 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    BCSOVest2.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSOVest 2'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 3, 2 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    BCSOVest3.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSOVest 3'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 4, 2 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    BCSOVest4.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSOVest 4'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 9, 11, 2 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    BCSOVest5.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSOVest 5'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 5, 11, 1 }, -- Bags / Parachutes
                                },
                            },
                        }
                        )
                    end
                    NoBCSOVest.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['No BCSO Vests'] = {
                                category = 'Vests',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 5, 0, 0 }, -- Bags / Parachutes
                                    { 9, 0, 0 }, -- Body Armor
                                },
                            },
                        }
                        )
                    end
                    BCSOClassAShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSO A Shirt'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 12, 1 }, -- Upper body
                                    { 5, 32, 1 }, -- Bags / Parachutes
                                    { 11, 191, 2 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    BCSOClassBShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSO B Shirt'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 5, 1 }, -- Upper body
                                    { 5, 32, 1 }, -- Bags / Parachutes
                                    { 11, 194, 2 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    BCSOClassCShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSO B Shirt'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 5, 1 }, -- Upper body
                                    { 5, 32, 1 }, -- Bags / Parachutes
                                    { 11, 194, 2 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    BCSOClassSupervisorAShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSO C Shirt'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 12, 1 }, -- Upper body
                                    { 5, 32, 1 }, -- Bags / Parachutes
                                    { 11, 191, 3 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    BCSOClassSupervisorBShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSO B Shirt'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 5, 1 }, -- Upper body
                                    { 5, 32, 1 }, -- Bags / Parachutes
                                    { 11, 194, 3 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    BCSOClassSupervisorCShirt.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['BCSO B Shirt'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 3, 5, 1 }, -- Upper body
                                    { 5, 32, 1 }, -- Bags / Parachutes
                                    { 11, 201, 3 }, -- Jackets
                                },
                            },
                        }
                        )
                    end
                    BCSOPatrolPants.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Patrol Pants'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 4, 26, 2 }, -- Legs / Pants
                                    { 6, 26, 1 }, -- Shoes
                                },
                            },
                        }
                        )
                    end
                    BCSOCargoPants.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Cargo Pants'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 4, 50, 3 }, -- Legs / Pants
                                    { 6, 26, 1 }, -- Shoes
                                },
                            },
                        }
                        )
                    end
                    BCSOMBUPants.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['MBU Pants'] = {
                                category = 'BCSO',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 4, 33, 2 }, -- Legs / Pants
                                    { 6, 14, 1 }, -- Shoes
                                },
                            },
                        }
                        )
                    end
            end
            if LSFD() then
                local LSFDComponents = _MenuPool:AddSubMenu(ComponentMenu, Config.LSFDName, "", true)
                LSFDComponents:SetMenuWidthOffset(Config.MenuWidth)
                    local LSFDComponentsCommingSoon = NativeUI.CreateItem("Comming soon", "")
                    LSFDComponents:AddItem(LSFDComponentsCommingSoon)

                    LSFDComponentsCommingSoon.Activated = function(ParentMenu, SelectedItem)
                        notify("feature in development, updated will be posted in the discord.")
                    end
            end
            if Accessories() then
                local Accessories = _MenuPool:AddSubMenu(ComponentMenu, "Accessories", "", true)
                Accessories:SetMenuWidthOffset(Config.MenuWidth)
                local Isignia = _MenuPool:AddSubMenu(Accessories, "Isignia", "", true)
                Isignia:SetMenuWidthOffset(Config.MenuWidth)
                    local Captain = NativeUI.CreateItem("Captain collar pins", "")
                    local Lieutenant = NativeUI.CreateItem("Lieutenant collar pins", "")
                    local Seargeant = NativeUI.CreateItem("Seargeant stripes", "")
                    local Corporal = NativeUI.CreateItem("Corporal stripes", "")
                    local NoIsisngia = NativeUI.CreateItem("No isignia", "")
                    Isignia:AddItem(Captain)
                    Isignia:AddItem(Lieutenant)
                    Isignia:AddItem(Seargeant)
                    Isignia:AddItem(Corporal)
                    Isignia:AddItem(NoIsisngia)
        
                    Captain.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Captain'] = {
                                category = 'isignia',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 10, 45, 8 }, -- Badges / Logos
                                },
                            },
                        }
                        )
                    end
                    Lieutenant.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Lieutenant'] = {
                                category = 'isignia',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 10, 45, 7 }, -- Badges / Logos
                                },
                            },
                        }
                        )
                    end
                    Seargeant.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Seargeant'] = {
                                category = 'isignia',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 10, 13, 2 }, -- Badges / Logos
                                },
                            },
                        }
                        )
                    end
                    Corporal.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['Corporal'] = {
                                category = 'isignia',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 10, 13, 1 }, -- Badges / Logos
                                },
                            },
                        }
                        )
                    end
                    NoIsisngia.Activated = function(ParentMenu, SelectedItem)
                        EUP(
                            {
                            ['NoIsisngia'] = {
                                category = 'isignia',
                                ped = 'mp_m_freemode_01',
                                props = {},
                                components = {
                                    { 10, 1, 0 }, -- Badges / Logos
                                },
                            },
                        }
                        )
                    end
                    local Radios = _MenuPool:AddSubMenu(Accessories, "Radios", "", true)
                    Radios:SetMenuWidthOffset(Config.MenuWidth)
                        local Radio1 = NativeUI.CreateItem("Over left shoulder radio", "")
                        local Radio2 = NativeUI.CreateItem("Over right shoulder radio", "")
                        local Radio3 = NativeUI.CreateItem("Chest Radio", "")
                        local Radio4 = NativeUI.CreateItem("Under arm shoulder Radio", "")
                        local NoRadio = NativeUI.CreateItem("No Radio", "")
                        Radios:AddItem(Radio1)
                        Radios:AddItem(Radio2)
                        Radios:AddItem(Radio3)
                        Radios:AddItem(Radio4)
                        Radios:AddItem(NoRadio)
            
                        Radio1.Activated = function(ParentMenu, SelectedItem)
                            EUP(
                                {
                                ['Over left shoulder radio'] = {
                                    category = 'Radios',
                                    ped = 'mp_m_freemode_01',
                                    props = {},
                                    components = {
                                        { 9, 15, 1 }, -- Body Armor
                                    },
                                },
                            }
                            )
                        end
                        Radio2.Activated = function(ParentMenu, SelectedItem)
                            EUP(
                                {
                                ['Over right shoulder radio'] = {
                                    category = 'Radios',
                                    ped = 'mp_m_freemode_01',
                                    props = {},
                                    components = {
                                        { 9, 20, 1 }, -- Body Armor
                                    },
                                },
                            }
                            )
                        end
                        Radio3.Activated = function(ParentMenu, SelectedItem)
                            EUP(
                                {
                                ['Chest Radio'] = {
                                    category = 'Radios',
                                    ped = 'mp_m_freemode_01',
                                    props = {},
                                    components = {
                                        { 9, 26, 1 }, -- Body Armor
                                    },
                                },
                            }
                            )
                        end
                        Radio4.Activated = function(ParentMenu, SelectedItem)
                            EUP(
                                {
                                ['Under arm shoulder Radio'] = {
                                    category = 'Radios',
                                    ped = 'mp_m_freemode_01',
                                    props = {},
                                    components = {
                                        { 9, 27, 1 }, -- Body Armor
                                    },
                                },
                            }
                            )
                        end
                        NoRadio.Activated = function(ParentMenu, SelectedItem)
                            EUP(
                                {
                                ['NoRadio'] = {
                                    category = 'Radios',
                                    ped = 'mp_m_freemode_01',
                                    props = {},
                                    components = {
                                        { 9, 0, 1 }, -- Body Armor
                                    },
                                },
                            }
                            )
                        end
                    local Badges = _MenuPool:AddSubMenu(Accessories, "Badges", "", true)
                    Badges:SetMenuWidthOffset(Config.MenuWidth)
                        local SAHPBadge = NativeUI.CreateItem("SAHP Badge", "")
                        local LSPDBadge = NativeUI.CreateItem("LSPD Badge", "")
                        local BCSOBadge = NativeUI.CreateItem("BCSO Badge", "")
                        Badges:AddItem(SAHPBadge)
                        Badges:AddItem(LSPDBadge)
                        Badges:AddItem(BCSOBadge)
            
                        SAHPBadge.Activated = function(ParentMenu, SelectedItem)
                            EUP(
                                {
                                ['SAHP'] = {
                                    category = 'Badges',
                                    ped = 'mp_m_freemode_01',
                                    props = {},
                                    components = {
                                        { 5, 56, 1 }, -- Bags / Parachutes
                                    },
                                },
                            }
                            )
                        end
                        LSPDBadge.Activated = function(ParentMenu, SelectedItem)
                            EUP(
                                {
                                ['LSPD'] = {
                                    category = 'Badges',
                                    ped = 'mp_m_freemode_01',
                                    props = {},
                                    components = {
                                        { 5, 32, 1 }, -- Bags / Parachutes
                                    },
                                },
                            }
                            )
                        end
                        BCSOBadge.Activated = function(ParentMenu, SelectedItem)
                            EUP(
                                {
                                ['BCSO'] = {
                                    category = 'Badges',
                                    ped = 'mp_m_freemode_01',
                                    props = {},
                                    components = {
                                        { 5, 56, 2 }, -- Bags / Parachutes
                                    },
                                },
                            }
                            )
                        end
        end
        if Loadout() then
            local Loadout = NativeUI.CreateItem("Loadout", "Pickup your LEO Loadout")
            MainMenu:AddItem(Loadout)
            Loadout.Activated = function(ParentMenu, SelectedItem)
                weaponlist()
            end
        end
        local ToggleClose = NativeUI.CreateItem("Close", "Close the menu")
        MainMenu:AddItem(ToggleClose)
        ToggleClose.Activated = function(ParentMenu, SelectedItem)
            _MenuPool:CloseAllMenus()
        end

    _MenuPool:RefreshIndex()
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		
		_MenuPool:ProcessMenus()	
		_MenuPool:ControlDisablingEnabled(false)
		_MenuPool:MouseControlsEnabled(false)
		
		if Config.OpenMenu == 0 and IsControlJustPressed(1, Config.MenuButton) and GetLastInputMethod(2) then
			if not menuOpen then
				Menu()
                MainMenu:Visible(true)
            else
                _MenuPool:CloseAllMenus()
			end
		end
	end
end)


RegisterCommand(Config.Command, function(source, args, rawCommands)
    Menu()
    MainMenu:Visible(true)
end)

Citizen.CreateThread(function()
    TriggerEvent("chat:addSuggestion", "/" .. Config.Command, "Open EUP Menu")
end)

Citizen.CreateThread(function()
    print("EUP-Menu by Andyyy#7666. If you're in need of support join the discord server: https://discord.gg/Z9Mxu72zZ6")
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
        if  Config.OpenMenu == 2 then
            for k in pairs(Config.table) do
                --Draw Marker Here
                DrawMarker(1, Config.table[k].x, Config.table[k].y, Config.table[k].z, 0, 0, 0, 0, 0, 0, 1.001, 1.0001, 0.5001, 0, 0, 255, 200, 0, 0, 0, 0)
            end
        end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)

		for k in pairs(Config.table) do

			local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
			local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, Config.table[k].x, Config.table[k].y, Config.table[k].z)

			if Config.OpenMenu == 2 and dist <= 1.2 then
                alert("Press ~INPUT_CONTEXT~ to open the locker.")
            end

            if dist <= 1.2 and IsControlJustPressed(1, 51) then
                if not menuOpen then
                    Menu()
                    MainMenu:Visible(true)
                else
                    _MenuPool:CloseAllMenus()
                end
			end
		end
	end
end)