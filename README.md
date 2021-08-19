# Aseprite to Godot variables

A Lua script to create arrays of colors and indices of those colors from an Aseprite sprite to be used in Godot.

![Aseprite](/examples/aseprite.png)

*A sprite in Aseprite.*

![Code](/examples/code.png)

*Output code from the script.*

## Prerequisites

* Aseprite >= `v1.2.10-beta3`.
* The **Sprite Color Mode** must be set to **RGB Color**.

## 🛠️ Installation

* Go to **File** > **Scripts** > **Open Scrtips Folder**.
* Copy `aseprite_to_godot_variables.lua` to that folder.


## 🚀 Usage

* Go to **File** > **Scripts** > **aseprite_to_godot_variables**. 
* When you are asked **"Do you want to run the following script?"**, click **Run**.
* Then you'll get another dialog saying that the script wants to access to a file. Click **Allow Write Access**.
* You'll get a final dialog informing you where the ouput file is saved.

By default, the output file is saved to Aseprite's scripts folder (where the script is [installed](#installation)), but you can create a new folder here and use the `output_dir_name` variable to save the output file to that folder. See [Output directory name](#output-directory-name).

## ⚙️ Configurable variables

### Output directory name

| Name | Type | Description | Default |
| ---- | ---- | ----------- | ------- |
| `output_dir_name` | `string` | Add an output directory to organize the output files. | `""` |

You can optionally add an output directory (**only if you previously created it in Aseprite's scripts folder!**) to better organize the output files from this script, so they don't mix with other Aseprite's scripts you might have.

### Output file extension

| Name | Type | Description | Default |
| ---- | ---- | ----------- | ------- |
| `output_file_ext` | `string` | The output file extension. | `.txt` |

### Color indices array name

| Name | Type | Description | Default |
| ---- | ---- | ----------- | ------- |
| `color_indices_array_name` | `string` | The name of the output variable for the color indices array. | `_sprite` |

### Colors array name

| Name | Type | Description | Default |
| ---- | ---- | ----------- | ------- |
| `colors_array_name` | `string` | The name of the output variable for the colors array. | `_colors` |

## 🗒️ Changelog

See [CHANGELOG](/CHANGELOG.md).

## 👤 Author

**hiulit**

- Twitter: [@hiulit](https://twitter.com/hiulit)
- GitHub: [@hiulit](https://github.com/hiulit)

## 🤝 Contributing

Feel free to:

- [Open an issue](https://github.com/hiulit/aseprite-to-godot-variables/issues) if you find a bug.
- [Create a pull request](https://github.com/hiulit/aseprite-to-godot-variables/pulls) if you have a new cool feature to add to the project.
- [Start a new discussion](https://github.com/hiulit/aseprite-to-godot-variables/discussions) about a feature request.

## 🙌 Supporting this project

If you love this project or find it helpful, please consider supporting it through any size donations to help make it better ❤️.

[![Become a patron](https://img.shields.io/badge/Become_a_patron-ff424d?logo=Patreon&style=for-the-badge&logoColor=white)](https://www.patreon.com/hiulit)

[![Suppor me on Ko-Fi](https://img.shields.io/badge/Support_me_on_Ko--fi-F16061?logo=Ko-fi&style=for-the-badge&logoColor=white)](https://ko-fi.com/F2F7136ND)

[![Buy me a coffee](https://img.shields.io/badge/Buy_me_a_coffee-FFDD00?logo=buy-me-a-coffee&style=for-the-badge&logoColor=black)](https://www.buymeacoffee.com/hiulit)

[![Donate Paypal](https://img.shields.io/badge/PayPal-00457C?logo=PayPal&style=for-the-badge&label=Donate)](https://www.paypal.com/paypalme/hiulit)

If you can't, consider sharing it with the world...

[![](https://img.shields.io/badge/Share_on_Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/intent/tweet?url=https%3A%2F%2Fgithub.com%2Fhiulit%2Faseprite-to-godot-variables&text="Aseprite+to+Godot+variables"%3A%0D%0AA+Lua+script+to+create+arrays+of+colors+and+indices+of+those+colors+from+an+Aseprite+sprite+to+be+used+in+Godot.%0Aby+%40hiulit%0A)

... or giving it a [star ⭐️](https://github.com/hiulit/aseprite-to-godot-variables/stargazers).

Thank you very much!

## 👏 Credits

Thanks to:

- [ruccho](https://github.com/ruccho) - For the [Generate Normal Map](https://gist.github.com/ruccho/efa1139ddd6da6d4d22def161209d2e7) script, which I used to learn how to get the pixels and its colors from a sprite.
- **Alícia Folgarona Ribot** ([@pingudroid](https://twitter.com/pingudroid)) - For creating the sprite in the example.

## 📝 Licenses

- Source code: [MIT License](/LICENSE).
