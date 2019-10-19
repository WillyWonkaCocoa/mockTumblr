# mock Tumblr

mock Tumblr is an app that displays Humans of New York Posts using [Tumblr's API](http://docs.themoviedb.apiary.io/#).

Time spent: 6 hours spent in total

### User Stories

#### REQUIRED (10pts)
- [ ] (2pts) User sees an app icon on the home screen and a styled launch screen.
- [ ] (5pts) User can view and scroll through a list of movies now playing in theaters.
- [ ] (3pts) User can view the movie poster image for each movie.

#### BONUS
- [ ] (2pt) User can view the app on various device sizes and orientations.
- [ ] (1pt) Run your app on a real device.

### App Walkthough GIF

<img src="https://imgur.com/jsEYKbY.gif"/>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

### Notes
Describe any challenges encountered while building the app

I run into issues creating my own custom cell. My app would crash with a "Thread 1 SIGABRT" error after I added the image view, and the cellForRowAt function never gets called. I spent a few hours trying to track down the bug and searching across the internet. In the end, Timothy from Codepath helped me resolve the issue through Slack.

## License

    Copyright [2019] [William Gao]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
