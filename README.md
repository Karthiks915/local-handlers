# cqrs_sembast
CQRS pattern and handlers

1) Simple project to test out CQRS pattern which we will abstract away along with the repository.
2) Trying implementation of handlers.


In the real world CRUD is very limited. Application will usually do more than just create a document, or delete a document. This application was to just test that out, the implementation of this will be used in the backend for the Node server. Right now all the handler does is create not just a document but also create an activity log of what exactly the operation was. If it was delete, the activity log will have something that says a document was deleted.

Simple application to show the pattern, nothing more.
