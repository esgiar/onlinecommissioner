{% macro checkItem(icon='check', color='success') %}
  <div class="media is-borderless">
    <figure class="media-left">
      <span class="icon is-medium has-text-{{ color }}">
        <i class="fas fa-{{ icon }} fa-2x"></i>
      </span>
    </figure>
    <div class="media-content is-size-5">
      {{ caller() }}
    </div>
  </div>
{% endmacro %}
