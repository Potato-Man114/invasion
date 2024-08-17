# Executive Summary

Invasion is a 2D game where the player fights off endless waves increasingly difficult enemies, using points earned to unlock powerups, stronger attacks, and new areas within the level.

## Game Concept

Invasion is strongly inspired by Call of Duty's Zombies game mode. The player starts off with weak attacks and is tasked with surviving as long as possible against endless waves of enemies, using points earned to get more powerful.

### GMTK Game Jam Theme

**Built to Scale**

The game incorporates the GMTK Game Jam theme by including the following features:

- Powerups which will change the size of the player and the hostiles
- Special hostiles which are of a different size and difficulty to the rest of the hostiles
- Special waves which have fewer hostiles, but they are substantially larger.

## Genre

- Arcade
- Survival

## Target Audience

- GMTK Game Jam participants

## Project Scope

Due to the restrictions of the game jam's timeframe, the scope of this project will be limited to be completable within 96 hours while still having a life and a job.
In all, roughly 24 hours of development time will be dedicated to the game during the jam. The focus will be creating something that works, has the basic features, a fun game loop, and refined presentation. The game will not be feature rich.

This document will continue to serve as a guide for post-jam development.

# Gameplay

## Objectives

- Survive.

## Game Progressions

Waves
- Game starts at wave 1. Hostiles are few, slow, and weak.
- As waves increase, hostile speed increases
  - Hostiles have 5 possible speeds, from 1 - 5.
  - Each wave has set average and standard deviation of the speed, as a float. Rounding up or rounding down is randomized.
- As waves increase, hostile health increases
  - Hostiles can be one-shot with default melee on wave 1
    - The number of melee attacks required to defeat an opponent generally increases by one each wave.
  - Health increases linearly. A wave 100 enemy should have 100 * c health that of a wave one enemy.
    - Boss health also increases linearly.
  - Hostiles damage remains consistent.
- Every 4-6 waves, a "special" wave occurs.
  - In a special waves, enemies sizes are randomized. Larger enemies have more health, but are slower.
  - The number of enmies is based on the size of the enemies. More large enemies = fewer total enemies.
- After wave 10, each wave has a high chance to include one more more boss enemies.

Player Progression
- Game Start
  - Basic melee with limited range and damage.
  - Basic projectile attack with limited ammo.
  - Player starts with no points.
- Player gains points by attacking and killing enemies.
- Player visits upgrade stations around the map to get upgrades. These stations exchange points for upgrades.


## User Interface

### Menuing

Each of the following menus/screens presents the players with at least the following options

-  [ ]  Main Menu


### In-Game Interface


### Controls

- Clear Space
  - Mouse


# Mechanics

This section includes technical details about the design of the game.

## Player Upgrades

The player upgrade system is inspired by both COD Zombies and Bloons TD.

- Player visits upgrade stations around the map to get upgrades. These stations exchange points for upgrades.
  - Melee
    - Increase speed
    - Increase damage
    - Increase range
  - Projectile
    - Increase fire rate
    - Increase ammo
    - Increase projectile count
    - Special projectile abilities
  - Perks
    - Increase Health
    - Increase movement speed
  - Special Abilties (charge over time, activated on command)
    - AOE attack
    - Stun enemies
    - Insane fire rate
    - Insane damage
    - Insane melee

## Power Ups

Random powerup drops. Some powerups are instant effect, while some last for a short time.

- Double Points
- Max Ammo
- Instakill
- Invincibility
- Magic Mushroom
  - player grows in size, takes reduced damage, and deals collision damage to smaller enemies
- Shrink Ray
  - Enemies shrink in size, taking increased damage and taking collision damage if player is bigger.
- Rain Fire
  - Explosions occur around the player for a brief time. Explosions do not damage the player.

## Player Defeat

The player is defeated when the players health reaches zero.

## Player Victory

There is no "win" condition. The goal is to survive as long as possible.

## Enemy Behavior

## 

## Score

The player gains points by attacking and killing enemies. Boss enemies are worth more points.

The player can spend points to get upgrades and unlock new areas.

The player is shown their total accumulated score upon defeat.


# Assets

## Sprites

The following items need sprites

- Player
- Enemies
- Projectiles
- Environment
- Particles
- Other

## Particle Effects

Particle effects should exist for the following events:

- Player
- Enemies
- Projectiles
- Environment
- Other

## Audio

### Sound Effects

Sounds effects should exist for the following events:

- Player
- Enemies
- Projectiles
- Environemnt
- Game Progression
- Other

### Music

Intense music should play when a boss zombie is near the player.

## Fonts

TBD

## Other

The following additional assets need to be created

- Game Icon
- Splash Screen