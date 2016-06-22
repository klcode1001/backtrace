BestAnswer.destroy_all
Comment.destroy_all
Note.destroy_all
note = Note.create! body: 'Hello?'
note.comments.create! body: 'Hello!'
note.comments.create! body: 'Hello!!'
note.comments.create! body: 'Hello!!!'
