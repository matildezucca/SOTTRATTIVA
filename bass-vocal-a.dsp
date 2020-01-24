 import("stdfaust.lib");
fcut = vslider("freq CUT [style:knob][scale:exp]", 880, 20, 10000, 1);
order = 32;
f1 = no.noise : fi.lowpass(order,fcut): fi.highpass(order,fcut);
f2 = no.noise : fi.highpass(order,fcut*2): fi.lowpass(order,fcut*2);
process =f1 + f2;

// vocale E voce di basso
// f1 f2 f3 f4
// 600 1040 2250 2450 2750 (frequenze)
//60 70 110 120 130 (larghezza di banda Hz)
// 0 -7 -9 -9 -20 (db)
// a casa: far suonare la vocale E con questi parametri
