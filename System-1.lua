function remote_init()

	local items={
		{name="Keyboard",			input="keyboard"},
		{name="Pitch Bend",			input="value",				min=0, max=16383},
		{name="Modulation",			input="value",				min=0, max=127},

		{name="LFO Shape",			input="value",				min=0, max=127},
		{name="LFO Fade Time",		input="value",				min=0, max=127},
		{name="LFO Rate",			input="value",				min=0, max=127},
		{name="LFO Pitch",			input="value",				min=0, max=127},
		{name="LFO Filter",			input="value",				min=0, max=127},
		{name="LFO Amp",			input="value",				min=0, max=127},
--BUTTONS
		{name="LFO Key Trig",		input="button",				output="value"},	
		{name="Tempo Sync",			input="button",				output="value"},
				
		{name="Osc 1 Type",			input="value",				min=0, max=127},
		{name="Osc 1 Range",		input="value",				min=0, max=127},
		{name="Osc 1 Color",		input="value",				min=0, max=127},
		{name="Osc 1 Mod",			input="value",				min=0, max=127},
		{name="Osc 1 Cross Mod",	input="value",				min=0, max=127},
		
		{name="Osc 2 Type",			input="value",				min=0, max=127},
		{name="Osc 2 Range",		input="value",				min=0, max=127},
		{name="Osc 2 Color",		input="value",				min=0, max=127},
		{name="Osc 2 Tune",			input="value",				min=0, max=127},
		{name="Osc 2 Mod",			input="value",				min=0, max=127},
--BUTTONS
		{name="Osc 2 Ring",			input="button",				output="value"},
		{name="Osc 2 Sync",			input="button",				output="value"},

		{name="Mixer Osc 1",		input="value",				min=0, max=127},
		{name="Mixer Osc 2",		input="value",				min=0, max=127},
		{name="Mixer Sub Osc",		input="value",				min=0, max=127},
		{name="Mixer Noise",		input="value",				min=0, max=127},
--BUTTONS
		{name="Mixer Osc Type",		input="button",				output="value"},
		{name="Noise Type",			input="button",				output="value"},

		{name="Pitch Env",			input="value",				min=0, max=127},
		{name="Pitch Attack",		input="value",				min=0, max=127},
		{name="Pitch Decay",		input="value",				min=0, max=127},

		{name="Filter LPF Cutoff",	input="value",				min=0, max=127},
		{name="Filter Reso",		input="value",				min=0, max=127},
		{name="Filter Env",			input="value",				min=0, max=127},
		{name="Filter Key",			input="value",				min=0, max=127},
--BUTTONS
		{name="Filter LPF Type",	input="button",				output="value"},

		{name="Filter HPF Cutoff",	input="value",				min=0, max=127},
		{name="Filter Attack",		input="value",				min=0, max=127},
		{name="Filter Decay",		input="value",				min=0, max=127},
		{name="Filter Sustain",		input="value",				min=0, max=127},
		{name="Filter Release",		input="value",				min=0, max=127},

		{name="Amp Tone",			input="value",				min=0, max=127},
		{name="Amp Crusher",		input="value",				min=0, max=127},
		{name="Amp Attack",			input="value",				min=0, max=127},
		{name="Amp Decay",			input="value",				min=0, max=127},
		{name="Amp Sustain",		input="value",				min=0, max=127},
		{name="Amp Release",		input="value",				min=0, max=127},

		{name="Effects Reverb",		input="value",				min=0, max=127},
		{name="Effects Delay",		input="value",				min=0, max=127},
		{name="Effects Delay Time",	input="value",				min=0, max=127},		

		{name="Portamento",			input="value",				min=0, max=127},
		{name="Legato",				input="value",				min=0, max=127},
		{name="Mono",				input="value",				min=0, max=127},
	
	}
	remote.define_items(items)

	local inputs={
	
--KEYBOARD	
  		{pattern="<100x>? yy zz",	name="Keyboard"},
		{pattern="e? xx yy",		name="Pitch Bend", value="y*128 + x"},
		{pattern="b? 01 xx",		name="Modulation"},  	
		
		{pattern="b0 23 xx",		name="LFO Shape"},
		{pattern="b0 1b xx",		name="LFO Fade Time"},
		{pattern="b0 1d xx",		name="LFO Rate"},
		{pattern="b0 1a xx",		name="LFO Pitch"},
		{pattern="b0 1c xx",		name="LFO Filter"},
		{pattern="b0 1e xx",		name="LFO Amp"},
--BUTTONS
		{pattern="b0 75 xx",		name="LFO Key Trig"},
		{pattern="b0 76 xx",		name="Tempo Sync"},

		{pattern="b0 2e xx",		name="Osc 1 Type"},
		{pattern="b0 2f xx",		name="Osc 1 Range"},
		{pattern="b0 32 xx",		name="Osc 1 Color"},
		{pattern="b0 3c xx",		name="Osc 1 Mod"},
		{pattern="b0 34 xx",		name="Osc 1 Cross Mod"},

		{pattern="b0 3d xx",		name="Osc 2 Type"},
		{pattern="b0 3e xx",		name="Osc 2 Range"},
		{pattern="b0 37 xx",		name="Osc 2 Color"},
		{pattern="b0 38 xx",		name="Osc 2 Tune"},
		{pattern="b0 3f xx",		name="Osc 2 Mod"},
--BUTTONS	
		{pattern="b0 6f xx",		name="Osc 2 Ring"},
		{pattern="b0 70 xx",		name="Osc 2 Sync"},

		{pattern="b0 10 xx",		name="Mixer Osc 1"},
		{pattern="b0 11 xx",		name="Mixer Osc 2"},
		{pattern="b0 12 xx",		name="Mixer Sub Osc"},
		{pattern="b0 13 xx",		name="Mixer Noise"},
--BUTTONS
		{pattern="b0 71 xx",		name="Mixer Osc Type"},
		{pattern="b0 72 xx",		name="Noise Type"},

		{pattern="b0 16 xx",		name="Pitch Env"},
		{pattern="b0 17 xx",		name="Pitch Attack"},
		{pattern="b0 18 xx",		name="Pitch Decay"},

		{pattern="b0 03 xx",		name="Filter LPF Cutoff"},
		{pattern="b0 09 xx",		name="Filter Reso"},
		{pattern="b0 51 xx",		name="Filter Env"},
		{pattern="b0 52 xx",		name="Filter Key"},
--BUTTONS
		{pattern="b0 73 xx",		name="Filter LPF Type"},

		{pattern="b0 4f xx",		name="Filter HPF Cutoff"},
		{pattern="b0 53 xx",		name="Filter Attack"},
		{pattern="b0 54 xx",		name="Filter Decay"},
		{pattern="b0 55 xx",		name="Filter Sustain"},
		{pattern="b0 56 xx",		name="Filter Release"},
		
		{pattern="b0 45 xx",		name="Amp Tone"},
		{pattern="b0 0c xx",		name="Amp Crusher"},
		{pattern="b0 59 xx",		name="Amp Attack"},
		{pattern="b0 5a xx",		name="Amp Decay"},
		{pattern="b0 60 xx",		name="Amp Sustain"},
		{pattern="b0 61 xx",		name="Amp Release"},

		{pattern="b0 5b xx",		name="Effects Reverb"},
		{pattern="b0 5e xx",		name="Effects Delay"},
		{pattern="b0 0d xx",		name="Effects Delay Time"},
		
		{pattern="b0 05 xx",		name="Portamento"},
		{pattern="b0 74 xx",		name="Legato"},
		{pattern="b0 77 xx",		name="Mono"},			

	}
	remote.define_auto_inputs(inputs)

  	local outputs={
		
		{name="LFO Key Trig",		pattern="b0 75 xx", x="value*127"},	
		{name="Tempo Sync",			pattern="b0 76 xx", x="value*127"},
		
		{name="Osc 2 Ring",			pattern="b0 6f xx", x="value*127"},
		{name="Osc 2 Sync",			pattern="b0 70 xx", x="value*127"},

		{name="Mixer Osc Type",		pattern="b0 71 xx", x="value*127"},
		{name="Noise Type",			pattern="b0 72 xx", x="value*127"},
		
		{name="Filter LPF Type",	pattern="b0 73 xx", x="value*127"},

	}
	remote.define_auto_outputs(outputs)
	end