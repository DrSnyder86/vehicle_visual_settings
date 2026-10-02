# DrSnyder Vehicle Visual Settings

A standalone FiveM resource that makes vehicle lighting brighter and more realistic. It improves headlights, tail lights, indicators, reversing lights, brake lights, extra lights, and the default-light emissives commonly used by emergency vehicles.

The resource also streams compensated texture dictionaries for the affected stock bus, airport bus, metro train, and taxi signs. These keep their artwork readable instead of turning into overexposed blocks when the brighter emissive settings are active.

## Features

- Brighter vehicle lights during both day and night
- Stronger emergency/default and extra-light emissives
- Compensated stock LED and taxi sign textures
- Standalone: no framework or dependency required
- Server-distributed settings and assets; players do not install a graphics pack manually

## Installation

1. Copy `vehicle_visual_settings` into your server's resources directory.
2. Add this line to `server.cfg`:

   ```cfg
   ensure vehicle_visual_settings
   ```

3. Restart the server. When testing an update to the streamed textures, reconnect or fully restart the FiveM client if an older cached asset is still visible.

FiveM automatically streams the `.ytd` files from the `stream` directory. No extra manifest entries or data-file declarations are required.

## Included sign compensation

| Stock model | Streamed dictionary | Darkened texture | Original format |
| --- | --- | --- | --- |
| `airbus` | `airbus.ytd` | `airbus_ledsign` | 512x128 DXT5, 6 mips |
| `bus` | `bus.ytd` | `metro_bus_ledsign` | 256x64 DXT5, 5 mips |
| `metrotrain` | `metrotrain.ytd` | `metro_train_ledsign_128` | 128x32 DXT1, 4 mips |
| `taxi` | `taxi.ytd` | `taxi_signs_2` | 512x256 DXT1, 7 mips |
| `taxi` | `taxi.ytd` | `taxi_detail2` | 256x256 DXT5, 7 mips |

The sign RGB values are reduced to 10% of their stock values. Alpha data is preserved exactly, and the original dimensions, compression formats, and mip counts are retained. The matching `+hi` dictionaries do not contain these sign textures and therefore do not need to be overridden.

## Current lighting values

| Light type | Day | Night |
| --- | ---: | ---: |
| Headlight | 380 | 250 |
| Tail light | 150 | 100 |
| Indicator | 525 | 355 |
| Reversing light | 155 | 135 |
| Default light / emergency emissive | 1600 | 1000 |
| Brake light | 240 | 200 |
| Middle brake light | 250 | 200 |
| Extra light | 1600 | 1000 |

The global vehicle emissive multiplier is `2.0`, and all configured "off" values are `0.0`. These values are defined in `client.lua`. If you materially change the default-light values, the included sign compensation may also need retuning.

## Compatibility and known limitations

- The included dictionaries are based on GTA V Legacy build `1.0.3788.0`. FiveM/GTA V Enhanced support has not been verified.
- Graphics packs, Post FX settings, weather, resolution, and individual vehicle materials can change the apparent result.
- Add-on or replacement vehicles may use different shaders and textures and are not automatically compensated.
- Do not run another resource that modifies the same visual-setting keys unless you know which resource starts last.
- Do not stream another `airbus.ytd`, `bus.ytd`, `metrotrain.ytd`, or `taxi.ytd` at the same time. Same-name replacements conflict rather than merge.

## Author

Created by **DrSnyder**  
[drsdev.dev](https://drsdev.dev/)

## License

The original Lua source code and documentation are released under the [MIT License](LICENSE).

The Rockstar-derived files in `stream/` are excluded from the MIT License. See [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) for their provenance and ownership information.
