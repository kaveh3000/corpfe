# Instructions

- Check out the code:
```
   git clone https://github.com/leopard8k/corpfe.git fe5
```
- run the backend using docker
```
   cd fe5
   docker-compose up -d
```
The above should run the backend on port 1337 (http://localhost:1337)

- Now, install the frontend, which is a NextJS app:
```
   npm install
```
For some reason, the ```tailwindcss``` packages is not installed. [Bonus point for you if you could find out why]
So, install ```tailwindcss``` like below:
```
   npm install tailwindcss
```
- And, finally, run the application which will run on http://localhost:3000
```
   npm run develop
```   

If everything works out well, the frontend which is a NextJS (node) app listening on port 3000 (and can be invoked using browser as http://localhost:3000) will connect to backend on http://localhost:1337 to fetch the content, render it using the theme and show it in the browser.
