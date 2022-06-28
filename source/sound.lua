local PD <const> = playdate
local SND <const> = PD.sound

function sound()
	local synthObj = PD.sound.synth.new(playdate.sound.kWaveSine)
	
	local noteTrack = PD.sound.track.new()
	noteTrack:setInstrument(synthObj)

	noteTrack:addNote(1, "Db3", 1)
	
	local seq = PD.sound.sequence.new()
	seq:setTempo(4)
	seq:addTrack(noteTrack)

    seq:play()
end

local function _newSynth(a, d, s, r, volume, sound)
	local synth = SND.synth.new(sound)
	synth:setADSR(a, d, s, r)
	synth:setVolume(volume)
	return synth
end

boop = _newSynth(0.2, 0.02, 0, 0, 0.6, SND.kWavePOVosim)
beep = _newSynth(0, 0.04, 0, 0, 0.25, SND.kWaveSawtooth)
blop = _newSynth(0, 0.1, 0, 0.2, 0.4, SND.kWavePOVosim)

function getCollideSound(int)
    if int < 0 then
        beep:playNote(100)
    elseif int == 0 then
        beep:playNote(150)
    else
        beep:playNote(200)
    end
end