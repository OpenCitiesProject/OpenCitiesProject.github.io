---
---
var poi = [
    {% for item in site.categories.city %}
    {
        "geometry": {
        "type": "Point",
        "coordinates": [{{item.lon}}, {{item.lat}}]
    },
    "properties": {
        "klass": "{{item.title | downcase | replace: ',', ''| replace:' ','-'}}",
        "title": "{{item.title}}",
        "projects": 2
    }
    }{% unless forloop.last %},{% endunless %}
    {% endfor %}
];
