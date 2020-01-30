const Koa = require('koa')
const app = new Koa()
const port = 3000

app.use(async ctx => {
  ctx.body = 'Hello World'
})

// TODO: add logging
app
  .listen(port, () => {
    console.log(`Koa app running on port ${port}`)
  })
  .on('error', err => {
    console.error(`  Server Error:\n    ${err} \n`)
  })
