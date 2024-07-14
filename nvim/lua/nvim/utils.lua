-- utils.lua
local M = {}

-- Function to get all Lua files in a directory
function M.get_lua_files(directory)
    local handle = vim.loop.fs_scandir(directory)
    local files = {}
    if handle then
        while true do
            local name, type = vim.loop.fs_scandir_next(handle)
            if not name then break end
            if type == "file" and name:match("%.lua$") then
                table.insert(files, name:gsub("%.lua$", ""))
            end
        end
    end
    return files
end

return M
