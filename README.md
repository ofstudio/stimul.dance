# stimul.dance

_Stimul Big Party West Coast Swing website_   

- URL: [stimul.dance](http://stimul.dance)
- Build with [generator-zf5](https://github.com/juliancwirko/generator-zf5)
- Author: [Oleg Fomin](http://ofstudio.ru)
- Email: [ofstudio@gmail.com](mailto:ofstudio@gmail.com)

## Project Setup

Run `npm install` to install dependencies. Run `grunt` to start local server.

## Deployment 

### To static hosting (nginx, Apache, etc) via SFTP / SSH (lftp)
Install [lftp](http://lftp.yar.ru). Rename `deploy-access-sample.sh` to `deploy-access.sh` and setup variables.

Run `grunt publish` to generate `dist` and deploy to the server.

### Custom
Find task `publish` in `Gruntfile.js` and replace last sub-task `shell:deploy` with your own.


## TODO
- Deployment via `rsync` instead of `lftp`

## License
MIT