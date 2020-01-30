const Koa = require('koa')
const app = new Koa()

app.use(async ctx => {
  // ctx == context
  ctx.body = 'Hello World'
})

// TODO: add logging
app.listen(3000)
