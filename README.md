# TweetGuess <img src="https://img.shields.io/badge/status-under%20construction-yellow" alt="Under Construction">
 
<p align="center">
<img src="https://github.com/user-attachments/assets/54cd1917-de5c-49b5-9fe0-428f417e0813" width="200" height="200"><br/>
<strong>Can you unmask tweets 280 characters at a time?</strong>
<br/>
</p>

## Project Overview

TweetGuess is a mobile app all about highlighting statements by high-profile personalities (like politicians or tech moguls) behind the veil of the mainstream media.

The core concept is a **gamifciation of political content** on X (formerly Twitter), where users get the content of a tweet and then guess which politician might have written it. Check the [road map](#roadmap) for some future improvements and extensions to the game!

### Motivation

The initial motivation behind TweetGuess was to combat **political disenchantment** - and this is still true.   

I picked this project up because I have been getting more involved with politics myself, and see the foundation of our contemporary democracies in danger and had the feeling I need to do something about it. TweetGuess is one attempt do so!

### Background
Originally, the project was born during one of the regional [Jugend Hackt] hackathons (https://jugendhackt.org/) _(if you have children & live in Germany - yes, do it!)_, back in 2017. We were a team of young teens working on this demo, rather for the sake of showing of our Bootstrap skills but little did I know that I'll pick this project up later in my life.

## Setup & run locally

The project is written in Dart, using Flutter as the UI framework. To run it...

1) Just decide which one of the supported platforms you want to use (currently iOS, Android & Web),
2) Setup the environment variables & Firebase, 
3) And you're ready to rumble!

### Firebase

TweetGuess uses Firebase for analytics (& soon configuration) purposes. For this you need to setup Firebase before you are running the project. For this, you would need to setup a demo project, to then setup [Firebase over the CLI](https://firebase.google.com/docs/flutter/setup).

### Sentry

We also use Sentry for keeping track of errors & exceptions in the wild. For this, you also need to setup a Sentry project and get the Sentry DNS

### Environment variables

TweetGuess also uses environment variables for flexible configuration between deployments. We have for the **Production (prod)** and **Development (dev)** environment two distinct `.env` files: `.env.dev` and `.env.prod`

```sh
SENTRY_DSN=https://sentry.io/your-dsn
ENABLE_ANALYTICS=false
```

Each one of these can configure the following variables:

1) `SENTRY_DSN`: The Sentry DSN URL that is needed to set up Sentry for error tracking.

2) `ENABLE_ANALYTICS`: Enable/disable analytics project-wide 



## Roadmap

- [ ]  LLM Integration for automated tweet fetching
- [ ]  Multiplayer mode
- [ ]  Augment information about tweets with useful information
- [ ]  Content outside of politics (as a means of making the app more attractive, and funnel users to the politics part?)

### Release & General
- [ ]  Release in the Google Play Store
- [ ]  Obtain funding to keep development up & have better reach


## Contribution Guidelines

Feel free to contribute to this project! Every help is appreciated 

And if this is something, which you would want to work on as a little side-project, I'd be super happy and excited to have somebody next to me also supporting the cause and wanting to have an impact with their work!

## Contact & FAQ

For any questions or feedback, please contact me over [LinkedIn](https://www.linkedin.com/in/baranpeters/) or fl4wn@protonmail.com

  
## License
> [!IMPORTANT]
> TweetGuess is licensed under GNU GPLv3. This means that you can do anything you'd like with the source, modify it, contribute to it, etc.
> 
> See full license [HERE](https://github.com/alienator88/Sentinel/blob/main/LICENSE.md)
> 
