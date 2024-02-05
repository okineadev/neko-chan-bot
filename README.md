<a name="readme-top"></a>

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/okineadev/neko-chan-bot">
    <img src="public/logo.jpg" alt="Logo">
  </a>

<h3 align="center">NekoChan</h3>

  <p align="center">
    A Telegram bot with cute cat girls (and not only) 😊
    <br />
    <a href="https://github.com/okineadev/neko-chan-bot/issues">Report Bug</a>
    ·
    <a href="https://github.com/okineadev/neko-chan-bot/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

<img src="public/screenshot.jpg" width="300"></img>

Цей бот вміє над

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.

- **Git**
- **make** (in Linux)
- **Bash** or **cygwin-like** shell (in Windows)

### Installation

1. Create a bot in [@BotFather](https://t.me/botfather) and copy the token
2. Clone the repo
   ```sh
   git clone https://github.com/okineadev/meow-matrix.git
   cd meow-matrix
   ```
3. Install all dependencies
   ```sh
   make setup
   # Or run this script if you on Windows
   # ./setup.sh
   ```
4. Add your bot's token to the `.env` (environment) file
   ```sh
   echo 'BOT_TOKEN="<your bot token>" >> .env'
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

Write a command to the bot with the category of photo or gif you want to receive

Usage: `/<category> <amount>`

Example: `/neko`

The bot will send you one photo of a kitten, to get several at the same time, write the number you want to get at the end: `/neko 8`

> [!NOTE]
> Note that the maximum number of photos at a time is 10 pieces.

You can also get a GIF by doing the same thing as in the previous step.

> [!NOTE]
> Note that you can only get one GIF at a time

<hr>

If you want to check out all the commands, here is their list:

<details>
  <summary>Wiew</summary>
  <ul>
    <li><b>neko</b> - Send neko</li>
    <li><b>kitsune</b> - Send kitsune</li>
    <li><b>waifu</b> - Send waifu</li>
    <li><b>husbando</b> - Send husbando</li>
    <li><b>baka</b> - Send baka <b>GIF</b></li>
    <li><b>bite</b> - Send bite <b>GIF</b></li>
    <li><b>blush</b> - Send blush <b>GIF</b></li>
    <li><b>bored</b> - Send bored <b>GIF</b></li>
    <li><b>cry</b> - Send cry <b>GIF</b></li>
    <li><b>cuddle</b> - Send cuddle <b>GIF</b></li>
    <li><b>dance</b> - Send dance <b>GIF</b></li>
    <li><b>facepalm</b> - Send facepalm <b>GIF</b></li>
    <li><b>feed</b> - Send feed <b>GIF</b></li>
    <li><b>handhold</b> - Send handhold <b>GIF</b></li>
    <li><b>handshake</b> - Send handshake <b>GIF</b></li>
    <li><b>happy</b> - Send happy <b>GIF</b></li>
    <li><b>highfive</b> - Send highfive <b>GIF</b></li>
    <li><b>hug</b> - Send hug <b>GIF</b></li>
    <li><b>kick</b> - Send kick <b>GIF</b></li>
    <li><b>kiss</b> - Send kiss <b>GIF</b></li>
    <li><b>laugh</b> - Send laugh <b>GIF</b></li>
    <li><b>lurk</b> - Send lurk <b>GIF</b></li>
    <li><b>nod</b> - Send nod <b>GIF</b></li>
    <li><b>nom</b> - Send nom <b>GIF</b></li>
    <li><b>nope</b> - Send nope <b>GIF</b></li>
    <li><b>pat</b> - Send pat <b>GIF</b></li>
    <li><b>peck</b> - Send peck <b>GIF</b></li>
    <li><b>poke</b> - Send poke <b>GIF</b></li>
    <li><b>pout</b> - Send pout <b>GIF</b></li>
    <li><b>punch</b> - Send punch <b>GIF</b></li>
    <li><b>shoot</b> - Send shoot <b>GIF</b></li>
    <li><b>shrug</b> - Send shrug <b>GIF</b></li>
    <li><b>slap</b> - Send slap <b>GIF</b></li>
    <li><b>sleep</b> - Send sleep <b>GIF</b></li>
    <li><b>smile</b> - Send smile <b>GIF</b></li>
    <li><b>smug</b> - Send smug <b>GIF</b></li>
    <li><b>stare</b> - Send stare <b>GIF</b></li>
    <li><b>think</b> - Send think <b>GIF</b></li>
    <li><b>thumbsup</b> - Send thumbsup <b>GIF</b></li>
    <li><b>tickle</b> - Send tickle <b>GIF</b></li>
    <li><b>wave</b> - Send wave <b>GIF</b></li>
    <li><b>wink</b> - Send wink <b>GIF</b></li>
    <li><b>yawn</b> - Send yawn <b>GIF</b></li>
    <li><b>yeet</b> - Send yeet <b>GIF</b></li>
    <!-- Додайте інші опції за вашим бажанням -->
  </ul>
</details>

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Additional materials

### Photoshop designs

You can use and edit the `.psd` files located in the [assets/photoshop](assets/photoshop) folder

If you want to fix the logo of the repository, the avatar of the bot -you can safely take the file and edit it, after that export the photo and place it in the desired folder (for example [public](public))

### Commands

A list of all commands is in the file [commands_list.txt](assets/commands_list.txt)
You can send it to BotFather to install a menu with all the commands

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->

## License

Distributed under the GNU GPLv3 . See `LICENSE.txt` for more information.

<!-- CONTACT -->

## Contact

Telegram - [@okinea](https://t.me/okinea)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/github_username/neko-chan-bot.svg?style=for-the-badge
[contributors-url]: https://github.com/github_username/neko-chan-bot/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/github_username/neko-chan-bot.svg?style=for-the-badge
[forks-url]: https://github.com/github_username/neko-chan-bot/network/members
[stars-shield]: https://img.shields.io/github/stars/github_username/neko-chan-bot.svg?style=for-the-badge
[stars-url]: https://github.com/github_username/neko-chan-bot/stargazers
[issues-shield]: https://img.shields.io/github/issues/github_username/neko-chan-bot.svg?style=for-the-badge
[issues-url]: https://github.com/github_username/neko-chan-bot/issues
