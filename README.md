## Open Cities Project

Website for opencitiesproject.com

### Editing content

The easiest way to edit content will be to use [prose.io](http://prose.io/#about). Simply go to [http://prose.io](http://prose.io/), login with your GitHub user account, and select this repository. You should then be able to browse the file structure.


## Setting up the website locally

The Open Cities website is built using Jekyll. For more complex edits of the content and the website structure, you will need to install jekyll. Instructions to Jekyll are available here: http://jekyllrb.com/docs/installation/
Once jekyll is installed, you have to do the following:

git clone https://github.com/OpenCitiesProject/OpenCitiesProject.github.io.git
cd OpenCitiesProject.github.io
jekyll serve --w

And then go to http://localhost:4000/

Edit the files and the changes will be updated with the changes directly.


### File Structure

Most of the site's content - the about page, cities page, and all case studies - can be found in the [`_posts`](https://github.com/OpenCitiesProject/website/tree/master/_posts) directory.

Landing page copy can be found in `index.html`.
