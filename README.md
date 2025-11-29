# Discord Rich Presence for FiveM

A simple FiveM script that displays your server status and player count on Discord Rich Presence.

## Features

- 🎮 Shows real-time player count on Discord
- 🖼️ Custom server branding with Discord Rich Presence
- 📊 Updates every 10 seconds
- 🔄 Lightweight and optimized

## Installation

1. **Download the script** to your FiveM server's `resources` folder
2. **Add to server.cfg**:
   ```
   ensure julus_discord_activity
   ```
3. **Configure settings** (see Setup section)

## Setup

### Step 1: Create Discord Application

1. Go to [Discord Developer Portal](https://discord.com/developers/applications)
2. Click "New Application"
3. Name your application (e.g., "My FiveM Server")
4. Copy the **Application ID**
5. Go to "Rich Presence" → "Art Assets"
6. Upload your server logo (recommended: 1024x1024px)
7. Note the asset name

### Step 2: Update client.lua

Open `client.lua` and find these lines:

```lua
-- TODO: Insert Discord Application ID from https://discord.com/developers/applications
SetDiscordAppId(YOUR_DISCORD_APP_ID_HERE)
-- TODO: Change 'logo' to the asset name registered in Discord Developer Portal
SetDiscordRichPresenceAsset('logo')
-- TODO: Change text to your server name
SetDiscordRichPresenceAssetText('SERVER_NAME')
```

Replace:
- `YOUR_DISCORD_APP_ID_HERE` → Your Discord Application ID
- `'logo'` → Name of your Discord asset (from step 1)
- `'SERVER_NAME'` → Your server name

## How It Works

1. **Client-side** (`client.lua`):
   - Initializes Discord Rich Presence with your App ID
   - Sets custom assets and text
   - Requests player count from server every 9 seconds
   - Updates Discord status with current player count

2. **Server-side** (`server.lua`):
   - Registers a callback to return the number of connected players
   - Uses ESX framework to get player list

## Requirements

- FiveM Server
- ESX Framework (es_extended)

## Configuration

All configuration is done in `client.lua`:
- **Update interval**: Change `Citizen.Wait(9000)` to different milliseconds
- **Discord status text**: Modify the `SetRichPresence()` text
- **Custom assets**: Upload more assets in Discord Developer Portal and reference them

## License

Open source - feel free to modify and distribute!

## Support

If you encounter issues:
1. Check that Discord App ID is correct
2. Verify asset name matches Discord Developer Portal
3. Ensure ESX framework is properly installed
4. Check server console for errors

---

Made for FiveM community ❤️


