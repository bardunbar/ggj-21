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
00700700022222205666666700000000005500000000550000000000000000000055000000005500000000000000000000550000000055000000000000000000
00077000026777205666666700000000005500000000550000000000000000000055000000005500000000000000000000550000000055000000000000000000
00077000026777205666666700000000055007700770055000000000000000000550077007700550000000000000000005500770077005500000000000000000
00700700026667205666666700000000055555700755555000000000000000000555557007555550000000000000000005555570075555500000000000000000
00000000026667205666666700000000005555000055550000000000000000000055550000555500000000000000000000555500005555000000000000000000
00000000026262205555555500000000055055000055055000000000000000000550550000550550000000000000000005505500005505500000000000000000
00000000000000000000000000000000000000000000000000000000000000000055000000005500000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000055000000005500000000000000000000055000000550000000000000000000
00000000000000000000000000000000050500000000505000000000000000000550000000000550000000000000000000550000000055000000000000000000
00000000000000000000000000000000050500000000505000000000000000000550000000000550000000000000000005500770077005500000000000000000
00000000000000000000000000000000055507700770555000000000000000000055077007705500000000000000000005555570075555500000000000000000
00000000000000000000000000000000055555700755555000000000000000000555557007555550000000000000000000055550055550000000000000000000
00000000000000000000000000000000005d55000055d50000000000000000000500555005550050000000000000000000050050050050000000000000000000
00000000000000000000000000000000055055000055055000000000000000000000055005500000000000000000000000000050050000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000055000000550000000000000000000
00000000000000000000000000000000000000000000000000000000000000000550000000000550000000000000000000550770077055000000000000000000
00000000000000000000000000000000000000000000000000000000000000000550077007700550000000000000000005500770077005500000000000000000
00000000000000000000000000000000000000000000000000000000000000005500557007550055000000000000000005555550055555500000000000000000
00000000000000000000000000000000000000000000000000000000000000005555550000555555000000000000000000055050050550000000000000000000
00000000000000000000000000000000000000000000000000000000000000000055050000505500000000000000000000050050050050000000000000000000
00000000000000000000000000000000000000000000000000000000000000000550550000550550000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0009a0000009a0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
009aaa00009aaa000000000000000000000000000000000000000000000000000000000000000000000000000000000000550000000055000000000000000000
09aa5aa009a555a00000000000000000000000000000000000000000000000000000000000000000000000000000000000550770077055000000000000000000
9aa55aaa9aa5aaaa0000000000000000000000000000000000000000000000000000000000000000000000000000000005500750057005500000000000000000
09aa5aa009a555a00000000000000000000000000000000000000000000000000000000000000000000000000000000005555550055555500000000000000000
09aa5aa009aaa5a00000000000000000000000000000000000000000000000000000000000000000000000000000000000050550055050000000000000000000
09a555a009a555a00000000000000000000000000000000000000000000000000000000000000000000000000000000000550000000055000000000000000000
30303030303030303030303000000000555555555555555555555555000000000000066666666666666000007777777766000000660000000000006677777777
bb3bbb3b3bbb3bbb3bbb3bbb0000000053333b333b333bb33333b3b5000000000666666776676767776666006777767766600066666000000000066677667766
b3b3b3b3b3b3b3b3b3b3b3b3000000005b333333333333b333333335000000006667777777667777777766667767777777666667776660000006667777777767
33b3b3b3b333b3b3b3b3b3b3000000005333b3b33b33333333333335000000006777777777777667777777667777667777777777777760000006777777777777
444444545444444454444444000000005333333333b33b33bb33b3350000000067777667777777777666777d7777777777666777776666000066667777777777
4454444444445444444454440000000053333333333333b33b3333350000000066776677776677777776677d7667777776677777766776600667766776777767
454454545445445454454454000000005b33b3333b3b33333333b335000000000667777777777777777777dd7777777777776667777766600666777777767777
444454444444445444444454000000005b33333333333333b3333b3500000000006dddddddddddddddddddd0dddddddd77777777777777666677777777777667
00000000000000000000000000000000533b3333544444443b333335000000007777777777777777000000000000000000000000000000000000000077777777
00000000000000000000000000000000533333b35444445433b33b35000000007677677777777777000000000000000000000000000000000000000067776776
000000000000000000000000000000005333333354454554333333b5000000007777776777777667000000000000000000000000000000000000000077777777
0000000000000000000000000000000053333333544545443b3b3335000000006677777777777777000000000000000000000000000000000000000077777777
0000000000000000000000000000000053bb33b35445455433333335000000007776777777777777000000000000000000000000000000000000000077777777
00000000000000000000000000000000533b33335445445433333335000000007767766777667777000000000000000000000000000000000000000077767767
00000000000000000000000000000000533333b3544544443b333bb5000000007777777777777777000000000000000000000000000000000000000077777777
0000000000000000000000000000000053b3333b54454444333333b500000000dddddddddddddddd000000000000000000000000000000000000000077777777
00000000000000000000000000000000000000005445444400000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005445444400000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005445444400000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005454455400000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005454545400000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005454445400000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005445555400000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000005444444400000000000000000000000000000000000000000000000000000000000000000000000000000000
5777777756666667777777770000000054454444535545b333333333000000000000000000000000000000000000000000000000000000000000000000000000
5666666756666667666666660000000054554554535443533b333bb3000000000000000000000000000000000000000000000000000000000000000000000000
566666675666666766666666000000005454445455434353333333b3000000000000000000000000000000000000000000000000000000000000000000000000
5666666756666667666666660000000054544454444344443b333333000000000000000000000000000000000000000000000000000000000000000000000000
56666667566666676666666600000000544544545555555533b33b33000000000000000000000000000000000000000000000000000000000000000000000000
566666675666666766666666000000005445444444444444333333b3000000000000000000000000000000000000000000000000000000000000000000000000
5666666756666667666666660000000054454444444444443b3b3333000000000000000000000000000000000000000000000000000000000000000000000000
55555555566666675555555500000000544544444444444433333333000000000000000000000000000000000000000000000000000000000000000000000000
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
0000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000204000000000000000000000000000001010100010101000000000000000000000000000101010000000000000000000000000000010000000000000000000001010100010101000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0200000000000000000000000000000202000000000000000000000000000070707272727270000000007072727272707000000000000000000000000000007000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000271000000000000000000000000000071710000000000000000000000000000717100000000000000000000000000007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000271000000000000000000000000000071710000000000000000000000000000717100000000000000000000000000007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000271000000000000000000000000000071710000000000000000000000000000717100000000000000000000000000007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000271000200000000000000000002000071710000000000000000000000000000717100000000000000000000000000007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
020000000000000000000000000000027100000000000000000000000000007171000000000000000000000000000071714849494a00000000004e4c4d00007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
02000000000000000000000202020202710000000000000000000000000000717100000000000000000000000000007171000000000000004e4c4f5f4f4d007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
02000000000000000000000000000002710000000200000000000000000002717100000000000202020200000000007171000000000000485958594b584b4a7100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000271000000000000000000000000000071710000000000000000000000000000717100000000000000000000000000007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000000000000271000000000000000000000000000071710000000000000000000000000000717100000000000000000000000000007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020000000271000000000000000000000002000071710000000000000000300000000000717100000000000000000044454600007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000202020000000271000000020000000000000000000071710000000000000044454600000000717100000000000000004476767646007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000020000000271000000020000000000000000000071710000000000004444764646000000717100000000000000005476747656007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200000000000000000000020000000271000000020000000000020000000071710000000000000000555600000000717100000000000000005400650056007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0200003000000031000000000000000271000000020000000000000031000071710000000000007000650000000000717100003100000000000000550000007100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020202727272727272727272727272727202704040414142427000754042414042707040424240424240424242750000427000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100000000000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100000000000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100000000000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100000000000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100000000000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100000000000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100000000000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100000000000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100000000000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100000000000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7144454600000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7154555600000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100740000000000000000000000007171000000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100550000000000000000000000000071000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
7100740000000000000000000000000071000000000000300000656500000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
4240424042404240414042404140424040414042404140424041747440414042000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
000100001d0601e0602006023060290602f06035060380601200015000190001f000270002f000370000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
011000000303503035030350303503035030350303503035030350303503035050350503505035050350503505035050350503505035070350703503035000350303503035030350303503035030350303503035
011000000a0100a0100a0100c0100f0100f010110101301013010130101301011010110100f0100f0100f0100f0100f010110101101013010160101601018010180101601013010110100f0100f0100f0100f010
011000000f0100f0100f01011010130101601016010110100c0100a0100a0100a0100f010160101f0101b0101601013010130101301013010110101101011010110100f0100f0101101013010130100f0100c010
010200000536005360053600536005300053000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300003000030000300
__music__
03 01424344
01 01024344
02 01034344
