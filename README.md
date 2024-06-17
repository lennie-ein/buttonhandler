# buttonhandler

This is a sample app with a plugin that handles physical(hardware) button presses.
It handles the key presses using intent. From the Logcat, get the name of the intent and use
it to handle the functionality of the button. For buttons that are not the usual volume or
power button, we handle it using the long key presses because that is the only way we
can get the intent for now.

Instanciate it like so `PhysicalButtonsHandler.listen(handleKey);` inside an `initState`

then once the hardware button is pressed, th eLogcat prints the intent which looks like so
`android.media.VOLUME_CHANGED_ACTION`

give it a functionality like so:

```agsl
void handleKey(var key) {
    print(key);
    setState(() {
      switch (key) {
        case "android.media.VOLUME_CHANGED_ACTION":
          onLongPress = true;
          showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  icon: Icon(Icons.ice_skating),
                );
              });

          break;
      }
    });
  }
```