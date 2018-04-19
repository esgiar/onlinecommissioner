{% macro actionButton(color='danger') %}
  <div class="has-text-centered">
    <a class="button is-large is-{{ color }} is-rounded" href="{{ productURL }}">
      {{ caller() }}
    </a>
  </div>
{% endmacro %}
