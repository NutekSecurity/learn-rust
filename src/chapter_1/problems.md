# Problems with moving Unity project from Windows to Mac

When putting my Unity Engine project under git source control, sending it to the upstream server and downloading it to my Mac, everything turned blue. Maybe it's pink and because of the fog that's set to be there and a cooler of lights it turned blue, and in fact it's pink, what would mean that my shaders and textures was not properly loaded and that I have to manually change everything to mimic the Universal Render Pipeline settings. And I think I will quit Unity once for all. It's insane! It can't be that, that when I switch computers, or give my project to someone else it suddenly turn pink/blue or freaking white.

> Update: I manage to get my project working on Mac, but that's all about Unity, for the purpose of this book, we'll be using another game engine.

So it's done. Unity Engine is gone from my Mac. What a hack! It's still on my Windows, but that's not important. I need new game engine. I can chose from _Unreal Engine_ which is an overkill, and significantly to advance for my good old Air, and Godot Engine, which compared to Unreal, is just a toy. Or is it?

And I went to the site [Alternativeto.net](https://alternativeto.net/), I typed Unreal Engine, and I was presented with 91 different game engines. There even was one written in Rust, that enabled the user to write scripts in Rust, but that wouldn't be what I would like to do, because I do not want to write scripts in Rust, I want a world and a reusable engine that can power my first, and also second game. For that I need a totally different approach than scripting. So, I leave it to you, if you want to write games in Rust game engine - [Fyrox](https://fyrox.rs/). And if you want just a framework, which is more know to other applications then chose - [Bevy](https://bevyengine.org/)

What I found else is _Monogame_ written in Mono and it's using C#, and there wasn't a mention, but there was LÖVR, virtual reality, but I do not own a headset, so I aim into __LÖVE__ instead.

> I have finnaly solved the issue with removing dynamic resolution from my scene camera.

Now it's time for some theory, with examples. Run your `Visual Studio Code`, or your good new and shiny `Neovim` and prepare for a long tour.
