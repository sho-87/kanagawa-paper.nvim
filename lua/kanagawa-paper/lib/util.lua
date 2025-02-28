local M = {}

-- Simple string interpolation.
-- Example template: "${name} is ${value}"
---@param str string template string
---@param table table key value pairs to replace in the string
function M.template(str, table)
	return (
		str:gsub("($%b{})", function(w)
			return vim.tbl_get(table, unpack(vim.split(w:sub(3, -2), ".", { plain = true }))) or w
		end)
	)
end

-- Clamp a value between min and max
---@param value number
---@param min number
---@param max number
function M.clamp(value, min, max)
	return math.max(min, math.min(max, value))
end

-- Get the sign of a number
---@param number number
---@return number
function M.sign(number)
	return number > 0 and 1 or (number == 0 and 0 or -1)
end

-- Rescale a number between -1 and 1 using power scaling
---@param value number The value to be scaled
---@param exponent number The exponent factor
---@return number
function M.scale_power(value, exponent)
	if not exponent then
		exponent = 0.5
	end
	local abs_value = math.abs(value)
	local scaled = 1 - (1 - abs_value) ^ exponent -- Reverse power scaling
	return M.sign(value) * scaled
end

-- Rescale a number between -1 and 1 using exponential scaling
---@param value number The value to be scaled
---@param factor number The exponent factor
---@return number
function M.scale_exponential(value, factor)
	if not factor then
		factor = 5
	end
	local abs_value = math.abs(value)
	local scaled = (math.exp(factor * abs_value) - 1) / (math.exp(factor) - 1)
	return M.sign(value) * scaled
end

-- Rescale a number between -1 and 1 using logarithmic scaling
---@param value number The value to be scaled
---@param base number The base of the logarithm
---@param scale_factor number Overall intensity of the scaling
---@return number
function M.scale_log(value, base, scale_factor)
	if not base then
		base = 3
	end
	local scaled_value = M.sign(value) * math.log(1 + base * math.abs(value)) / math.log(1 + base)
	return scaled_value * scale_factor
end

function M.scale_log_asymmetric(value, base, pos_factor, neg_factor)
	local scaled_value = math.log(1 + base * math.abs(value)) / math.log(1 + base)
	local scale_factor = (value > 0) and pos_factor or neg_factor

	return M.sign(value) * scaled_value * scale_factor
end

---@param file string
function M.read(file)
	local fd = assert(io.open(file, "r"))
	---@type string
	local data = fd:read("*a")
	fd:close()
	return data
end

---@param file string
---@param contents string
function M.write(file, contents)
	vim.fn.mkdir(vim.fn.fnamemodify(file, ":h"), "p")
	local fd = assert(io.open(file, "w+"))
	fd:write(contents)
	fd:close()
end

return M
