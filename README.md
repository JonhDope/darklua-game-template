# Darklua Game Template

## DISCLAIMER

**THESE SCRIPTS USE LUNE 0.8.9**
**MAKE SURE TO HAVE LUNE 0.8.9 INSTALLED.**

## Getting Started

To setup this template, run
```bash
pesde i
```

To build the place from scratch, use:

```bash
lune run build
```
This builds a Place file name "place.rbxlx"

Next, open `place.rbxlx` in Roblox Studio and start the Rojo server:

```bash
lune run sync
```
This Watches for file changes in `src/` and compiles them using darklua into `out/`
And syncs the files in the `out/` Directory using rojo

## Cloning This Repo
Run
```bash
git clone https://github.com/JonhDope/darklua-game-template.git
cd darklua-game-template
```
