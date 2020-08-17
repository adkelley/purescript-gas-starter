# purescript-gas-starter
A Template for new Google Apps Script Projects using PureScript

## Prerequisites
You should have already downloaded the tools needed to start a new
project in PureScript.  You will at least need the build tool and package manager, [spago](https://github.com/purescript/spago) and the purescript compiler [purs](https://github.com/purescript/purescript). 

You should know and understand how to create and run a Google Apps Script. If you haven't built a Google Apps Script, then stop here and go through Google's official [tutorials](https://developers.google.com/apps-script/articles/tutorials).  I also highly recommend the video tutorial [series](https://www.youtube.com/watch?v=aPJ-2U45BpA&list=PLv9Pf9aNgemv62NNC5bXLR0CzeaIj5bcw) from 'Learn Google Spreadsheets'.

## Getting Started
If this is your first time using this template, then I suggest you try building it using the default source files, which reads a cell 'A1' from an active Google Spreadsheetand logs its value to the console. This way you can be confident that you understand the steps necessary to build and run a script using Google's command line interface [cllasp](https://developers.google.com/apps-script/guides/clasp). 

Once you've satisfied the prerequisites above then first, check out the `package.json` scripts to better understand what's happening during the following steps:

1. Install the dependencies: `yarn install && spago install`
2. Login into clasp: `npx clasp login`
3. Create a new apps script project: `yarn clasp:create` and select `spreadsheet`
4. Build the bundle `yarn build`
5. Upload the script project `yarn push`
6. Go to your Google Drive and you should see a new spreadsheet named `Purescript-gas-starter`.  Add some text to the first cell 'A1', then open the script editor and run `main`.  Check the Logs and you should see your text.

Once you're comfortable with the build process, then feel free to reset the project `yarn clasp:reset`, modify the `Main.purs`, and create a new Apps Script project `yarn clasp:create`

## Tech Stack
- [google/clasp](https://github.com/google/clasp)
- [webpack](https://webpack.js.org/)
- [gas-webpack-plugin](https://github.com/fossamagna/gas-webpack-plugin)
- [purescript-google-appsscript](https://github.com/adkelley/purescript-google-appsscript)

## License
This software is released under the MIT License, see License.txt
