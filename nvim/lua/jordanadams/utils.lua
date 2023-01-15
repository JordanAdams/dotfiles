local utils = {}

utils.load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

return utils
