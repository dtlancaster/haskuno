module HaskunoTerms where

-- FILE CONTAINING NECESSARY DATA TYPES FOR HASKUNO

-- The four possible colors on an Uno card.
data Color = Red | Yellow | Blue | Green | Undefined
  deriving (Show, Eq)

-- The possible card types a player can play.
data Card = Base Integer Color | Skip Color | DrawTwo Color | Wild Color | DrawFourWild Color | Reverse Color
  deriving (Show, Eq)

-- When a reverse card is played, the turn direction changes.
data TurnDirection = CWise | CCWise
    deriving (Show, Eq)

-- A deck is a pile (list) of cards.
type Deck = [Card]

-- A player's current hand is a group (list) of cards.
type Hand = [Card]

-- The discard/played pile is a pile (list) of cards.
type DiscardPile = [Card]

-- A player is identified by their string name and their hand
type Player = (String, Hand)

-- Record to keep track of various things in the game. (Recommended for use by Dr. Polonsky)
data GameState = StateRecord
  { 
    currentPlayer :: Integer,
    playerList :: [Player],
    turnDirection :: TurnDirection,
    deck :: Deck,
    discardPile :: DiscardPile
  }
  deriving Show
