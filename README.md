# Personal Website

This repo contains the code for my personal website that contains links, resume, etc.

# Tech Stack

- Static HTML website bundled using [Parcel](https://parceljs.org/docs/) (see `.parcelrc`)
- HTML templating is handled by [Handlebars](https://handlebarsjs.com) with variables defined in `.hbsrc`
    * `.hbsrc` is encrypted via [git-crypt](https://github.com/agwa/git-crypt). This just allows me to control what content is stored forever in git history.
- CSS utilizes [Tailwind](https://tailwindcss.com/) classes and is compiled 
- A few additional CSS components are used from [DaisyUI](https://daisyui.com)
- Deployment is accomplished via `deploy.sh` which:
    * Builds via Parcel
    * Commits to a temporary branch called `deploy`
    * Pushes to my remote box via git+ssh
    * A git receive hook on the remote box updates the appropriate files
