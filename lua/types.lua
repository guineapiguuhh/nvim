---@class LanguageFormat
---@field formatters? string[]
---@field shiftwidth? integer
---@field tabstop? integer
---@field spaces? bool

---@class Language
---@field enabled? boolean
---@field [1] string
---@field format? LanguageFormat
---@field lsp? string

---@class LanguagesConfig
---@field imports? string[]

---@class NvimConfig
---@field colorscheme? string
---@field keys? wk.Spec|{ [number]: wk.Spec|{ [number]: wk.Spec } }
---@field init? function
---@field config? function
