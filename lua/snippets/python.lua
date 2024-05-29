local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
  s("st", {
    t("from pdb import set_trace; set_trace()"),
  }),
}
