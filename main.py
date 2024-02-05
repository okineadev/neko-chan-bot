import asyncio
import logging
import sys
from dotenv import load_dotenv
from os import getenv

from aiogram import Bot, Router, Dispatcher, types, F
from aiogram.enums import ParseMode
from aiogram.filters import CommandStart, Command, CommandObject
from aiogram.types import Message
from aiogram.utils.media_group import MediaGroupBuilder
import nekosbest_revive as nekosbest
import json

with open("assets/categories.json", 'r') as file:
    # Завантажити словник з файлу JSON
    loaded_file = json.load(file)
    categories = loaded_file["categories"]

photo_categories = categories["photo"]
video_categories = categories["video"]

allowed_commands = [*photo_categories, *video_categories]

# We load environment variables from the .env file
load_dotenv()

# Bot token can be obtained via https://t.me/BotFather
TOKEN = getenv("BOT_TOKEN")

# All handlers should be attached to the Router (or Dispatcher)
router = Router()

# The API we use to get images
# https://nekos.best/
nekoAPI=nekosbest.Client()

async def create_media(category: str, amount: int = 1):
    photos = await nekoAPI.get_image(category, amount)

    media_type = "video" if category in video_categories else "photo"
    album = MediaGroupBuilder()

    if not isinstance(photos, list):
        photos = [photos]

    for photo in photos:
        album.add(media=photo.url, type=media_type)

    return album.build()

@router.message(CommandStart())
async def command_start_handler(message: Message) -> None:
    kb = [
        [types.KeyboardButton(text="Neko")]
    ]
    keyboard = types.ReplyKeyboardMarkup(keyboard=kb, resize_keyboard=True)

    await message.answer(f"Hello {message.from_user.first_name}!\n\
Press the button \"*Neko*\", and I will send you a cat girl :D\n\n\
There are also many different categories here, e.g /kitsune.\n\
Look in the command menu, there you will see all categories", reply_markup=keyboard)

@router.message(F.text == "Neko")
async def send_neko(message: Message) -> None:
    await message.answer_media_group(media=await create_media("neko"))

@router.message(Command(*allowed_commands))
async def send_many_photos(message: Message, command: CommandObject):
    category = command.command
    args = command.args
    is_video = category in video_categories
    amount = 1

    if args:
        if is_video:
            # If the user wanted to call
            # several gifs -it should be reported
            await message.reply("GIFs can only be received one at a time.")

        else:
            if args.isdecimal():
                amount = int(args)

                if (amount > 0) and (amount <= 10):
                    pass
                    #await message.answer_media_group(media=await create_neko(command.command, amount))
                else:
                    await message.answer("Enter a valid value (from 1 to 10).")
                    return
            else:
                await message.reply("Invalid type specified. You must enter a number\nUsage: `/neko <int>`")
                return

    await message.answer_media_group(media=await create_media(category, amount))


async def main():
    # Initialize Bot instance with a default parse mode which will be passed to all API calls
    bot = Bot(TOKEN, parse_mode=ParseMode.MARKDOWN)
    dp = Dispatcher()
    dp.include_router(router)
    # And the run events dispatching
    await dp.start_polling(bot)


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO, stream=sys.stdout)
    asyncio.run(main())