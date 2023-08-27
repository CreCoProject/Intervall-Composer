// fiftherPlay Function
(~thirdfourthfiftherPlay = {
	var freq, // Variable for the actual Frequency
	time; // Variable for the duration to next Note
	freq = 440;
	// Routine to Controll the Playing 5th Note
	Routine.run({
		loop({
			postln(freq); // Print actual Frequency for Testing

			if([false, true].choose) {
				if([false, true].choose) {
					freq = min(freq * (5/4), 20000);  // true function go one 5th higher
				} {
					freq = max(freq * (4/5), 80);  // false function go one 5th lower
			};}{
				if([false, true].choose) {
					if([false, true].choose) {
						freq = min(freq * (4/3), 20000);  // true function go one 5th higher
					} {
						freq = max(freq * (3/4), 80);  // false function go one 5th lower
				};}{
					if([false, true].choose) {
						freq = min(freq * (3/2), 20000);  // true function go one 5th higher
					} {
						freq = max(freq * (2/3), 80);  // false function go one 5th lower
		}}};

			// PLay Actual Note
			x = Synth(\help_MasterSynth, [\freq, freq , \startBelow, (10.30.rand2)/10, \startAbove, (10.30.rand2)/10, \endBelow, (10.30.rand2)/10, \endAbove, (10.30.rand2)/10, \adsra, (1.3.rand2), \adsrs, 1, \adsrr, (1.3.rand2), \form1, 220.2200.rand2, \form2, 220.2200.rand2, \form3, 220.2200.rand2, \forma1, (0.100.rand2/100), \forma2, (0.100.rand2/100), \forma3, (0.100.rand2/100),
]);
			// Wait Time for the next Note
			time = min(max(1.3.rand2, 1), 3);
			time.wait;
		});
	})
   };
)

// Call FitherPlay Function to play
 ~thirdfourthfiftherPlay.();
