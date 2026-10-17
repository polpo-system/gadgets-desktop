# gadgets-desktop

The desktop of ETH Linux Oberon for the gadgets of [polpo](https://github.com/polpo-system/polpo):
`Oberon.Desk`, a desktop of gadgets that holds the Gadgets toolkit, the Documents panel, the list of
documented interfaces (Definitions.Tool), System.Log as a document and a Finder.

```
portia.Install gadgets-desktop
```

## Using

    Desktops.Open Oberon.Desk      the desktop (the line is in System.Tool)

Without this package, `Desktops.Open Oberon.Desk` opens a new, empty desktop.

## What is here

    share/Oberon.Desk          the desktop, unchanged from Linux Oberon
    tools/Definitions.Tool     the interfaces of the system, by module
    test/DesktopTest.Mod

The desktop uses the Finder (gadgets-finder).

## Tests

    DesktopTest.Run      2 checks: the desktop opened as a document, the Finder loaded; it needs
                         the desktop's display

The license is GPL-3 (`LICENSE`); the code comes from ETH Oberon, whose license (`LICENSE.ETH`)
asks to keep its copyright notice and conditions, which `LICENSE.ETH` does.
