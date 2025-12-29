{%- set apples = ["Gala","Red Delicious","Fuji","McIntash", "Honeycrisp"] -%}

{% for i in apples %}

    {% if i != "McIntash" %}

        {{ i }} is a good apple.

    {% else %}

        {{ i }} is not my favorite apple.

    {% endif %}
    
{% endfor %}