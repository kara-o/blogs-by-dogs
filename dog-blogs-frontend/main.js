'use strict';

const DOG_ID = 3;
const DOG_URL =`http://localhost:3000/blogs/${DOG_ID}`;
const COMMENT_URL = 'http://localhost:3000/comments';

const blogP = document.getElementById('blog-content')
const authorP = document.getElementById('blog-author')
const commentForm = document.getElementById('comment-form')
const commentList = document.getElementById('comment-list')
const editContent = document.getElementById('edit-blog-content')
const editForm = document.getElementById('edit-blog')

commentForm.addEventListener('submit', (event) => {
  event.preventDefault();
  createComment(event.target)
})

editForm.addEventListener('submit', (event) => {
  event.preventDefault();
  editBlogContent(event.target);
})

document.addEventListener('DOMContentLoaded', () => {
  main();
})

function main(){
  fetchBlog();
}

function fetchBlog(){
  fetch(DOG_URL)
  .then(res => res.json())
  .then(json => displayBlog(json))
}

function displayBlog(blog) {
  const content = blog.content;
  const author = blog.author;
  blogP.textContent = content;
  authorP.textContent = author;
  editContent.value = content;
  displayComments(blog.comments);
}

function displayComments(comments) {
  for (let i = 0; i < comments.length; i++) {
    displaySingleComment(comments[i].content)
  }
}

function displaySingleComment(comment) {
  const li = document.createElement('li');
  li.textContent = comment
  commentList.appendChild(li);
}

function createComment(formContents) {
  const commentContent = formContents['comment'].value;
  displaySingleComment(commentContent);
  fetch(COMMENT_URL, {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      Accept: 'application/json'
    },
    body: JSON.stringify({
      content: commentContent,
      blog_id: DOG_ID
    })
  })
  .then(res => res.json())
  .then(console.log)
}

function editBlogContent(formContents) {
  const editedContent = formContents['content'].value;
  blogP.textContent = editedContent;
  fetch(DOG_URL, {
    method: 'PATCH',
    headers: {
      'Content-Type': 'application/json',
      Accept: 'application/json'
    },
    body: JSON.stringify({
      content: editedContent
    })
  })
}