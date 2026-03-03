local LuaSnip = require("luasnip")
local s = LuaSnip.snippet
local text = LuaSnip.text_node
local insert = LuaSnip.insert_node

LuaSnip.add_snippets("go", {
	s("struct", {
		text({ "type " }),
		insert(1, "Name"),
		text({ " struct {" }),
		insert(2),
		text({ "}" }),
	}),
	s("interface", {
		text({ "type " }),
		insert(1, "Name"),
		text({ " interface {" }),
		insert(2),
		text({ "}" }),
	}),
	s("enum", {
		text({ "type " }),
		insert(1, "Name"),
		text({ " uint" }),
		text({ "", "", "" }),
		text({ "const (" }),
		insert(2),
		text({ ")" }),
	}),

	s("main", {
		text({ "func main() {" }),
		insert(1),
		text({ "}" }),
	}),

	s("func", {
		text({ "func " }),
		insert(1, "Name"),
		text({ "(" }),
		insert(2),
		text({ ") " }),
		insert(3),
		text({ " {", "}" }),
	}),

	s("method", {
		text({ "func (" }),
		insert(1, "Type"),
		text({ ") " }),
		insert(2, "Name"),
		text({ "(" }),
		insert(3),
		text({ ") " }),
		insert(4),
		text({ " {", "}" }),
	}),
})
