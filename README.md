# Vagabond Tales
___
A social website for those stricken with wanderlust. Share your stories, read others' to find inspiration for your next trip.

### URL: [vagabond-tales.herokuapp.com](https://join-in-app.herokuapp.com/)

### Features
* Users accounts with auth and validation
* Users have full CRUD for posts, ability to create new cities, and create or update user accounts.
* Mobile friendly and responsive display


### Technologies Used
___
HTML
CSS
SASS
Foundation
Ruby
Rails
Heroku

## Planning
___
[User Stories](#)

[Trello](https://trello.com/b/LCe12qhv)

[Wireframes](#)

## Code Examples
___

```Ruby
def create
    @user = current_user
    @post = current_user.posts.create(post_params)
    #City's ID is passed from a hidden input if post is created from user's profile page
    @post.city_id = params[:post][:city_id].to_i if @post.user_id && !@post.city_id
    @post.photo = @post.city.photo if @post.photo == ''
    if @post.save
      flash[:success] = "That's a great story!"
      redirect_to post_path(@post)
    else
      flash[:error] = @post.errors.full_messages.to_sentence
      render :new
    end
  end
```

```Ruby
def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc)
    @city = City.find_by_id(@user.current_city)

    @user_cities = @posts.pluck(:city_id)
    @post_count = instance_count(@user_cities)
    #Create a hash with { City.name: number_of_posts }
    @city_with_post_count = @post_count.map {|k,v| [City.find(k).name, v]}.to_h
  end
  
  private
  
  def instance_count(array)
    counts = Hash.new 0

    array.each do |item|
      counts[item] += 1
    end
    counts
  end
```
```Ruby
  def update
    #User attributes must be updated one by one in order to avoid triggering validations
    @user.update_attribute(:name, params[:user][:name])
    @user.update_attribute(:current_city, params[:user][:current_city])
    @user.update_attribute(:profile_photo, params[:user][:profile_photo])
    redirect_to user_path(@user)
  end
```

### Future Work
___
* Users can like comments
* Users can add embed photos in their posts
* Users receive confirmation email when signing up

### Screenshots
___
Main Page

![Index](http://i.imgur.com/g24jFnJ.png)

Post Show Page

![Post Show](http://i.imgur.com/jde2DnI.png)
