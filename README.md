## Sinatra & ActiveRecord

### Deliverables

1 - Does my schema need to change?
2 - Do i need any new routes?

As a site visitor, I should be able to see a list of authors
index action | get '/authors'

As a site visitor, I should be able to see a list of books. I should be able to click on each book title to see more information about that book.
index | get /books
show action | get /books/:id

As a site visitor, I should be able to see a form where I create a book. When I create a book I can associate it with an existing author.
new action | get /books/new
create action | post /books

#### Stretch Goal
When I create a book, I can associate it with an existing author OR create a new author
