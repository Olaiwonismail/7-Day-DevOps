from fastapi import FastAPI , Response

import requests
app = FastAPI()
@app.get("/")
async def read_root():
    return {"Welcome Ismail"}

@app.get("/image")
async def get_rick_and_morty_character():

    import random
    random_id = random.randint(1, 100)
    image_url = f'https://rickandmortyapi.com/api/character/avatar/{random_id}.jpeg'
    img_data = requests.get(image_url).content 
    return Response(content=img_data, media_type="image/jpeg")


if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, port=8000)