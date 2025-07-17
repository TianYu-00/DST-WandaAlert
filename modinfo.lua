-- Localization
local isCN = locale == "zh" or locale == "zhr" or locale == "zht"

-- Mod Info
name = not isCN and "Wanda Alert" or "旺达预警"
description = not isCN and [[
󰀅 Wanda Alert 󰀅

Ever lose track of Wanda’s dwindling health (age) while juggling everything else?  
This mod watches Wanda’s health for you and gives instant text and/or sound alerts the moment she hits your custom thresholds.  
Set your own comparison operator, alert value, cooldown, and choose whether it repeats—so you can focus on surviving!

]]
or
[[
󰀅 旺达预警 󰀅

你是否经常在应对各种事务时，忘记关注旺达逐渐减少的年龄（生命）？
本模组将在年龄达到阈值时，通过文字或音效提醒你，避免猝死！
自定义比较符、冷却时间和重复提醒，专注生存更安心。

]]
author = "Tian || TianYu"
version = "1.3.1"
forumthread = ""

-- Mod Icon
icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- Client Or Server Sided
client_only_mod = true
all_clients_require_mod = false

-- Mod Compatibility
dst_compatible = true
dont_starve_compatible = false
reign_of_giants_compatible = false
hamlet_compatible = false
forge_compatible = false

-- Api Version
api_version = 10

-- Tags
server_filter_tags = {
   "wanda", "alert"
}

-- Mod Config
configuration_options = {
    {
        name = "Text_Enabled",
        label = not isCN and "Show text" or "显示文字",
        hover = not isCN and "Display alert text above Wanda when the condition is met \nDefault = true" or "当条件满足时在旺达头顶显示提示文字 \n默认 = 是",
        options = {
            {description = not isCN and "True" or "是", data = true},
            {description = not isCN and "False" or "否", data = false},
        },
        default = true
    },
    {
        name = "Text_Duration",
        label = not isCN and "Text duration" or "文字持续时间",
        hover = not isCN and "Duration (in seconds) the alert text stays visible \nDefault = 3" or "提示文字显示的时间（秒） \n默认 = 3",
        options = {
            {description = "1", data = 1},
            {description = "2", data = 2},
            {description = "3", data = 3},
            {description = "4", data = 4},
            {description = "5", data = 5},
            {description = "6", data = 6},
        },
        default = 3
    },
    {
        name = "Sound_Enabled",
        label = not isCN and "Play sound" or "播放音效",
        hover = not isCN and "Play a sound alert when the condition is met. \nDefault = false" or "当满足条件时播放提示音 \n默认 = 否",
        options = {
            {description = not isCN and "True" or "是", data = true},
            {description = not isCN and "False" or "否", data = false},
        },
        default = false
    },
    {
        name = "Sound_Volume",
        label = not isCN and "Alert Volume" or "提示音音量",
        hover = not isCN and "Adjust the volume of the alert sound. \n1 = Quietest, 10 = Loudest \nDefault = 7" or "调整提示音的音量 \n1 = 最低音量，10 = 最大音量 \n默认 = 7",
        options = {
            {description = "1", data = 0.1},
            {description = "2", data = 0.2},
            {description = "3", data = 0.3},
            {description = "4", data = 0.4},
            {description = "5", data = 0.5},
            {description = "6", data = 0.6},
            {description = "7", data = 0.7},
            {description = "8", data = 0.8},
            {description = "9", data = 0.9},
            {description = "10", data = 1},
        },
        default = 0.7
    },
    {
        name = "Alert_At_Health_Value",
        label = not isCN and "Alert threshold" or "警告阈值",
        hover = not isCN and "Set the age value to compare against. Alert triggers when Wanda's age meets the comparison condition \nDefault = 79" or "设置要比较的年龄值。当旺达达到该条件时触发警告 \n默认 = 79",
        options = {
            {description = "20", data = 60}, 
            {description = "21", data = 59}, 
            {description = "22", data = 58}, 
            {description = "23", data = 57},
            {description = "24", data = 56}, 
            {description = "25", data = 55}, 
            {description = "26", data = 54}, 
            {description = "27", data = 53},
            {description = "28", data = 52}, 
            {description = "29", data = 51}, 
            {description = "30", data = 50}, 
            {description = "31", data = 49},
            {description = "32", data = 48}, 
            {description = "33", data = 47}, 
            {description = "34", data = 46}, 
            {description = "35", data = 45},
            {description = "36", data = 44}, 
            {description = "37", data = 43}, 
            {description = "38", data = 42}, 
            {description = "39", data = 41},
            {description = "40", data = 40}, 
            {description = "41", data = 39}, 
            {description = "42", data = 38}, 
            {description = "43", data = 37},
            {description = "44", data = 36}, 
            {description = "45", data = 35}, 
            {description = "46", data = 34}, 
            {description = "47", data = 33},
            {description = "48", data = 32}, 
            {description = "49", data = 31}, 
            {description = "50", data = 30}, 
            {description = "51", data = 29},
            {description = "52", data = 28}, 
            {description = "53", data = 27}, 
            {description = "54", data = 26}, 
            {description = "55", data = 25},
            {description = "56", data = 24}, 
            {description = "57", data = 23}, 
            {description = "58", data = 22}, 
            {description = "59", data = 21},
            {description = "60", data = 20}, 
            {description = "61", data = 19}, 
            {description = "62", data = 18}, 
            {description = "63", data = 17},
            {description = "64", data = 16}, 
            {description = "65", data = 15}, 
            {description = "66", data = 14}, 
            {description = "67", data = 13},
            {description = "68", data = 12}, 
            {description = "69", data = 11}, 
            {description = "70", data = 10}, 
            {description = "71", data = 9},
            {description = "72", data = 8}, 
            {description = "73", data = 7}, 
            {description = "74", data = 6}, 
            {description = "75", data = 5},
            {description = "76", data = 4}, 
            {description = "77", data = 3}, 
            {description = "78", data = 2}, 
            {description = "79", data = 1},
        },
        default = 1
    },
    {
        name = "Health_Comparison_Operator",
        label = not isCN and "Health comparison operator" or "比较运算符",
        hover = not isCN and "Choose how Wanda's current health is compared to the alert value \nDefault = Equals to (==)" or "选择如何比较旺达的当前生命值和阈值 \n默认 = 等于 (==)",
        options = {
            {description = not isCN and "Greater than (>)" or "大于 (>)", data = ">"},
            {description = not isCN and "Greater than or equal to (≥)" or "大于等于 (≥)", data = ">="},
            {description = not isCN and "Equal to (==)" or "等于 (==)", data = "=="},
            {description = not isCN and "Less than (<)" or "小于 (<)", data = "<"},
            {description = not isCN and "Less than or equal to (≤)" or "小于等于 (≤)", data = "<="},
        },
        default = "==",
    },
    {
        name = "Repeat_Enabled",
        label = not isCN and "Alert repeat" or "重复提醒",
        hover = not isCN and "Enable to allow repeated alerts while health continues to meet the condition \nDefault = false" or "开启后，在条件持续满足时反复提醒 \n默认 = 否",
        options = {
            {description = not isCN and "True" or "是", data = true},
            {description = not isCN and "False" or "否", data = false},
        },
        default = false,
    },
    {
        name = "Alert_Cooldown",
        label = not isCN and "Alert cooldown" or "提醒冷却时间",
        hover = not isCN and "Minimum number of seconds between repeated alerts \nDefault = 6" or "重复提醒之间的最短时间间隔（秒） \n默认 = 6",
        options = {
            {description = "1", data = 1},
            {description = "2", data = 2},
            {description = "3", data = 3},
            {description = "4", data = 4},
            {description = "5", data = 5},
            {description = "6", data = 6},
            {description = "7", data = 7},
            {description = "8", data = 8},
            {description = "9", data = 9},
            {description = "10", data = 10},
        },
        default = 6
    },
}

