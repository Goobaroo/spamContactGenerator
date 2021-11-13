# Spam Blocker Contact generator

## Decription
I found that most of the spam calls I've been getting have come from my prefix with a randomly generated 4 digit subscriber number.

```
123-456-7890
 ^   ^   ^- Subscriber
 |   |- Exchange
 |- Area Code

```
This script will generate contact cards that contain all the phone numbers in your prefix.  You can then import the contacts into your phone and block them as spam using the "Block Contacts" feature.  I don't know if it works with Android, but I know iOS works.

This will generate 20 contact cards.  I found if I put all 10,000 phone numbers in one contact performance was very poor.

So it does take a bit of time to go through the 20 contacts and block them all, but I think worth it in the end.

## Usage

Modify the script with your phone number.

```bash
# Your area code and prefix (first 3 digits of your phone number)
PREFIX=321987
# Your own phone number to not be excluded.
PHONE=3219876540
```

Run the script.
```bash
sh generate.sh
```

Import the 20 contact cards into your phone and then block them in the phone app on iOS.

## Things to know.

1) It can take a few moments for the `Block this Caller` to finish.  I think the phone enumerates all the phone numbers in the contact and adds them to a different table of numbers to block.
2) If you have a better solution, I'd love to hear it.