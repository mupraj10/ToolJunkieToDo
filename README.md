
# Task Definition
I'm passionate about productivity #tooljunkie. I want to manage my tasks and projects more effectively. I need a simple tool that helps me control my task flow.

> This is a coding challenge completed by Maggy Prajapati. To get the project running, `gem` and then `rails server`. 


## Functional Requirements
* I want to be able to sign in/sign up by email/password
* I want to be able to create/update/delete tasks;
* I want to be able to set a deadline for my task; (a date field)
* I want to be able to mark a task as 'done';


> * You can sign up using the link on the navbar. Once signed in you will be able to see extra menu options as tasks, account, settings. 
>* **Make sure to take a look at Help!**
> * Sign in/Login was done using Rails Tutorial Basic I could have used `devise` but I got confused trying it so went with the simplier way. 
> * You can Create, Update and Delete Task Lists as well as Task Items 
> * You are able to set a deadline but it just shows the date in UTC
> * You are able to mark an task-item as complete which removes the option to edit it but are able to delete it


## Bonus (pseudocode is fine if it takes too long) :
* I want to have another item type called “Milestone”
* I want milestones to have a priority from 1-5
* Both Milestone and Task should inherit from the same parent class called Item

>  I have written up the psuedo code for creating milestones and can be found [here](milestones.txt)

## Technical Requirements

* The application should be built with Ruby on Rails version 4.2+. 
* The frontend can use ERB templates or any frontend technology you are comfortable with. 
* Use Sqlite or Postgres for your DB.
* Don’t worry too much about making it beautiful, just that the functionality is there and we can tell what’s going on. 
* Please upload your project to Github and share it with Beckah’s github username which is “beckah”. 
* Email beckah@beckahsheeler.com if you have any questions at all. This is more of an assignment to see how you solve problems and doesn’t have to be perfect. 

> ### More Stuff - things that can be improved 
> * Styling -I mixed between using bootstrap, custom and some tutorials I found. I wish I could have done more. 
> * Deadline - Currently it shows a UTC date with time but I could not figure out how to get a helper function to work but you can see the beginnings in the `task_items_helper.rb`
> * Productive Struggle - This is actually the second rendition of the project, what I started off without the login aspect and then could not figure out how to implement it after. So this is round 2. 
> * I wish.. - I had emailed Beckah some more because I had many questions. 

> ## Resources
> I used the RailsTutorial, RailsBridge Docs, Many Medium articles for Todo lists in Rails.

> I hope you enjoy it! 