-- Wanda Health Stages
-- 20-35
-- 36-64
-- 65-79

-- Emoji Icons
-- Source: https://dst-api-docs.fandom.com/wiki/Icon_codes

-- ["Red skull"] = "󰀀",
-- ["Beefalo"] = "󰀁",
-- ["Chest"] = "󰀂",
-- ["Chester"] = "󰀃",
-- ["Crockpot"] = "󰀄",
-- ["Eye"] = "󰀅",
-- ["Teeth"] = "󰀆",
-- ["Farm"] = "󰀇",

-- ["Fire"] = "󰀈",
-- ["Ghost"] = "󰀉",
-- ["Tombstone"] = "󰀊",
-- ["Meatbat"] = "󰀋",
-- ["Hammer"] = "󰀌",
-- ["Heart"] = "󰀍",
-- ["Stomach"] = "󰀎",
-- ["Lightbulb"] = "󰀏",

-- ["Pig"] = "󰀐",
-- ["Manure"] = "󰀑",
-- ["Red gem"] = "󰀒",
-- ["Brain"] = "󰀓",
-- ["Science machine"] = "󰀔",
-- ["White skull"] = "󰀕",
-- ["Top hat"] = "󰀖",
-- ["Spider net"] = "󰀗",

-- ["Swords"] = "󰀘",
-- ["Strong arm"] = "󰀙",
-- ["Gold nugget"] = "󰀚",
-- ["Torch"] = "󰀛",
-- ["Red flower"] = "󰀜",
-- ["Alchemy engine"] = "󰀝",
-- ["Backpack"] = "󰀞",
-- ["Bee hive"] = "󰀟",

-- ["Berry bush"] = "󰀠",
-- ["Carrot"] = "󰀡",
-- ["Fried egg"] = "󰀢",
-- ["Eyeplant"] = "󰀣",
-- ["Firepit"] = "󰀤",
-- ["Beefalo horn"] = "󰀥",
-- ["Meat"] = "󰀦",
-- ["Diamond"] = "󰀧",

-- ["Salt"] = "󰀨",
-- ["Shadow Manipulator"] = "󰀩",
-- ["Shovel"] = "󰀪",
-- ["Thumb up"] = "󰀫",
-- ["Trap"] = "󰀬",
-- ["Goblet"] = "󰀭",
-- ["Hand"] = "󰀮",
-- ["Wormhole"] = "󰀯"


-- Looking through my code and wanting to mod yourself? have a look at the below links.
-- Links
-- https://dst-api-docs.fandom.com/wiki/Modinfo.lua
-- https://forums.kleientertainment.com/forums/topic/116302-ultromans-tutorial-collection-newcomer-intro/
-- https://forums.kleientertainment.com/forums/topic/126774-documentation-list-of-all-engine-functions/