coloring_book = {
  track_one: {
    title: "All We Got",
    artists: [
      "Chance the Rapper",
      "Kanye West",
      "Chicago Children's Choir"
      ],
    producers: [
      "The Social Experiment",
      "Kanye West"
      ],
    length: "3:23"
    },
  track_two: {
    title: "No Problem",
    artists: [
      "Chance the Rapper",
      "Lil Wayne",
      "2 Chainz",
    ],
    producers: [
      "Brasstracks"
    ],
    length: "5:05"
  },
  track_three: {
    title: "Summer Friends",
    artists: [
      "Chance the Rapper",
      "Jeremih",
      "Francis and the Lights"
    ],
    producers: [
      "Francis and the Lights"
    ],
    length: "4:50"
  },
  track_four: {
    title: "D.R.A.M. Sings Special",
    artists: [
      "Chance the Rapper"
    ],
    producers: [
      "The Social Experiment",
      "Jordan Ware"
    ],
    length: "1:41"
  },
  track_five: {
    title: "Blessings",
    artists: [
      "Chance the Rapper"
    ],
    producers: [
      "The Social Experiment"
    ],
    length: "3:41"
  },
  track_six: {
    title: "Same Drugs",
    artists: [
      "Chance the Rapper"
    ],
    producers: [
      "The Social Experiment",
      "Lido"
    ],
    length: "4:17"
  }
}

#Code to return "Lil Wayne"
coloring_book[:track_two][:artists][1]

#Code to return all data for track 6
coloring_book[:track_six]

#Code to return array of producers on first 2 tracks
some_producers = (coloring_book[:track_one][:producers] + coloring_book[:track_two][:producers])
  p some_producers

# Code to return all track titles as a string
tracklist =
  coloring_book[:track_one][:title]+ ", "+ coloring_book[:track_two][:title]+ ", "+ coloring_book[:track_three][:title]+ ", "+ coloring_book[:track_four][:title] + ", "+ coloring_book[:track_five][:title]+ ", "+ coloring_book[:track_six][:title]

p tracklist
# Went through a few different versions trying to make this code more readable, and when I put line breaks before each + I got an error of undefined method `+@' for ", ":String(repl):74:in `initialize''
# Going to look into this more
