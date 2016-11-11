# webpack-scaffold
My own scaffolding for webpack projects
Comes with an executable shell script to automatically copy and install npm dependencies

Depending on how you want to use this you can do two different things:
### 1. Clone this project and simply use it as a project scaffold
### 2. Clone this project and use the provided webpack-generator script
If you decided on option 2 (way easier to use)
- Clone the repo with `git clone`
- Create an alias in your bashrc or zshrc to point to the `webpack-generator.sh` executable file ex: `alias webpack-scaffold="~/Documents/path/to/cloned/repo/webpack-generator.sh"`
- Create a new directory and run your alias from terminal ex: `webpack-scaffold`
- Sit back and let all the files copy and npm packages install
- Copy the echoed scripts at the end of the installation into you package.json "scripts" object
- **Dev** Run `webpack` or `npm run build` for dev (emits non-minified files and sourcemaps for scss and js)
- **Prod** Run `npm run build-prod` for production (emits minified files without sourcemaps)
- Be happy never having to go through hours of setup for a webpack project again (assuming it comes with everything you need)

#### Todo:
1. Create interactive commandline scripts to allow choosing of specific frameworks
2. Setup testing frameworks
3. Much more that I cant think of at the moment
