# HTML Classes and IDs Extractor

This is a shell script that extracts all `class` and `id` attributes from an HTML file and generates JavaScript code to create variables for querying these elements using `document.querySelector`. The output is a JavaScript file ready for use in your projects.

## Features
- Extracts unique `class` and `id` attributes from an HTML file.
- Converts them into JavaScript variables for easy DOM manipulation.
- Works directly from the command line.

## Requirements
- Bash
- Basic Unix utilities (`grep`, `sed`, `sort`, `tr`)

## Usage
1. **Make the script executable:**
   ```bash
   chmod +x extract_classes_ids.sh
   ```

2. **Run the script:**
   ```bash
   ./extract_classes_ids.sh <html_file> <output_file>
   ```
   - `<html_file>`: Path to the HTML file to be processed.
   - `<output_file>`: Path to the output JavaScript file.

### Example
Given an HTML file `index.html`:
```html
<div class="container main" id="header"></div>
<span class="text-important"></span>
```
Run:
```bash
./extract_classes_ids.sh index.html output.js
```
Output (`output.js`):
```javascript
// JavaScript Selectors

// Classes
const container = document.querySelector('.container');
const main = document.querySelector('.main');
const textimportant = document.querySelector('.text-important');

// IDs
const header = document.querySelector('#header');
```

## Adding to PATH
To use the script globally, move it to a directory in your PATH, such as `~/bin` or `/usr/local/bin`:
```bash
mv extract_classes_ids.sh ~/bin/
```
Ensure the directory is in your PATH:
```bash
export PATH="$HOME/bin:$PATH"
```


## License
Feel free to modify and use this script as you see fit!

