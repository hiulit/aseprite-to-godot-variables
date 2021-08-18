--------------------------------------------------
-- aseprite_to_godot_variables.lua
--
-- Aseprite to Godot variables
-- A script to create arrays of colors and indices of those colors from an Aseprite image to be used in Godot.
--
-- Author: hiulit (https://github.com/hiulit)
-- Repository: https://github.com/hiulit/aseprite-to-godot-variables
-- License: MIT (https://github.com/hiulit/aseprite-to-godot-variables/blob/master/LICENSE)
--
-- Thanks to ruccho (https://github.com/ruccho)
-- for the "Generate Normal Map" script (https://gist.github.com/ruccho/efa1139ddd6da6d4d22def161209d2e7),
-- which I used to learn how to get the pixels and its colors from a sprite.
--------------------------------------------------


-- CHECKS
--------------------

-- Check if Aseprite has the ability to execute scripts.
if app.apiVersion < 1 then
    return app.alert("This script requires Aseprite >= v1.2.10-beta3.")
end

-- Check if there is an active cel.
if not app.activeCel then
    return app.alert("There is no active image.")
end

-- Check if the Color Mode is RGB.
if app.activeCel.image.colorMode ~= ColorMode.RGB then
	return app.alert("This script is only for RGB Color Mode.")
end


-- VARIABLES
--------------------

-- Get the Aseprite's file title.
local file_title = app.fs.fileTitle(app.activeCel.sprite.filename)

-- You can optionally add an output directory
-- to better organize the output files from this script,
-- so they don't mix with other Aseprite's scripts you might have.
-- (only if you previously created it in Aseprite's scripts directory!)
local output_dir_name = ""

local output_file
local output_file_name = file_title .. "_variables_output"
-- You can change the output file extension to your liking.
local output_file_ext = ".txt"
local output_file_path = app.fs.joinPath(app.fs.userConfigPath, "scripts", output_dir_name,  output_file_name .. output_file_ext)

local cel = app.activeCel
local img = cel.image
local bounds_height = cel.bounds.height
local bounds_width = cel.bounds.width

-- These two variables are the names of the output array names.
-- You can change them to your liking.
local color_indices_array_name = "_pattern"
local colors_array_name = "_colors"

local colors = {}


-- GLOBAL FUNCTIONS
--------------------

-- Source: https://www.thetopsites.net/article/50079030.shtml
local function round(number, decimals)
    local power = 10 ^ decimals
    return math.floor(number * power) / power
end

-- Source: https://stackoverflow.com/questions/33510736/check-if-array-contains-specific-value
local function has_value(tab, val)
    for i, v in ipairs(tab) do
        if v == val then
            return true, i
        end
    end
    return false
end

local function write_to_file(value)
    output_file:write(value)
end


-- MAIN FUNCTION
--------------------

local function main()
    local rgbaR = app.pixelColor.rgbaR
    local rgbaG = app.pixelColor.rgbaG
    local rgbaB = app.pixelColor.rgbaB
    local rgbaA = app.pixelColor.rgbaA
    
    output_file = io.open(output_file_path, "w")
    
    write_to_file("var " .. color_indices_array_name .. " = [\n")

    for y = 0, bounds_height - 1 do
        write_to_file("\t[")

        for x = 0, bounds_width - 1 do
            if rgbaA(img:getPixel(x, y)) == 0 then
                write_to_file("null,")
            else
                local has_color, color_index = has_value(colors, img:getPixel(x, y))

                if has_color then
                    write_to_file(color_index - 1 .. ",")
                else
                    table.insert(colors, img:getPixel(x, y))
                    write_to_file(#colors - 1 .. ",")
                end
            end
        end

        write_to_file("],\n")
    end

    write_to_file("]\n")
    write_to_file("var " .. colors_array_name .. " = PoolColorArray([\n")

    for i, v in ipairs(colors) do
        write_to_file("\tColor(" .. round(rgbaR(v)/255, 2) .. "," .. round(rgbaG(v)/255, 2) .. "," .. round(rgbaB(v)/255, 2) .. "," .. round(rgbaA(v)/255, 2) .. "),\n")
    end

    write_to_file("])")

    output_file:close()
    app.alert("Output file saved in '" .. output_file_path .. "'.")
end

main()
