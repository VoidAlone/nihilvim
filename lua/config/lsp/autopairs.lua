local npairs = require('nvim-autopairs')
local Rule = require('nvim-autopairs.rule')

npairs.add_rules({
    Rule("{", "}", "cpp")
        :with_pair(cond.before_regex(".+"))    -- only if there's code before {
        :replace_endpair(function()             -- replace closing brace
            return "\n{\n\n}"                  -- insert newline for opening and closing
        end)
        :set_end_pair_length(1)
})
