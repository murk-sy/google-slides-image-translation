# Translation and proofreading using images in Google Slides

Using P1B1 or any kind of table format for translations is a waste of time. Writing P1B1 or inserting text position descriptions are completely unneeded and you could be spending your precious time translating instead. This is not exactly an original idea but it's a robust way of making the translation process as streamlined as possible without specialised tools.

## Workflow

This process uses Google Slides as a basis for page translations and uses a script written for AutoHotKey to speed up the process dramatically.

Page images are inserted on each page individually and resized to fit. The translator uses the script to automate creation of a rectangle to cover existing text and enter translations of that text. Because the original text is covered, any missed translations should be pretty obvious.

Though this likely depends more on the preferred process, the proofreader can quickly back up the original translation as a comment, edit the text in the drawn rectangle and then add any reasoning for the changes under that comment. This lets the translator easily know what was changed without resorting to use suggestions.

An additional advantage is that typesetters can simply select the entire rectangle and copy it, which will copy only exactly the text in that rectangle, rather than having to struggle selecting text from a longer document.


## Requirements

- Windows OS
- [AutoHotKey](https://www.autohotkey.com/download/) installed 
- English Google Docs

With AutoHotKey installed, [download the AHK script](AutoHotKey/) and run it. A list of commands will be shown on startup.

If you are using non-english Google docs, the script can be opened in Notepad and the names of commands can be replaced for your own language. 


## Usage

### Preparing the document

1. Create a new Google Slides presentation.

2. In the menu, open `View` and untick `Show speaker notes`. This will give you more height to work with.

3. In the menu, open `File` and select `Page Setup...`.

4. On the aspect ratio dropdown, select `Custom`, and in the unit selection, select `cm` and enter `21 x 29.7 cm` (A4 portrait).
    
    a. You can also use `29.7 x 42 cm` (A3 portrait), if you find yourself changing text size often to fit text. You can resize from A4 to A3 at any time without anything being affected.

5. Right click on the slide and in the `Apply layout` menu, select `Blank`.


### Inserting images

1. Drag and drop the image onto the page and resize it to fit (just fitting to bottom corner is fine)

2. Press `Ctrl`+`M` to add a new page

### Adjusting page view with AHK script

1. Use keypad `+` to zoom in
2. Use keypad `-` to zoom out
2. Use keypad `/` to fit to view


### Inserting translations with AHK script

1. With the page open, press `F12`. This will quickly enter a command to draw a rounded rectangle.

2. Your cursor should now be a cross. Draw a rectangle over the original text. You can immediately start typing.

3. You do not need to deselect the current rectangle - press `F12` immediately to draw a new rectangle.

### Copy the original translation to a comment with AHK script

1. With the relevant rectangle selected, press `Ctrl`+`F12`. This will copy the text, trim it internally, then quickly enter a command to create a comment, enter the text and save the comment.