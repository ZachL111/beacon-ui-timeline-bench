package.path = "src/?.lua;" .. package.path
local review = require("domain_review")

local item = { signal = 53, slack = 22, drag = 21, confidence = 45 }
assert(review.score(item) == 110)
assert(review.lane(item) == "watch")
