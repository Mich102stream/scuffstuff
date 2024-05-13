Config = {}

Config.debug = false

--- SETTINGS FOR ESX
Config.esxSettings = {
    enabled = false,
    -- Whether or not to use the new ESX export method
    useNewESXExport = true,

    oldEsx = false, -- use this when on a very old version of esx
}

--- SETTINGS FOR QBCORE
Config.qbSettings = {
    enabled = true,
    useNewQBExport = true, -- Make sure to uncomment the old export inside fxmanifest.lua if you're still using it
}


Config.sql = {
    driver = 'mysql', -- oxmysql or ghmattimysql or mysql
    -- If you're using an older version of oxmysql set this to false
    newOxMysql = true,
}


-- I DO NOT RECOMMEND USING TARGET AS SOME SMALLER PROPS MAY BE DIFFICULT TO PICKUP FROM THE TRUCK BED (USING CERTAIN TARGET SYSTEMS)
Config.target = {
    enabled = true,
    system = 'qb-target' -- 'qtarget' or 'qb-target' or 'ox_target'  (Other systems might work as well)
}

-- Saving placed items in the database
Config.objectPersistence = {
    -- Whether the script should save items placed on the ground in the database and load them back up after restart
    enabled = true,

    -- Whether to show warnings when items that somehow got duplicated by an client got picked up twice. Not something that we expect to happen, but better safe than sorry
    -- (The players wont receive the duplicated item regardless)
    showWarnings = true,

    -- Whether to display a little hint when placing an item which will be persistent
    showHint = true,
}

-- When not using target
-- '3d-text', 'top-left', 'help-text'
Config.inputType = '3d-text'

-- Font used for the 3d text
Config.textFont = 4

-- Scale used for the 3d text
Config.textScale = 1.0

-- Outline shown on props that the player can pickup
Config.outline = {
    enabled = true,
    color = {
        r = 126,
        g = 207,
        b = 147,
        a = 144,
    }
}

-- The opacity of the placement box color
Config.boxOpacity = 150

-- Command which will open the "place an item" menu
Config.menuCommand = {
    enabled = true,
    command = 'placeitem',
    
    aliasEnabled = true,
    aliasCommand = 'pi',
}

-- List of vehicles in which the props should not be released when flipped/upsidedown
Config.enclosedVehicles = {
    'mule',
    'mule2',
    'mule3',
    'mule4',
    'mule5',
    'pounder',
    'pounder2',
    'stockade',
    'benson',
    'benson2',
}

-- Whether or not to disable item stacking (placing items on top of other items)
-- This can rarely cause collision issues with some vehicles. Therefore its off by default
Config.disallowItemStacking = true

-- Whether or not to make all items placeable.
-- When disabled only the items defined below will be placeable
Config.makeEverythingPlaceable = {
    enabled = true,
    fallbackProp = 'hei_prop_heist_box',
}

-- Whether or not players will be allowed to place items on roofs of cars
Config.allowPlacingOnRoofs = true


-- All placeable items with the amounts and props defined
-- https://gta-objects.xyz/objects
-- the value between the square brackets [] is the item name. Feel free to add as many as you want
-- canBeThrown - whether the item should be throwable
-- canBeDropped - whether the item should be droppable
-- sizes - table containing all the item models per sizes. The key (value between the square brackets [] is the amount)
Config.items = {
    ['gold'] = {
        canBeThrown = true,
        canBeDropped = true,
        sizes = {
            [1] = 'prop_gold_bar',
            [6] = 'prop_ld_gold_chest',
        }
    },
    ['traffic_cone'] = {
        canBeThrown = true,
        canBeDropped = true,
        sizes = {
            [1] = 'prop_mp_cone_02',
        }
    },
    ['medicbag'] = {
        canBeThrown = true,
        canBeDropped = true,
        sizes = {
            [1] = 'xm_prop_x17_bag_med_01a',
        }
    },
    ['coke'] = {
        canBeThrown = true,
        canBeDropped = true,
        sizes = {
            [1] = 'hei_prop_hei_drug_pack_01a',
            [5] = 'hei_prop_hei_drug_pack_01b',
        }
    },
    ['meth'] = {
        canBeThrown = true,
        canBeDropped = true,
        sizes = {
            [1] = 'bkr_prop_meth_smallbag_01a',
            [4] = 'bkr_prop_meth_bigbag_04a',
            [6] = 'bkr_prop_meth_bigbag_01a',
        }
    },
    ['cash'] = {
        canBeThrown = true,
        canBeDropped = true,
        sizes = {
            [1] = 'prop_anim_cash_note_b',
            [100] = 'prop_anim_cash_pile_01',
            [1000] = 'prop_anim_cash_pile_02',
        }
    },
}

