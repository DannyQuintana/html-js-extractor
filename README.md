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

## Uploading to GitHub
1. **Initialize a Git repository:**
   ```bash
   git init
   ```

2. **Add the script and README:**
   ```bash
   git add extract_classes_ids.sh README.md
   ```

3. **Commit the changes:**
   ```bash
   git commit -m "Initial commit: Add script and README"
   ```

4. **Create a repository on GitHub:**
   Go to [GitHub](https://github.com/) and create a new repository.

5. **Add the remote URL:**
   ```bash
   git remote add origin https://github.com/<your-username>/<your-repo-name>.git
   ```

6. **Push the changes:**
   ```bash
   git push -u origin main
   ```

## License
Feel free to modify and use this script as you see fit!

