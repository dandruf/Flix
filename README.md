# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

📝 `NOTE - PASTE PART 2 SNIPPET HERE:` Paste the README template for part 2 of this assignment here at the top. This will show a history of your development process, which users stories you completed and how your app looked and functioned at each step.

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
<img src="https://i.imgur.com/7DRUTtr.gif" height="250" />
<img src="https://i.imgur.com/e16PkhD.gif" width="250" />

### Notes
- I originally applied strict leading and trailing constraints to the Launching Storyboard, causing the centered logo to continue looking very different across orientations and devices. I solved this issue by constraining aspect ratio, and implementing horizontal and vertical align to the Superview (not just the safe area).
