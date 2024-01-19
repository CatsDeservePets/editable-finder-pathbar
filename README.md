# Editable-Finder-Pathbar

An apple script that enhances the *Go to Folder* feature in Finder to provide a more user-friendly experience similar to Windows File Explorer's path bar.

## Overview

It always bothered me that Finder inserts the last path entered instead of the current directory path when using *Go to Folder*. This script acts as a wrapper to streamline the process by inserting the current Finder path into the *Go to Folder* field, making navigation more intuitive.


## Installation

This script can be run as service by utilising the support for running apple scripts inside Siri Shortcuts or Automator. 

Siri Shortcuts can be assigned to a Keyboard shortcut right from inside the Shortcuts app. Services created by Automator can be assigned to a keyboard shortcut under ``Settings/Keyboard/Keyboard Shortucts/Services``.
**Tip:** In order to use the original keyboard shortcut (⇧⌘G) you need to remap the Finder shortcut under ``Settings/Keyboard/App Shortucts/`` to a different shortcut (the menu title syntax looks like this: ``Go->Go to Folder...``).



**Note:** Depending on your version of MacOS, you might need to grant accessibility permission to Finder before being able to run the script.
