{% macro header(bg='info', size=2, offset=false) %}
  <header class="section is-paddingless has-background-{{ bg }}">
    <div class="container">
      <div class="columns is-centered">
        <div class="column is-{{ size }}{{ ' is-offset-'+offset if offset else '' }}">
          <figure class="image is-2by1 has-space-top">
            <img src="../assets/img/logo-online_commissioner-2x1.png">
          </figure>
        </div>
      </div>
    </div>
  </header>
{% endmacro %}
