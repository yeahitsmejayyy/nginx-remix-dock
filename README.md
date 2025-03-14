# nginx-remix-dock

## Welcome, Daring Remix Docker Trailblazer!

You’ve just cloned this Remix + Nginx Docker template. It’s about as thrilling as a barrel of monkeys (or at least a working web app).

### Quick Start (Because Time Is Money)
1. Clone this repo: `git clone https://github.com/yeahitsmejayyy/nginx-remix-dock`
2. Navigate: `cd nginx-remix-dock`
3. Build it: `docker build -t nginx-remix-dock .`
4. Run it: `docker run -d -p 80:80 --name remix-container nginx-remix-dock`
5. Behold: Open `http://localhost` (sudo might be your ally if port 80 grumbles)

### What’s Inside?
- A Remix app (TypeScript-ready) in `app/`, built with Vite
- A `Dockerfile` that’s more reliable than your morning coffee
- An `nginx.conf` to serve your app like a pro
- Static goodness in `app/build/client/` served by Nginx

### Pro Tips (You’re Basically a Docker Pro Now)
- Tweak your Remix code in `app/` (it’s your playground!)
- Rebuild with `docker build -t nginx-remix-dock .` after changes
- Stop it with: `docker stop remix-container` and `docker rm remix-container`
- Port 80 taken? Sigh, then try `8080` or battle with `sudo`

Blaze through the Docker frontier with your Remix app! (Or just serve a webpage without too much drama.)