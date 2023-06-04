import discord, random, os, time
from discord.ext import commands
 
input("Press Enter To Continue...")
os.system('cls')
token = input("Enter Token: ")
client = commands.Bot(command_prefix=commands.when_mentioned_or("$"))
os.system('cls')
os.system(f'title [AFK COUNTER]')
os.system(f'mode 60,20')
 


 
@client.event
async def on_ready():
  print(f""" \u001b[31m


░█████╗░███████╗██╗░░██╗
██╔══██╗██╔════╝██║░██╔╝
███████║█████╗░░█████═╝░
██╔══██║██╔══╝░░██╔═██╗░
██║░░██║██║░░░░░██║░╚██╗
╚═╝░░╚═╝╚═╝░░░░░╚═╝░░╚═╝

logged in {client.user}
------------------------------
""")
 
@client.event
async def on_message(message):
    channel = message.channel
    if message.content.startswith('afk'):
      for i in range(1, 100001):
        await message.channel.send(i)
        if i > 30:
          time.sleep(1.8)

 
client.run(token, bot=False)
