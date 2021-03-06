# Game of Throne UI

This is a scratch-my-own-itch project to allow me to see all the cards in play a remote opponent has when playing the Game of Throne living card game with another person by remote video chat.

## MVP

1. Find a card an opponent has put into play
2. Mark it as in play
3. See all in play cards in a web browser
4. Mark cards as knelt in a visual way
5. Add notes field to allow user to indicate any modifiers or special cases
6. Remove cards from play (discarded or killed?)
7. Keep track of discarded or killed cards

## Nice to haves

* Visually sort cards by category (faction, plot, banner, agenda, character, location, event, attachment)
* Mark things (other cards, tokens) as belonging to another card (duplicates, attachments, power tokens [faction or character], poison, ?)
* "Known in hand" section for cards that are revealed
* Pull in decklist, and add potential cards section (also sorted by type?) [Note: needs to account for cards added by you to your opponent that would not be in their deck list]

## Super fancy-pants
* Tally general statistics (note fields to indicate modifiers):
    * total power
    * potential strength by category (power, intrigue, military) based on base card strength with mechanism for modifiers (Wildling Horde, Direwolf Pup, Doran Martell are good examples),
    * total gold
    * claim value

## Development notes

### Sample of API response for a single card:

GET api/public/card/01001

{
   "pack_code":"core",
   "pack_name":"Core Set",
   "type_code":"plot",
   "type_name":"Plot",
   "faction_code":"neutral",
   "faction_name":"Neutral",
   "position":1,
   "code":"01001",
   "name":"A Clash of Kings",
   "text":"<b>Reaction:<\/b> After you win a [power] challenge, move 1 power from the losing opponent's faction card to your own.",
   "quantity":1,
   "income":4,
   "initiative":9,
   "claim":1,
   "reserve":6,
   "deck_limit":2,
   "traits":"Noble.",
   "illustrator":"Smirtouille",
   "is_unique":false,
   "is_loyal":false,
   "is_military":false,
   "is_intrigue":false,
   "is_power":false,
   "octgnid":"de88edda-f5a4-4985-8ac1-2b8205c13416",
   "url":"http:\/\/thronesdb.com\/card\/01001",
   "imagesrc":"\/bundles\/cards\/01001.png"
}
