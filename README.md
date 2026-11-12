# Roland AIRA System-1m — Reason Remote Codec

Deprecated Reason Remote files (Lua codec + remote map) for using the Roland AIRA System-1m as a hands-on synth controller for Reason's instruments. The surface appears in Reason as **Roland System-1**. No longer in development; kept here as an archive.

The codec and map are my own work, written 2014–2023.

## Controls

The codec reads the System-1m's panel as MIDI CCs on channel 1, plus keyboard, pitch bend and mod wheel (any channel):

- **LFO:** Shape, Fade Time, Rate, Pitch, Filter, Amp, Key Trig, Tempo Sync
- **Osc 1:** Type, Range, Color, Mod, Cross Mod
- **Osc 2:** Type, Range, Color, Tune, Mod, Ring, Sync
- **Mixer:** Osc 1, Osc 2, Sub Osc, Noise, Osc Type, Noise Type
- **Pitch env:** Env, Attack, Decay
- **Filter:** LPF Cutoff, Reso, Env, Key, LPF Type, HPF Cutoff, Attack, Decay, Sustain, Release
- **Amp:** Tone, Crusher, Attack, Decay, Sustain, Release
- **Effects:** Reverb, Delay, Delay Time
- **Performance:** Portamento, Legato, Mono

The seven buttons (Key Trig, Tempo Sync, Ring, Sync, Osc Type, Noise Type, LPF Type) get LED feedback.

Each device gets its own layout that follows the System-1m's panel as closely as that device allows. The **Crusher** knob is used as the device's master volume throughout.

## Supported devices

**Everywhere:** keyboard, pitch bend and mod wheel (Master Keyboard). Outside the device maps, LFO Key Trig / Tempo Sync step to the previous / next patch of the target device.

**Full maps — Reason devices**

Combinator (Rotary 1–4, Button 1–4, Mixer Level), Algoritm, Complex-1, Europa, Grain, Layers, Layers Wave Edition, Malström, Mimic, Monotone, NN-19, NN-XT, Parsec, PX7, SubTractor, Thor

**Full maps — Rack Extensions**

| Developer | Device | Remote ID |
|-----------|--------|-----------|
| AudioRealism | ABL2 | `se.audiorealism.reabl2` |
| AudioRealism | ABL3 | `se.audiorealism.abl3` |
| AudioRealism | Dominator | `se.audiorealism.Dominator` |
| Blamsoft | Viking | `com.blamsoft.Viking` |
| Blamsoft | VK-2 | `com.blamsoft.VK2` |
| Ekssperimental Sounds | ES01 | `se.ekss.es01` |
| Ekssperimental Sounds | ES400 | `se.ekssperimentalsounds.ES400` |
| FXpansion | Tres | `com.fxpansion.Tres` |
| Jiggery Pokery | JP Harmonic Synth | `com.jiggerypokery.JPSHarmonicSynth` |
| Jiggery Pokery | Transcendent 2000 | `com.jiggerypokery.Transcendent2000` |
| kiloHearts | kHs ONE | `com.kilohearts.khsONE` |
| KORG | Mono/Poly | `jp.co.korg.MonoPoly` |
| KORG | Polysix | `jp.co.korg.Polysix` |
| Primal Audio | FM4 | `com.primalaudio.FM4` |
| Quadelectra | Arkana | `com.quadelectra.Arkana` |
| Red Rock Sound | Ivoks | `ru.redrocksound.Ivoks` |
| Rob Papen | SubBoomBass | `com.robpapen.SubBoomBassRE` |
| Synapse Audio | Antidote | `com.synapseAudioSoftware.Antidote` |
| Synapse Audio | Legend | `com.synapseAudioSoftware.Legend` |
| Synapse Audio | Obsession | `com.synapseAudioSoftware.Obsession` |
| Zvork | Noxious | `fr.zvork.Noxious` |

**Volume only (Crusher knob → master volume)**

- Reason devices: Friktion, Processed Pianos, Radical Keys, `RDK`, Electric Bass, Scenic Hybrid, Umpf Club Drums, Umpf Retro Beats
- Rack Extensions: Inphonik RYM2612, LoveOne Protron, Noise Engineering (`AIV`, `BI`, `BIV`, `CIV`, `LIP`, `LIV`, `MI`, `MIV`, `SIV`, `RS_BI`, `RS_CIV`, `RS_LIV`, `RS_MI`, `RS_SIV`, `RS_VIV`), Oenkenstein `RK2B`, Presteign Sound Labs `Macro`, Quadelectra JackBox 707 / 727 / 808 / 909 / L1M / RZi, Synthetech Sound Spectra
- VST plug-ins: Plugin Boutique VirtualCZ, KORG M1, Nils Schneider K1v

## Install

1. Copy `System-1.luacodec`, `System-1.lua` and `System-1.png` to the `Remote/Codecs/Lua Codecs/Roland/` folder.
2. Copy `System-1.remotemap` to the `Remote/Maps/Roland/` folder.
3. Restart Reason, then add the surface manually in Preferences → Control Surfaces (Manufacturer: Roland, Model: System-1).

On macOS the Remote folder is `~/Library/Application Support/Propellerhead Software/Remote/`; on Windows it's `%APPDATA%\Propellerhead Software\Remote\`.

## Licence

MIT — see `LICENSE`.
