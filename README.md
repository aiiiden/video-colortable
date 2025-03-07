# Video Color Table

This repo demonstrates how to restrict the color table of a video to a specific set of colors. This is useful for creating a consistent look for a video, or for creating a stylized effect.

## Usage

```bash
sh ./convert.sh input.mp4 palette.png output.mp4
```

This will convert the video `input.mp4` to `output.mp4` using the color table `palette.png`. The color table should be a 256x1 image where each pixel represents a color in the color table.

## Example

The following is an example of a color table and the resulting video:

<!-- Table -->
<table>
    <thead>
        <tr>
            <th>Input Video</th>
            <th>Output Video</th>
        </tr>
    </thead>
  <tr>
    <td>
    <video width="320" height="240" controls>
      <source src="input.mp4" type="video/mp4">
    </video>
    </td>
    <td>
    <video width="320" height="240" controls>
      <source src="output.mp4" type="video/mp4">
    </video>
    </td>
  </tr>
</table>

## Color Table

<img src="palette.png" width="256" height="30" />
