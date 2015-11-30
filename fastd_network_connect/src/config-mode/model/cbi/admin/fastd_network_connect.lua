local f, s, o, ssid
local uci = luci.model.uci.cursor()
local config = 'wireless'

f = SimpleForm("wifi", translate("Private WLAN"))
f.template = "admin/expertmode"

s = f:section(SimpleSection, nil, translate(
                'Your node can additionally extend your private network by bridging the WAN interface '
                  .. 'with a separate WLAN. This feature is completely independent of the mesh functionality. '
                  .. 'Please note that the private WLAN and meshing on the WAN interface should not be enabled '
                  .. 'at the same time.'
))

o = s:option(Flag, "enabled", translate("Enabled"))
o.default = (ssid and not uci:get_bool(config, primary_iface, "disabled")) and o.enabled or o.disabled
o.rmempty = false

o = s:option(Value, "ssid", translate("Name (SSID)"))
o:depends("enabled", '1')
o.default = ssid

o = s:option(Value, "key", translate("Key"), translate("8-63 characters"))
o:depends("enabled", '1')
o.datatype = "wpakey"
o.default = uci:get(config, primary_iface, "key")

function f.handle(self, state, data)
  
end

return f
