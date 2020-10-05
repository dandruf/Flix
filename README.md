# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

## Flix Part 3 -- Personal Extension

### User Stories
#### Movie Detail View
- [x] User can see movies related to a particular movie.
- [x] User can scroll through movies detail screen if content overflows past view bounds.
- [x] User can interact with more elegant interface: the movie backdrop image fades into the app body.
- [x] User can tap a poster of a related movie to see a detail screen of that movie.
- [ ] User can view the release date of a specific movie

### App Walkthrough GIF
<img src="https://i.imgur.com/ax4Lgg3.gif" width=250><br>

### Notes
- With the help of a Codepath TA, I used Objective C to programmatically instantiate a new movie detail view
- Though I'm still unfamiliar with the Objective C language, implementing features programmatically resolves the bugs of constraint auto layout bugs, storyboard mishaps, and other UI headaches. Perhaps an avenue for further investigation!

## Flix Part 2

### User Stories

#### REQUIRED (10pts)
- [x] (5pts) User can tap a cell to see more details about a particular movie.
- [x] (5pts) User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

#### BONUS
- [x] (2pts) User can tap a poster in the collection view to see a detail screen of that movie.
- [x] (2pts) In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer.

### App Walkthrough GIF
<img src="https://i.imgur.com/ftgeYw8.gif" width=250><br>

### Notes
- While building this portion of the app, I spent three hours stuck on SIGTERM / SIGABRT errors. Eventually, I rebuilt this component of the application twice, realizing that the error wasn't in the code that I wrote or connections that I made, but the order in which I implemented these steps.
- I also had difficulty getting the trailer to show up correctly. Debugging revealed that I wasn't properly loading the API to retrieve the dictionary with a second issue of not casting the trailer key correctly and programming within closures.
- If I had more time, I would further develop the movie detail pages with release dates, make the UI more appealing, and figure out how to load the YouTube modal video without loading the entire YouTube video page.
- I'd also implement functionality that finds related movies for all movies, not just superhero movies

---

## Flix Part 1

### User Stories

#### REQUIRED (10pts)
- [x] (2pts) User sees an app icon on the home screen and a styled launch screen.
- [x] (5pts) User can view and scroll through a list of movies now playing in theaters.
- [x] (3pts) User can view the movie poster image for each movie.

#### BONUS
- [x] (2pt) User can view the app on various device sizes and orientations.
- [x] (1pt) Run your app on a real device.

### App Walkthrough GIF
<img src="https://i.imgur.com/ai0ahqH.gif" width="250" />
<img src="https://i.imgur.com/e16PkhD.gif" height="250" />

### Notes
- I originally applied strict leading and trailing constraints to the Launching Storyboard, causing the centered logo to continue looking very different across orientations and devices. I solved this issue by constraining aspect ratio, and implementing horizontal and vertical align to the Superview (not just the safe area).
