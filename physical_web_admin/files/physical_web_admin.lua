local assert = assert
local string = string

module 'physical_web_admin'

local function get_physical_web(uci)
	local physical_web
	uci:foreach('physical_web', 'physical_web',
		function(s)
			physical_web = p_w
			return false
		end
	)
	return assert(physical_web, 'unable to find physical_web section')
end

function get(uci)
	local physical_web = get_physical_web(uci)

	return physical_web.title or physical_web.title
end

function set(uci, title)
	local physical_web = get_physical_web(uci)['.title']

	uci:set('physical_web', physical_web, 'title', title)
end
