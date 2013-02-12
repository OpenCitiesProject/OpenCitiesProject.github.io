---
---
var poi = [
    {% for item in site.categories.city %}
    {
        "geometry": {
        "type": "Point",
        "coordinates": [{{item.lat}},{{item.lon}}]
    },
    "properties": {
        "klass": "{{item.title | downcase | replace:' ','-'}}",
        "title": "{{item.title}}",
        "projects": 2
    }
    }{% unless forloop.last %},{% endunless %}
    {% endfor %}
];
