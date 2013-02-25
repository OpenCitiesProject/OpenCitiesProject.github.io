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
        "url": "{{item.city}}",
        "klass": "{{item.title | downcase | replace: ',', ''| replace:' ','-'}}",
        "title": "{{item.title}}",
        "projects": [{% for case in site.categories.casestudy %}{% for tag in case.tags %}{% if tag == item.city %}'{{tag}}',{% endif %}{% endfor %}{% endfor %}false
        ]}
    }{% unless forloop.last %},{% endunless %}
    {% endfor %}
];
