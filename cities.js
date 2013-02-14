---
---
var poi = [
    {% for item in site.categories.cities %}
    {
        "geometry": {
        "type": "Point",
        "coordinates": [{{item.lon}}, {{item.lat}}]
    },
    "properties": {
        "url": "{{item.url}}",
        "klass": "{{item.title | downcase | replace: ',', ''| replace:' ','-'}}",
        "title": "{{item.title}}",
        "projects": 2
    }
    }{% unless forloop.last %},{% endunless %}
    {% endfor %}
];
