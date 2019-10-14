# Blogs by Dogs

Who knew dogs could write blogs? 

For the following exercise, you've been provided with a rails backend for accessing blog information. After cloning this repository, run the following commands in your terminal to run the server:
```
rails db:create
rails db:migrate
rails db:seed
rails server
```

## Deliverables

Your task is to built a front end to consume our rails api. 
* A user should be able to view a single dog blog.
* A user should see all comments on a dog blog.
* A user should be able to add a new comment for a dog blog. Comment should persist and immediately reflect on page.
* A user should be able to edit the content of a single dog blog. Edit should persist and immediately reflect on page.

To accomplish this task, you have the following routes available to you:
```
GET blog: 'http://localhost:3000/blogs/:id'
CREATE comment: 'http://localhost:3000/comment'
UPDATE blog: 'http://localhost:3000/blogs/:id'
```
Keep in mind that a comment belongs to a blog, so a reference to the blog id must be included in the request body.

Your HTML & CSS files have been provided for you. Your dynamically updated HTML structure should resemble the following:
```
<body>
  <header>
    <h1>Blogs by Dogs!</h1>
  </header>
  <div class="blog-container container">
    <p class="blog-content">Doggo ipsum you are doing me a frighten ruff borkdrive smol borking doggo with a long snoot for pats
      </p>
    <p class="blog-author">Ellie</p>
    <div id="comment-section">
      <h3>Comments</h3>
      <ul id="comment-list">
        <li id="comment-content"><p>I Agree</p></li>
        <li id="comment-content"><p>I Do Not Agree</p></li>
        <li id="comment-content"><p>I Am Dog</p></li>
      </ul>
      <form id="comment-form">
        <textarea id="comment-input" name="comment" placeholder="Add Comment"></textarea>
        <input id="comment-submit" type="submit" value="submit"/>
      </form>
    </div>
  </div>
  
  <div id="edit-form">
      <h3>Edit Blog</h3>
    <form id="edit-blog">
      <textarea id="edit-blog-content" name="content" ></textarea>
      <input id="blog" type="submit" value="submit"/>
    </form>
  </div>
</body>
```