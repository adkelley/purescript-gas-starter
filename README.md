# purescript-gas-starter
A Template for new Google Apps Script Projects using PureScript

## Prerequisites
You should have already downloaded the tools needed to start a new
project in PureScript.  You will at least need the build tool and package manager, [spago](https://github.com/purescript/spago), and the purescript compiler [purs](https://github.com/purescript/purescript). See [Recommended tooling for PureScript in 2020](https://discourse.purescript.org/t/recommended-tooling-for-purescript-in-2020/1615)

You should know and understand how to create and run a Google Apps Script. If you haven't built a Google Apps Script before, then stop here and go through Google's official [tutorials](https://developers.google.com/apps-script/articles/tutorials).  Then, I also highly recommend you work through the video tutorial [series](https://www.youtube.com/watch?v=aPJ-2U45BpA&list=PLv9Pf9aNgemv62NNC5bXLR0CzeaIj5bcw) from 'Learn Google Spreadsheets'.

## Getting Started
If this is your first time using this template, I suggest you try building it using the default source files. This way, you can be confident that you understand the steps necessary to develop and run a script using Google's command-line interface [clasp](https://developers.google.com/apps-script/guides/clasp). The source file, `Main.purs` reads a cell 'A1' from an active Google Spreadsheet and logs its value to the console. 

Once you've satisfied the prerequisites above, check out the `package.json` scripts to better understand what's happening during the following steps:

1. Install the dependencies: `npm install && spago install`
2. Login into clasp: `npx clasp login`
3. Create a new apps script project: `npm run clasp:create` and select `sheets`
4. Build the bundle `npm run build`
5. Upload the script project `npm run push`
6. Go to your Google Drive, and you should see a new spreadsheet named `Purescript-gas-starter`.  Add some text to the first cell 'A1', then open the script editor and run `main`.  Check the Logs (View -> Logs), and you should see your text.

Once you're comfortable with the build process, then reset the project `npm run clasp:reset`, modify the `Main.purs`, and create a new Apps Script project `npm run clasp:create`

## Tech Stack
- [google/clasp](https://github.com/google/clasp)
- [webpack](https://webpack.js.org/)
- [gas-webpack-plugin](https://github.com/fossamagna/gas-webpack-plugin)
- [purescript-google-appsscript](https://github.com/adkelley/purescript-google-appsscript)

## How it works
Within the build script (i.e., `npm run build`), `spago` creates a single, dead-code-eliminated JS module, `main.js`,  from your PureScript source files and places it in in the `src/javascript` directory.  This script then uses `webpack` to bundle the assets, `javascript/main.js` and `javascript/index.js` together into `Code.gs`, and places into the `dist` directory.   Finally, the build script places a copy of `appscript.json` (created during `clasp create`) from the `src` directory into the `dist` directory.   These files can be pushed to `script.google.com` using the script `npm run push`.

The purpose of `src/javascript/index.js` is to `require` `main` from the `main.js` file.  Google Apps Script requires this top-level function declaration as an entry point for [google.script.run](https://developers.google.com/apps-script/guides/html/reference/run).


## PureScript / JavaScript interop
TODO: Write this section

## License
This software is released under the MIT License, see 'License'.


