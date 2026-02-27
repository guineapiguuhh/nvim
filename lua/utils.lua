local m = {}

---@param ... string
---@return string
function m.join_path(...)
	local args = { ... }
	local separator = "/"
	if vim.fn.has("win32") then
		separator = "\\"
	end
	return table.concat(args, separator)
end

---@param ... string
---@return string
function m.module_path(...)
	local args = { ... }

	local parts = {}
	for i, part in ipairs(args) do
		part = part:gsub("%/", ".")
		part = part:gsub("%\\", ".")
		if i == #args then
			part = part:gsub("%.lua", "")
		end
		table.insert(parts, part)
	end
	return table.concat(parts, ".")
end

return m
