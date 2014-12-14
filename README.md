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
Install [lftp](http://lftp.yar.ru). Rename `deploy-access-sample.sh` to `deploy-access.sh` and setup variables:

- `HOST`
- `USER`
- `TARGETFOLDER`


#### Authenification
To use SSH key-authenification in `lftp` set `PASS=''`. Otherwise you can use OS X Keychain to get server password. 
Replace `%ACCOUNT_NAME%` in `get_pw` function with account name of Keychain item and use `PASS=$(get_pw)`

Run `grunt publish` to generate `dist` and deploy to the server.

### Custom
Find task `publish` in `Gruntfile.js` and replace last sub-task `shell:deploy` with your own.

## License
MIT