-- engine_dnd
-- by: @cfd90
-- amp mod by synthi

local dnd = {}

dnd.add_params = function()
  -- Setup params.
  params:add_separator("osc 1")
  
  params:add_control("osc1Amp", "osc 1 amp", controlspec.new(0.0, 0.1, 'lin', 0.01, 0, '', 1/500))
  params:set_action("osc1Amp", function(x) engine.osc1Amp(x) end)
  
  params:add_control("osc1Freq", "osc 1 freq", controlspec.new(1, 2000, 'exp', 0.01, 55, 'hz', 1/500))
  params:set_action("osc1Freq", function(x)
    engine.osc1Freq(x + params:get("osc1FreqFine"))
  end)
  
  params:add_control("osc1FreqFine", "osc 1 freq (fine)", controlspec.new(-10, 10, 'lin', 0.01, 0, 'hz', 1/500))
  params:set_action("osc1FreqFine", function(x)
    engine.osc1Freq(x + params:get("osc1Freq"))
  end)
  
  params:add_control("osc1Fb", "osc 1 fb", controlspec.new(0.0, 4, 'lin', 0.01, 0, '', 1/500))
  params:set_action("osc1Fb", function(x) engine.osc1Fb(x) end)
  
  params:add_separator("osc 2")
  
  params:add_control("osc2Amp", "osc 2 amp", controlspec.new(0.0, 0.1, 'lin', 0.01, 0, '', 1/500))
  params:set_action("osc2Amp", function(x) engine.osc2Amp(x) end)
  
  params:add_control("osc2Freq", "osc 2 freq", controlspec.new(1, 2000, 'exp', 0.01, 110, 'hz', 1/500))
  params:set_action("osc2Freq", function(x)
    engine.osc2Freq(x + params:get("osc2FreqFine"))
  end)
  
  params:add_control("osc2FreqFine", "osc 2 freq (fine)", controlspec.new(-10, 10, 'lin', 0.01, 0, 'hz', 1/500))
  params:set_action("osc2FreqFine", function(x)
    engine.osc2Freq(x + params:get("osc2Freq"))
  end)
  
  params:add_control("osc2Fb", "osc 2 fb", controlspec.new(0.0, 4, 'lin', 0.01, 0, '', 1/500))
  params:set_action("osc2Fb", function(x) engine.osc2Fb(x) end)
  
  params:add_separator("osc 3")
  
  params:add_control("osc3Amp", "osc 3 amp", controlspec.new(0.0, 0.1, 'lin', 0.01, 0, '', 1/500))
  params:set_action("osc3Amp", function(x) engine.osc3Amp(x) end)
  
  params:add_control("osc3Freq", "osc 3 freq", controlspec.new(1, 2000, 'exp', 0.01, 220, 'hz', 1/500))
  params:set_action("osc3Freq", function(x)
    engine.osc3Freq(x + params:get("osc3FreqFine"))
  end)
  
  params:add_control("osc3FreqFine", "osc 3 freq (fine)", controlspec.new(-10, 10, 'lin', 0.01, 0, 'hz', 1/500))
  params:set_action("osc3FreqFine", function(x)
    engine.osc3Freq(x + params:get("osc3Freq"))
  end)
  
  params:add_control("osc3Fb", "osc 3 fb", controlspec.new(0.0, 4, 'lin', 0.01, 0, '', 1/500))
  params:set_action("osc3Fb", function(x) engine.osc3Fb(x) end)
  
  params:add_separator("osc *")
  
  params:add_control("oscSlop", "osc * slop", controlspec.new(0, 100, 'lin', 0.01, 0, '', 1/500))
  params:set_action("oscSlop", function(x) engine.oscSlop(x) end)
  
  params:add_control("oscMod", "osc * mod", controlspec.new(0, 1000, 'lin', 0.01, 0, '', 1/500))
  params:set_action("oscMod", function(x) engine.oscMod(x) end)
  
  params:add_separator("noise")

  params:add_control("noiseAmp", "noise amp", controlspec.new(0.0, 0.1, 'lin', 0.01, 0.00, '', 1/500))
  params:set_action("noiseAmp", function(x) engine.noiseAmp(x) end)
  
  params:add_control("filterFreq", "filter freq", controlspec.new(1, 12000, 'exp', 0.01, 200, 'hz', 1/500))
  params:set_action("filterFreq", function(x) engine.filterFreq(x) end)
  
  params:add_control("filterRes", "filter res", controlspec.new(0.1, 3.98, 'exp', 0.01, 0.2, '', 1/500))
  params:set_action("filterRes", function(x) engine.filterRes(x) end)
end

return dnd
