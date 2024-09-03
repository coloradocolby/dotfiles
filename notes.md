# karabiner

## why you should use shift as the `to.keycode` in complex modifications

Choosing "key_code": "left_shift" over command, control, or option in the Karabiner Elements modification likely has to do with how modifier keys work in keyboard systems and a few practical reasons:

Shift as a "Neutral" Modifier in Combinations: The shift key is often seen as a more neutral modifier in the context of combining it with others (like command, control, and option). Many systems and applications expect the shift key to be
part of a complex shortcut, while keys like command or control often trigger specific actions on their own. Using shift as the base key avoids unintended system actions that might occur if command, control, or option were used as the
primary key in the combination.

Prevention of System-Level Conflicts: If command, control, or option were chosen as the base key_code, you might risk triggering system-level shortcuts or behavior specific to those modifier keys. For example, pressing command alone might
open the macOS Spotlight, or control might interact with window management. shift, on the other hand, is less likely to trigger any standalone functionality on its own, making it a safer choice.

Shift Often Paired with Other Modifiers: The shift key is naturally a common component of more advanced shortcuts that include command, control, and option. For example, many keyboard shortcuts in productivity and creative applications
combine shift with these other modifiers to perform complex actions. Therefore, setting shift as the main key along with the other modifiers ensures compatibility with these existing combinations.

Shift is Less Likely to Stand Alone: Unlike command, control, or option, the shift key alone doesn’t usually trigger global actions in macOS. By making shift the "base" key, the modification becomes less likely to interfere with existing
system shortcuts or behaviors. This keeps the configuration more predictable.

Why Not Command, Control, or Option? Command is the primary key for many macOS shortcuts, and using it as the base might cause conflicts with macOS's built-in keybindings.

Control is also used for key combinations that interact with system behavior or applications (like Control + Click to simulate a right-click).

Option (Alt) is similarly used for navigation and interaction shortcuts, particularly in text editing, file navigation, and window management.

In contrast, shift is more often used in conjunction with other keys, which makes it a safer, more neutral choice for this complex keybinding. It acts as a modifier that won’t trigger unwanted system actions when combined with the other
three.