-- Whether to allow players to place items in any vehicle trunk when the trunk is open
Config.trunk = {
    enabled = true,

    -- Whether to enable the /trunk command
    command = {
        enabled = true,
        command = 'trunk'
    },

    -- If you find that certain vehicles trunk Z offset (up & down) doesn't align too well, you can change it here for specific models
    trunkHeights = {
        premier = 0.16,
        tailgater2 = 0.15,
        sultan2 = 0.18,
        gauntlet3 = 0.15,
        emperor = -0.15,
        baller = -0.3,
        baller2 = -0.2,
        baller3 = -0.2,
        baller4 = -0.2,
        baller5 = -0.2,
        baller6 = -0.2,
        baller7 = -0.2,
        baller8 = -0.2,
        rancherxl = -0.4,
        felon = -0.2,
        youga2 = -0.6,
        tornado = -0.3,
        tornado2 = -0.3,
        tornado3 = -0.3,
        tornado4 = -0.3,
        tornado5 = -0.3,
        tornado6 = -0.3,
        seminole2 = -0.1,
        jb7002 = -0.1,
        buccaneer = 0.3,
        buccaneer2 = 0.3,
        gauntlet4 = 0.1,
        cavalcade3 = -0.3,
        sheriff2 = -0.2,
        raiden = -0.3,
        bjxl = -0.25,
        dilettante = 0.1,
        blista = -0.3,
        tailgater = -0.15,
        issi2 = -0.3,
        rhapsody = -0.17,
        driftremus = 0.2,
        windsor = -0.15,
        mesa = -0.15,
        surge = -0.25,
        growler = 0.1,
        fr36 = 0.2,
        fq2 = -0.1,
        surano = -0.15,
        jackal = -0.2,
        cognoscenti = -0.15,
        sabregt = -0.1,
        hotknife = 0.3,
        xls = -0.25,
        xls2 = -0.25,
        streiter = -0.25,
        dubsta2 = -0.25,
        dubsta = -0.25,
        zr350 = -0.15,
        euros = 0.25,
        vigero = -0.2,
        buffalo = -0.15,
        buffalo2 = -0.15,
        stanier = -0.15,
        buffalo4 = 0.1,
        primo = -0.05,
        drifteuros = 0.2,
        drafter  = 0.15,
        fbi2 = -0.15,
        ruiner2 = 0.15,
        patriot = -0.15,
        gresley = -0.25,
        r300 = 0.2,
        landstalker2 = -0.21,
        habanero  = -0.15,
        minivan = -0.15,
        dominator7 = 0.1,
        sultan = 0.05,
        ingot = -0.1,
        regina = -0.1,
        greenwood = -0.05,
        kuruma = -0.15,
        kuruma2 = -0.15,
    },

    -- Vehicles which you don't want to allow to store items in their trunks
    blacklist = {
        'zhaba',
        'comet3',
    },
}

-- List of all pickup trucks
-- Important to add your own truck models here!
Config.pickupTrucks = {
    'bison',
    'bison2',
    'bison3',
    'bobcatxl',
    'bodhi2',
    'boor',
    'guardian',
    'l35',
    'rebel',
    'rebel2',
    'sadler',
    'sadler2',
    'sandking',
    'sandking2',
    'contender',
    'dloader',
    'scrap',
    'slamvan',
    'slamvan3',
    'tiptruck',
    'vetir',
    'mesa3',
    'warrener2',
    'wastelander',
    'driftyosemite',
    'yosemite',
    'yosemite2',
    'yosemite3',
    'insurgent',
    'insurgent3',
    'mule',
    'mule2',
    'mule3',
    'mule4',
    'mule5',
    'benson',
}


-- https://docs.fivem.net/docs/game-references/controls/
-- Use the input index for the "input" value
Config.keybinds = {
    openMenu = {
        enabled = true,
        key = 'F4',
    },
    pickup = {
        label = 'E',
        name = 'INPUT_PICKUP',
        input = 38,
        duration = 1000,
    },
    place = {
        label = 'E',
        name = 'INPUT_PICKUP',
        input = 38,
    },
    cancelPlacing = {
        label = 'Backspace',
        name = 'INPUT_CELLPHONE_CANCEL',
        input = 177,
    },
    drop = {
        label = 'G',
        name = 'INPUT_THROW_GRENADE',
        input = 58,
    },
    throw = {
        label = 'Q',
        name = 'INPUT_CONTEXT_SECONDARY',
        input = 52,
    },
    exit = {
        label = 'Escape',
        name = 'INPUT_CELLPHONE_CANCEL',
        input = 177,
    },
    arrowUp = {
        label = 'Arrow up',
        name = 'INPUT_CELLPHONE_UP',
        input = 172,
    },
    arrowDown = {
        label = 'Arrow down',
        name = 'INPUT_CELLPHONE_DOWN',
        input = 173,
    },
    upAlternative = {
        label = 'Scroll up',
        name = 'INPUT_VEH_CINEMATIC_UP_ONLY',
        input = 96,
    },
    downAlternative = {
        label = 'Scroll down',
        name = 'INPUT_VEH_CINEMATIC_DOWN_ONLY',
        input = 97,
    },
    confirm = {
        label = 'Enter',
        name = 'INPUT_FRONTEND_ACCEPT',
        input = 201,
    },
}
