local LuaSnip = require("luasnip")
local s = LuaSnip.snippet
local text = LuaSnip.text_node
local insert = LuaSnip.insert_node

LuaSnip.add_snippets("odin", {
    s("procedure", {
        insert(1),
        text({ " :: proc(" }),
        insert(2),
        text({ ") {", "}" }),
    }),

    s("function", {
        insert(1),
        text({ " :: proc(" }),
        insert(2),
        text({ ") -> " }),
        insert(3),
        text({ " {", "}" }),
    }),

    s("struct", {
        insert(1),
        text({ " :: struct {", "}" }),
    }),

    s("union", {
        insert(1),
        text({ " :: union {", "}" }),
    }),

    s("enum", {
        insert(1),
        text({ " :: enum {", "}" }),
    }),
})

LuaSnip.add_snippets("go", {
    s("function", {
        text({ "func " }),
        insert(1),
        text({ "(" }),
        insert(2),
        text({ ") " }),
        insert(3),
        text({ " {", "}" }),
    }),

    s("struct", {
		text({ "type " }),
		insert(1),
		text({ " struct {", "}" }),
	}),

	s("interface", {
		text({ "type " }),
		insert(1),
		text({ " interface {", "}" }),
	}),

	s("enum", {
		text({ "type " }),
		insert(1),
		text({ " uint", "", "" }),
		text({ "const (", ")" }),
	}),
})
