&nbsp;
<p align="center">
  <a href="https://krafi.info/chatgpt-is-now-on-linux-terminal/index.html" target="_blank">
    <img src="https://images.unsplash.com/photo-1675865254433-6ba341f0f00b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxMTc3M3wwfDF8c2VhcmNofDE2fHwlMjBjaGF0Z3B0fGVufDB8fHx8MTY3OTE0OTM5Nw&ixlib=rb-4.0.3&q=80&w=960" alt="Ghost" width="900px">
  </a>
</p>
&nbsp;


# D-Bus Notification Monitor for Telegram

This script is a Bash script that continuously monitors the D-Bus system message bus for notifications and sends them to a Telegram chat using the Telegram Bot API.

## Dont forget to Read my Blog post and Watch Video about this project.
[https://krafi.info/how-to-get-desktop-notifications-on-telegram-using-bash-script/index.html](https://krafi.info/how-to-get-desktop-notifications-on-telegram-using-bash-script/index.html)

## Disclaimer

**Please keep in mind that this script is offered "as is," with no guarantee or support.

## Requirements

This script requires the following dependencies to be installed:

- Bash
- jq
- curl

## Usage

Follow these instructions to run this script: 
note: its better to do all of this thing inside your ~/.local/bin/ So, 

```
cd ~/.local/bin/
```

1. Clone the repo 

```
git clone --depth 1 https://gitlab.com/krafi/linux-notifications-to-telegram.git

```
2. Open a terminal and browse to the directory storing the script.

```
cd linux-notifications-to-telegram 

```
3. Open the script in a text editor and modify the following variables:
   - `TELEGRAM_API_KEY`: Your Telegram Bot API key. ( search offical "BotFather" telegram for , and create a api key, Dont forget to join your bot first than run this script. )


   - `TELEGRAM_CHAT_ID`: The ID of the Telegram chat where you want to receive notifications. (
#search for a telegram bot "userunfobot" it will tell you your ID 10******
)

```
nano run.sh #make sure nano is installed on your linux system

```
4. Save the changes to the script and exit the text editor.

5. For keep the script executable, just use command “:

```
sudo chmod +x run.sh
sudo chmod +x i3_autostart.sh 



```

6 . Use the following code to launch the code:

```
./run.sh

```
7. Dont forget to setup autostart

The script will continuously monitor for notifications and send them to the specified Telegram chat using the Telegram Bot API.

## License

This script is released under the GPL-3 License. 
