# Cosmic settings

I don't have dotfiles for these, so for now manually documenting various things
I've tweaked.

## Enable battery percentage

See <https://github.com/pop-os/cosmic-applets/issues/617#issuecomment-4555615737>

```sh
touch ~/.config/cosmic/com.system76.CosmicAppletBattery/v1/show_percentage
echo true > ~/.config/cosmic/com.system76.CosmicAppletBattery/v1/show_percentage
```

Hopefully this is implemented natively soon.
