<<<<<<< HEAD
{% macro margin_percent(turnover, purchase_cost, precision=2) %}
   ROUND( SAFE_DIVIDE( ({{ turnover }} - {{ purchase_cost }}) , {{ turnover }} ) , {{ precision }})
{% endmacro %}

{% macro margin(turnover, purchase_cost) %} --calcul de la marge
   {{ turnover }} - {{ purchase_cost }}
=======
{% macro margin_percent(turnover, purchase_cost, precision=2) %}
   ROUND( SAFE_DIVIDE( ({{ turnover }} - {{ purchase_cost }}) , {{ turnover }} ) , {{ precision }})
{% endmacro %}

{% macro margin(turnover, purchase_cost) %}
    {{ turnover }} - {{ purchase_cost }}
>>>>>>> d8bae8930733e077ace809a6fb0aabb4e371abd3
{% endmacro %}