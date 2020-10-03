# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

## Flix Part 2

### User Stories

#### REQUIRED (10pts)
- [x] (5pts) User can tap a cell to see more details about a particular movie.
- [x] (5pts) User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

#### BONUS
- [x] (2pts) User can tap a poster in the collection view to see a detail screen of that movie.
- [ ] (2pts) In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer.

### App Walkthrough GIF
<img src="YOUR_GIF_URL_HERE" width=250><br>

### Notes
- While building this portion of the app, I spent three hours stuck on SIGTERM / SIGBRT errors. Eventually, I rebuilt this component of the application twice, realizing that the error wasn't in the code that I wrote or connections that I made, but the order in which I implemented these steps.

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
<img src="https://i.imgur.com/7DRUTtr.gif" />

### Notes
- I originally applied strict leading and trailing constraints to the Launching Storyboard, causing the centered logo to continue looking very different across orientations and devices. I solved this issue by constraining aspect ratio, and implementing horizontal and vertical align to the Superview (not just the safe area).
