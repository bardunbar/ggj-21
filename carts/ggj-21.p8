pico-8 cartridge // http://www.pico-8.com
version 41
__lua__
#include utilities.lua
#include hud.lua
#include levelbase.lua
#include firstlevel.lua
#include mainmenu.lua
#include whiteboxlevel.lua
#include player.lua
#include main.lua

__gfx__
00000000000000005777777700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000005666666700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700022222205666666700000000005500000000550000000000000000000055000000005500000000000000000000005500000550000000000000000000
00077000026777205666666700000000005500000000550000000000000000000055000000005500000000000000000000005500000055000000000000000000
00077000026777205666666700000000055007700770055000000000000000000550077007700550000000000000000007700550077005500000000000000000
00700700026667205666666700000000055555700755555000000000000000000555557007555550000000000000000007555550075555500000000000000000
00000000026667205666666700000000005555000055550000000000000000000055550000555500000000000000000000555500005550000000000000000000
00000000026262205555555500000000055055000055055000000000000000000550550000550550000000000000000000550550055055000000000000000000
00000000000000000000000000000000000000000000000000000000000000000055000000005500000000000000000000000000000000000000000000000000
033a3330033a33300222222002222220000000000000000000000000000000000055000000005500000000000000000000005505000055000000000000000000
03aaaa300aaaa3300229a220029aaa20050500000000505000000000000000000550000000000550000000000000000000555555000555050000000000000000
0aaaaa300aaaaa30029aaa20029aaa20050500000000505000000000000000000550000000000550000000000000000000550550005505550000000000000000
09aaaa300aaaa93009aaaaa009aaaaa0055507700770555000000000000000000055077007705500000000000000000000000555005005500000000000000000
039a9930099a9330029aaa20029aaa20055555700755555000000000000000000555557007555550000000000000000000007555000075550000000000000000
0339333003393330029aaa200229a220005d55000055d50000000000000000000500555005550050000000000000000000007700000077050000000000000000
00000000000000000000000000000000055055000055055000000000000000000000055005500000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000a00000000a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000770000507700000000000000000000
00aaaaa00aaaaa000009a000009aaa00000000000000000000000000000000000550000000000550000000000000000055570000555700000000000000000000
0aaaaaa00aaaaaa0009aaa00009aaa00000000000000000000000000000000000550077007700550000000000000000055500000055005000000000000000000
09aaaaa00aaaaa9009aaaaa009aaaaa0000000000000000000000000000000005500557007550055000000000000000005505500555055000000000000000000
009a99900999a900009aaa00009aaa00000000000000000000000000000000005555550000555555000000000000000055555500505550000000000000000000
0009000000009000009aaa000009a000000000000000000000000000000000000055050000505500000000000000000050550000005500000000000000000000
00000000000000000000000000000000000000000000000000000000000000000550550000550550000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0009a0000009a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
009aaa00009aaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09aa5aa009a555a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
9aa55aaa9aa5aaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09aa5aa009a555a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09aa5aa009aaa5a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
09a555a009a555a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
05505500005505500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00555500005555000000550500770000505500000000550500000000000000000000000000000000000000000005500000055000000000000000000000000000
05555570075555500055555555570000555555000055555500000000000000000000000000000000005500000055000000550770005500000055000000000000
05500770077005500055055055500000055055000055055000000000000000000000000000000000005500000550077005500770005507700055000000000000
00550000000055000000055505505500555000000000055500000000000000000000000000000000055007700555557005555550055007500550077000000000
00550000000055000000755555555500555700000000755500000000000000000000000000000000055555700005555000055050055555500555557000000000
00000000000000000000770050550000007700000000770000000000000000000000000000000000005555000005005000050050000505500055550000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000055055000000005000000000005500000550550000000000
00550550055055000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00055500005550000000550050770000005500000000550000000000000000000000000000000000000000000000000000000000000000000000000000000000
05555570075555500005550555570000505550000005550500000000000000000000000000000000000000000000000000000000000000000000000000000000
05500770077005500055055505500500555055000055055500000000000000000000000000000000000000000000000000000000000000000000000000000000
00550000000055000050055055505500055005000050055000000000000000000000000000000000000000000000000000000000000000000000000000000000
00055000000550000000755550555000555700000000755500000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000770500550000507700000000770500000000000000000000000000000000000000000000000000000000000000000000000000000000
__label__
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000222222000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000267772000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000267772000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000266672000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000266672000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000262622000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000057777777
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
56666667000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000056666667
55555555000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055555555
57777777577777775777777757777777577777775777777757777777577777775777777757777777577777775777777757777777577777775777777757777777
56666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667
56666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667
56666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667
56666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667
56666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667
56666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667566666675666666756666667
55555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555

__gff__
0000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000204000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0200000000000000000000000000000202000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000202000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000202000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000202000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000202000200000000000000000002000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000202000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000020202020202000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000202000000020000000000000000000202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000202000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000202000000000000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020000000202000000000000000000000002000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000202020000000202000000020000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000020000000202000000020000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000020000000202000000020000000000020000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200003000000031000000000000000202000000020000000000000000000002000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020202020202020202020202020202020202000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
0101000007060070600706008060090600b0600c0600e0601206015060190601f060270602f060370600000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011000000301503015030150301503015030150301503015030150301503015050150501505015050150501505015050150501505015070150701503015000150301503015030150301503015030150301503015
011000001d0101f0101f0102201022010240102701029010290102901027010220101f0101d0101d0101d0101d0101f01022010270102b0102e0102e0102b0102701024010220101f0101f0101f0101f01022010
01100000370103501035010350103a0103501035010370103001035010300102e0102e01033010350102e010300103301035010330102e010300103301033010370103a0103c0103a010370103c0103c0103a010
010200000536005360053600536005300053000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300
__music__
03 01020344

