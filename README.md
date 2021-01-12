# Flix

Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

📝 Network Request Snippet
```swift
let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
let task = session.dataTask(with: request) { (data, response, error) in
   // This will run when the network request returns
   if let error = error {
      print(error.localizedDescription)
   } else if let data = data {
      let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]

      // TODO: Get the array of movies
      // TODO: Store the movies in a property to use elsewhere
      // TODO: Reload your table view data

   }
}
task.resume()
```
---

## Flix Part 1

#### Main Features/User Stories
- [x] User sees an app icon on the home screen and a styled launch screen.
- [x] User can view and scroll through a list of movies now playing in theaters.
- [x] User can view the movie poster image for each movie.

#### BONUS
- [ ] (2pt) User can view the app on various device sizes and orientations.
- [ ] (1pt) Run your app on a real device.

### App Walkthrough GIF
<img src="http://g.recordit.co/khdiXi1Ylx.gif" width=250><br>

### Notes
XCode was buggy, after shutting down for a few hours it started working
