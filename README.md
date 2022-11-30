# Beer Hunter 

#### By Bryce Bresnan <Bryce.Bresnan@gmail.com>

#### An API that alows users to browse, add and update all of the beer related businesses in the area. 

## Technologies Used

* Ruby
* Rails
* Active Record

## Setup/Installation Requirements

* Clone this repository from GitHub.
* Navigate to the root in command line
* Run <code>$bundle install</code> to install the required gems.
* Run <code>$rake db:setup</code> to create the database structure in Active Record.
* Run <code>$rails s</code> to start the server.

## Further Exploration
 * Authentication using bcrypt.

## API Endpoints

| Method  | URL | Example | Result | Params |
| :--- |:---| :---| :---| :---|
|GET| `localhost:3000/` |`localhost:3000/`| Returns a list of all locations in the database| None required |
|GET|`localhost:3000/locations`| `localhost:3000/locations`| Returns a list of all locations in the database| None required |
|GET|`localhost:3000/locations/:id`| `localhost:3000/locations/38`| Returns all information related to location with ID=38| :id - The id of a particular location (required) |
|GET|`http://localhost:3000/locations/random`|`http://localhost:3000/locations/random`|Returns a random location from the database| None required |
|POST|`http://localhost:3000/locations/`|`http://localhost:3000/locations/?location_name=Rick's Cafe&address=21 Jump Street&zip=999999&category=Bar`|Adds location to database. Location Name: Rick's Cafe Address: 21 Jump Street Zip: 999999 Category: Bar. If POST is succesfull, returns success message.| :location_name - The name of the location (required), :address - The address of a location (required) :zip - The zip code of the location (required), :category - The type of business at the location (required) |
|PUT/PATCH|`http://localhost:3000/locations/:id`|`http://localhost:3000/locations/38?location_name=Moe's`|Updates the location name for a location with ID=38. If PUT/PATCH is succesfull, displayed JSON success message.| :id - id of the location to update (required), :location_name - The location's name And/or :content - The content of a location And/or :address - The address of a location (required) And/or :zip - The zip code of the location (required), And/or :category - The type of business at the location (required) |
|DELETE|`http://localhost:3000/locations/:id`|`http://localhost:3000/locations/38`|Deletes the location with ID=38 from database| :id - id of the location to delete |


<!-- |GET|`http://localhost:3000/locations/search/:author`| `http://localhost:3000/locations/search/?author=Abraham Lincoln`| Returns all locations in database where author is Abraham Lincoln| :author - An author's name |
|GET |`http://localhost:3000/locations/search/:content`| `http://localhost:3000/locations/search/?content=Four score...` | Returns location with content "Four score..."| :content - The content of a location |  -->

## License
MIT License

Copyright (c) 2022 Bryce Bresnan

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
