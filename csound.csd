<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
-odac      ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
 -o pretentiousRandomMusic.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 32
nchnls = 2
0dbfs  = 1

instr 1

kfreq = 440
kjet init p4			;vary air jet
iatt = 0.1
idetk = 0.1
kngain = 0.15
kvibf = 5.925
kvamp = 0.05

asig wgflute .8, p4, kjet, iatt, idetk, kngain, kvibf, kvamp, 1
     outs asig, asig

endin
</CsInstruments>
<CsScore>
f 1 0 16384 10 1		;sine wave
i 1 0 .2352941 1244.5079348883201240
i 1 0 .1538461 415.3046975799451840
i 1 1.0000000 .1428571 116.5409403795228680
i 1 .2352941 .6666666 1108.7305239074856000
i 1 1.1290322 .1538461 440
i 1 1.2352941 1.3333333 29.1352350948808160
i 1 1.3395585 .1666666 30.8677063285079720
i 1 2.2352941 .1818181 1244.5079348883201240
i 1 1.7395585 .2352941 123.4708253140314480
i 1 3.5686274 4.0000000 116.5409403795228680
i 1 1.9748526 .8000000 277.1826309768724120
i 1 7.5686274 .1290322 220.0000000000003960
i 1 2.1415192 1.3333333 246.9416506280624120
i 1 7.8039215 .5000000 349.2282314330040880
i 1 2.5415192 .2105263 27.5000000000001760
i 1 7.9467786 .4000000 349.2282314330040880
i 1 2.7015192 .4444444 1108.7305239074856000
i 1 8.1467786 1.0000000 1174.6590716696271040
i 1 2.8443763 .1818181 329.6275569128701720
i 1 8.3820727 .5000000 369.9944227116345560
i 1 3.1777096 .1379310 1661.2187903197745760
i 1 8.6173668 .3636363 1567.9817439269918000
i 1 4.1777096 1.0000000 415.3046975799451840
i 1 8.9030810 .4000000 932.3275230361779280
i 1 4.5110429 .2857142 622.2539674441612280
i 1 9.0697476 1.0000000 466.1637615180898440
i 1 4.6648890 .1600000 1759.9999999999934000
i 1 9.2126047 .1481481 2489.0158697766356720
i 1 4.8077461 .1290322 1108.7305239074856000
i 1 9.4030808 1.3333333 155.5634918610408680
i 1 4.9615922 .1379310 41.2034446141089640
i 1 9.5697474 .2000000 103.8261743949866480
i 1 5.2473064 .2000000 440
i 1 9.8774397 .1379310 698.4564628660069000
i 1 6.0473064 1.0000000 1244.5079348883201240
i 1 10.0774397 .1379310 138.5913154884364480
i 1 6.2011525 .2000000 830.6093951598888280
i 1 10.7441063 .2105263 2217.4610478149671080
i 1 6.5344858 4.0000000 30.8677063285079720
i 1 10.9107729 .1904761 349.2282314330040880
i 1 7.3344858 .2105263 1479.9776908465327680
i 1 11.1212992 .5000000 116.5409403795228680
i 1 7.7789302 .4000000 2489.0158697766356720
i 1 11.2641563 .3076923 30.8677063285079720
i 1 8.0142243 .3076923 46.2493028389545560
i 1 11.4070134 .8000000 43.6535289291257200
i 1 8.3219166 .5000000 1661.2187903197745760
i 1 12.7403467 .2352941 130.8127826502997280
i 1 8.6855529 .3636363 349.2282314330040880
i 1 12.9142597 .1481481 30.8677063285079720
i 1 8.8188862 .1481481 92.4986056779089800
i 1 13.3587041 .4444444 73.4161919793522000
i 1 9.6188862 .3636363 34.6478288721092440
i 1 15.3587041 .3333333 195.9977179908750640
i 1 9.9522195 .5000000 415.3046975799451840
i 1 15.6087041 .2857142 51.9130871974934120
i 1 10.7522195 .5000000 1108.7305239074856000
i 1 19.6087041 .8000000 29.1352350948808160
i 1 11.7522195 .3636363 220.0000000000003960
i 1 20.0531485 .3636363 116.5409403795228680
i 1 11.9340376 .4000000 369.9944227116345560
i 1 20.1821807 4.0000000 184.9972113558176080
i 1 12.1840376 .4000000 38.8908729652603600
i 1 20.3250378 .2222222 587.3295358348146520
i 1 12.7554661 .1904761 1108.7305239074856000
i 1 20.4629688 1.3333333 92.4986056779089800
i 1 13.7554661 4.0000000 329.6275569128701720
i 1 20.6229688 .2000000 92.4986056779089800
i 1 13.9659924 .1333333 2793.8258514640171720
i 1 20.7768149 .1666666 174.6141157165023520
i 1 14.2517066 .2000000 46.2493028389545560
i 1 20.9249630 .2352941 36.7080959896761880
i 1 14.8231351 .3636363 61.7354126570158120
i 1 21.2885993 .3636363 48.9994294977189200
i 1 15.0049532 2.0000000 349.2282314330040880
i 1 22.2885993 1.3333333 51.9130871974934120
i 1 15.2154795 2.0000000 138.5913154884364480
i 1 22.4219326 2.0000000 329.6275569128701720
i 1 15.3693256 4.0000000 110.0000000000003960
i 1 22.5885992 .1481481 27.5000000000001760
i 1 15.5511437 .3076923 36.7080959896761880
i 1 22.7790753 .3636363 1567.9817439269918000
i 1 16.8844770 .3076923 1975.5332050244884280
i 1 22.9529883 .1538461 123.4708253140314480
i 1 17.1921693 .1538461 174.6141157165023520
i 1 23.1635146 1.3333333 195.9977179908750640
i 1 19.1921693 .3333333 38.8908729652603600
i 1 23.3116627 .2105263 46.2493028389545560
i 1 19.3521693 .1481481 2793.8258514640171720
i 1 23.5783293 2.0000000 77.7817459305205880
i 1 19.6188359 .4444444 466.1637615180898440
i 1 25.5783293 .2000000 130.8127826502997280
i 1 20.6188359 .3076923 1046.5022612023920600
i 1 25.7888556 .2500000 92.4986056779089800
i 1 20.7788359 .2500000 493.8833012561239440
i 1 25.9793317 .2222222 87.3070578582513080
i 1 20.9693120 .2000000 1567.9817439269918000
i 1 26.4237761 .3636363 55.0000000000002640
i 1 21.1174601 2.0000000 554.3652619537438120
i 1 27.0904427 .2500000 65.4063913251499520
i 1 21.2713062 .2222222 207.6523487899729880
i 1 27.2442888 .3636363 1244.5079348883201240
i 1 21.8427347 2.0000000 130.8127826502997280
i 1 27.4109554 .4000000 1864.6550460723524240
i 1 22.1284489 .3076923 184.9972113558176080
i 1 27.7745917 .1904761 783.9908719634973520
i 1 22.2663799 .2500000 38.8908729652603600
i 1 28.4412583 .1333333 261.6255653005989720
i 1 22.6300162 .1379310 36.7080959896761880
i 1 28.6079249 .2222222 2217.4610478149671080
i 1 22.8300162 .8000000 932.3275230361779280
i 1 28.7679249 .2857142 349.2282314330040880
i 1 24.8300162 .1904761 110.0000000000003960
i 1 29.4345915 .2000000 293.6647679174078760
i 1 24.9781643 .1600000 65.4063913251499520
i 1 29.6085045 .4444444 195.9977179908750640
i 1 25.1520773 .8000000 466.1637615180898440
i 1 29.8585045 .3333333 155.5634918610408680
i 1 25.4854106 .5714285 220.0000000000003960
i 1 29.9875367 .5000000 48.9994294977189200
i 1 25.6144428 .1333333 29.1352350948808160
i 1 30.2228308 .1333333 65.4063913251499520
i 1 25.7811094 .8000000 879.9999999999983280
i 1 30.4450530 .2500000 261.6255653005989720
i 1 27.7811094 .2500000 207.6523487899729880
i 1 30.5829840 .1379310 349.2282314330040880
i 1 27.9477760 .6666666 77.7817459305205880
i 1 30.7258411 .6666666 987.7666025122460400
i 1 31.9477760 .1600000 46.2493028389545560
i 1 30.8925077 1.0000000 1244.5079348883201240
i 1 32.0959241 .1818181 174.6141157165023520
i 1 31.0304387 .1666666 27.5000000000001760
i 1 32.5403685 .1481481 155.5634918610408680
i 1 31.2209148 .8000000 369.9944227116345560
i 1 32.6832256 .1600000 130.8127826502997280
i 1 31.3588458 .1600000 61.7354126570158120
i 1 32.9054478 1.0000000 38.8908729652603600
i 1 31.4967768 2.0000000 2637.0204553029467240
i 1 33.4768763 1.3333333 174.6141157165023520
i 1 32.4967768 .1428571 58.2704701897615440
i 1 37.4768763 2.0000000 110.0000000000003960
i 1 32.7189990 .1818181 51.9130871974934120
i 1 37.6990985 .2222222 174.6141157165023520
i 1 32.9689990 .2000000 1318.5102276514758040
i 1 38.1435429 .1481481 82.4068892282178400
i 1 33.6356656 .1481481 277.1826309768724120
i 1 38.5879873 .1666666 92.4986056779089800
i 1 34.3023322 .2105263 932.3275230361779280
i 1 39.1594158 .2222222 246.9416506280624120
i 1 34.4504803 .3076923 1661.2187903197745760
i 1 39.3260824 .3076923 73.4161919793522000
i 1 34.7004803 .2222222 879.9999999999983280
i 1 39.4594157 .1600000 207.6523487899729880
i 1 34.8822984 .1333333 58.2704701897615440
i 1 40.1260823 4.0000000 2489.0158697766356720
i 1 35.2822984 .1333333 739.9888454232677480
i 1 40.2640133 .1600000 51.9130871974934120
i 1 35.7822984 .1904761 1864.6550460723524240
i 1 41.0640133 .3636363 184.9972113558176080
i 1 35.9641165 .2666666 103.8261743949866480
i 1 41.4640133 .1904761 466.1637615180898440
i 1 36.6307831 .1481481 103.8261743949866480
i 1 41.6178594 .3333333 34.6478288721092440
i 1 37.9641164 .1333333 130.8127826502997280
i 1 41.9035736 .1379310 1174.6590716696271040
i 1 38.1380294 .6666666 92.4986056779089800
i 1 42.1140999 .3333333 58.2704701897615440
i 1 38.2918755 .2857142 1864.6550460723524240
i 1 42.2679460 .1290322 58.2704701897615440
i 1 38.4518755 .1818181 369.9944227116345560
i 1 42.4901682 .5000000 65.4063913251499520
i 1 38.5898065 .3076923 43.6535289291257200
i 1 42.6568348 .6666666 155.5634918610408680
i 1 39.0342509 .1818181 130.8127826502997280
i 1 42.9068348 .2105263 233.0818807590453400
i 1 39.2081639 .1904761 55.0000000000002640
i 1 43.4068348 .8000000 73.4161919793522000
i 1 39.3460949 .1481481 622.2539674441612280
i 1 43.9782633 .1333333 65.4063913251499520
i 1 40.3460949 .5714285 73.4161919793522000
i 1 44.1382633 .6666666 523.2511306011970200
i 1 40.5279130 .3333333 87.3070578582513080
i 1 44.3287394 .1538461 164.8137784564353720
i 1 40.9723574 .1818181 369.9944227116345560
i 1 44.6923757 .2222222 184.9972113558176080
i 1 41.7723574 .1600000 36.7080959896761880
i 1 44.8923757 .1290322 2217.4610478149671080
i 1 42.0580716 .1904761 87.3070578582513080
i 1 45.1423757 .1428571 92.4986056779089800
i 1 42.3080716 .2352941 110.0000000000003960
i 1 45.6423757 .3333333 329.6275569128701720
i 1 42.5747382 .3076923 55.0000000000002640
i 1 45.8529020 .1538461 1046.5022612023920600
i 1 42.7486512 .5714285 554.3652619537438120

e
</CsScore>
</CsoundSynthesizer>