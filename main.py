from quart import Quart, request

app = Quart(__name__)


@app.route("/")
async def index():
    await request.get_data()
    print(request.headers)
    return "<b>foo</b>"
