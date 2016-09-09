local cbi = require "luci.cbi"
local i18n = require "luci.i18n"
local physical_web = require "physical_web"
local uci = luci.model.uci.cursor()

local M = {}

function M.section(form)
  local s = form:section(cbi.SimpleSection, nil, nil)
  local o = s:option(cbi.Value, "_title", i18n.translate("Title"))
  o.value = physical_web.get(uci)
  o.rmempty = false
end

function M.handle(data)
  physical_web.set(uci, data._title)
  uci:commit("physical_web")
end

return M
