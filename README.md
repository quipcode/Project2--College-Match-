
Project summary

The app being constructed will help high school students find ideal matches for which colleges to attend.

Link to trello
[Trello](https://trello.com/b/so6qMOzy/project2)

Link to Heroku 
[Heroku](https://college-match.herokuapp.com/)

Plan

I wish to have the user create a profile on my site/app and on that site/app the user will be given a form to fill. This form will ask for where the user attended high school, GPA, and personal information. With this information the user's account will be set up. Students can then add colleges that they wish to attend onto their wish list. 

Eventually I want to be able to provide user's a best match possibility with college's they wish to attend and the enviornment that will be best for them. Utulizing a best match algorithim the app will generate a list of campus that are most promising for the student.

Installation/Startup instruction

1. As a new user you will need to sign up and fill out the form provided
    *As a returning user please login with your email and password 
2. Once your account has been setup you can freely edit the information you entered upon signing up. 
3. To utulize this app you can add college's to your wishlist. 
4. Once your wishlist is to your satisfaction you can logout and know that the information from your account is stored
5. You can click the home link to return to the home screen and see other users on the site. 
6. Should you choose to delete your account you can do so...Be sure there's no going back 

Technology Used

This project utulizes an API. The college's that our user searches for is compared to the dataset provided by the Department of Education. Best match colleges are generated from the dataset and the user can then append the information to our college model. 

The architecture of this project is built after the MVC model. The intent of the project is to be a full stack CRUD app. User authentication is simplified with the use of the bcrypt gem. Styling will be taken care and optimized with bootstrap-sass. 

Unrealized Feature && Unsolved problems
-I have not been able to apply styling to my project to the extent I would like 
-There is no complex feature in the app. I would have like to have been able to take user information and compare stats of different colleges and give suggestion to the user as to best colleges to apply to. 
-It would have been nice to be able to send a mailer to my user to give them updates and notification of important dates and information that would be useful to high school students transitioning to college. 
-Users can only add to the college list it is easy to add CRUD to user's wishlist. 
-At the moment the "college wishlist" shows every instance of my college model there should be a seperation based on the user's account. 
-User's can get into one another's account from the index page. 


