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
The above should run the backend on port 8337 (http://localhost:8337)

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
