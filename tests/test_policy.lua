package.path = "src/?.lua;" .. package.path
local policy = require("policy")

local signal_case_1 = { demand = 63, capacity = 102, latency = 25, risk = 15, weight = 13 }
assert(policy.score(signal_case_1) == 116)
assert(policy.classify(signal_case_1) == "review")
local signal_case_2 = { demand = 62, capacity = 70, latency = 17, risk = 12, weight = 10 }
assert(policy.score(signal_case_2) == 114)
assert(policy.classify(signal_case_2) == "review")
local signal_case_3 = { demand = 88, capacity = 81, latency = 19, risk = 7, weight = 10 }
assert(policy.score(signal_case_3) == 199)
assert(policy.classify(signal_case_3) == "accept")
