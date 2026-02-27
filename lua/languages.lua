local m = {}

---@type fun(dir: string, lang: Language)|nil
m.on_import_lang = nil

---@type Language[]
local langs = {}

---@type string[]
local keys = {}

---@param config LanguagesConfig|nil
function m.setup(config)
	config = config or {
		imports = {},
	}

	for i = 1, #config.imports do
		m.import_from(config.imports[i])
	end
end

---@param lang Language
function m.add(lang)
	local key = lang[1]
	langs[key] = lang
	keys[#keys + 1] = key
end

function m.clear()
	langs = {}
	keys = {}
end

---@return Language[]
function m.get_langs()
	return langs
end

---@param dir string
function m.import_from(dir)
	local true_path = vim.utils.join_path(vim.fn.stdpath("config"), "lua", dir)
	local files = vim.fn.readdir(true_path)

	for _, file_name in ipairs(files) do
		if file_name:find("%.lua$") == nil then
			goto continue
		end

		local module = require(vim.utils.module_path(dir, file_name))
		if not module.enabled and module.enabled ~= nil then
			goto continue
		end

		m.add(module)

		if m.on_import_lang then
			m.on_import_lang(dir, module)
		end
		::continue::
	end
end

---@param name string
---@return LanguageFormat|nil
function m.get_format(name)
	local language = langs[name]
	if not language then
		return nil
	end
	return language.format
end

---@return string[]
function m.keys()
	return keys
end

---@return string[][]
function m.get_formatters()
	local formatters = {}
	for key, lang in pairs(langs) do
		if not lang.format then
			goto continue
		end
		formatters[key] = lang.format.formatters
		::continue::
	end
	return formatters
end

return m
