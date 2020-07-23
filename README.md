# Aseprite to Godot variables

A Lua script to create arrays of colors and indexes of those colors from an Aseprite sprite to be used in Godot.

![Aseprite](/examples/aseprite.png)

*A sprite in Aseprite.*

![Code](/examples/code.png)

*Output code from the script.*

## Prerequisites

* Aseprite >= `v1.2.10-beta3`.
* The **Sprite Color Mode** must be set to **RGB Color**.

## Installation

* Go to **File** > **Scripts** > **Open Scrtips Folder**.
* Copy `aseprite_to_godot_variables.lua` to that folder.


## Usage

* Go to **File** > **Scripts** > **aseprite_to_godot_variables**. 
* When you are asked **"Do you want to run the following script?"**, click **Run**.
* Then you'll get another dialog saying that the script wants to access to a file. Click **Allow Write Access**.
* You'll get a final dialog informing you where the ouput file is saved.

By default, the output file is saved to Aseprite's scripts folder (where the script is [installed](#installation)), but you can create a new folder here and use the `output_dir_name` variable to save the output file to that folder. See [Output directory name](#output-directory-name).

## Configurable variables

### Output directory name

| Name | Type | Description | Default |
| ---- | ---- | ----------- | ------- |
| `output_dir_name` | `string` | Add an output directory to organize the output files. | `""` |

You can optionally add an output directory (**only if you previously created it in Aseprite's scripts folder!**) to better organize the output files from this script, so they don't mix with other Aseprite's scripts you might have.

### Output file extension

| Name | Type | Description | Default |
| ---- | ---- | ----------- | ------- |
| `output_file_ext` | `string` | The output file extension. | `.txt` |

### Color indexes array name

| Name | Type | Description | Default |
| ---- | ---- | ----------- | ------- |
| `color_indexes_array_name` | `string` | The name of the output variable for the color indexes array. | `pattern` |

### Colors array name

| Name | Type | Description | Default |
| ---- | ---- | ----------- | ------- |
| `colors_array_name` | `string` | The name of the output variable for the colors array. | `colors` |

### Debug mode

| Name | Type | Description | Default |
| ---- | ---- | ----------- | ------- |
| `debug_mode` | `bool` | If `debug_mode` is set to `true`, the output will be shown in the console (instead of overwriting `output_file`). | `false` |

![Console output](/examples/console-output.png)

*Console output*

## Changelog

See [CHANGELOG](/CHANGELOG.md).

## Authors

* Me 😛 [hiulit](https://github.com/hiulit).

## Credits

Thanks to:

* [ruccho](https://github.com/ruccho) - For the [Generate Normal Map](https://gist.github.com/ruccho/efa1139ddd6da6d4d22def161209d2e7) script, which I used to learn how to get the pixels and its colors from a sprite.
* Alícia Folgarona Ribot (Alfórium Studios) [@alforiumstudios](https://twitter.com/alforiumstudios) - For creating the pattern in the example.

## License

[MIT License](/LICENSE).
