--- Tagged logging to the game log (stdout.txt).
-- @module my_mod.logger
local logger = {}

local TAG = "[my_mod]"

--- Set to true for verbose diagnostics.
logger.DEBUG = false

function logger.info(...)
	debugPrint(TAG, ...)
end

function logger.debug(...)
	if logger.DEBUG then debugPrint(TAG, ...) end
end

return logger
