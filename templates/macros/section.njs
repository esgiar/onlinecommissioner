{% macro section(bg=false, text=false) %}
  <section class="section{{ ' has-background-'+bg if bg else '' }}{{ ' has-text-'+text if text else '' }}">
    <div class="container">
      <div class="columns is-centered">
        <div class="column is-7">
          {{ caller() }}
        </div>
      </div>
    </div>
  </section>
{% endmacro %}

{% macro heading(size=3, spaced=true, color=false) %}
  <h1 class="title is-{{ size }} {{ 'is-spaced' if spaced }} {{ 'has-text-'+color if color }} has-text-centered">
    {{ caller() }}
  </h1>
{% endmacro %}

{% macro subHeading(size=5, color=false) %}
  <h2 class="subtitle is-{{ size }} {{ 'has-text-'+color if color }} has-text-centered">
    {{ caller() }}
  </h2>
{% endmacro %}
