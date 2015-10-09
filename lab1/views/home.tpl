<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>YASE</title>
    <link href='https://fonts.googleapis.com/css?family=Raleway:400,100,200,300' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Inconsolata:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="/static/style.css" media="screen" charset="utf-8" type='text/css'>
  </head>
  <body>
    <div class="logo">
        <a href="/"> Yase Search </a>
        <p> Made with &hearts; by Ridoy, Marjan and Zen </p>
    </div>
    <div class="search-title">
        <h2 id="search-title"> enter your query. </h2>
    </div>
    <div class="search-box">
        <form action="/word_count", method="GET">
            <input name="keywords" id="search-input" autofocus></input>
            <button type="submit" id="search-btn"> SUBMIT </button>
        </form>
        % if len(history):
        <h2> Top {{len(history)}} searched keywords </h2>
        <div class="result-table">
            <table id="history">
                <tr>
                    <th>Word</th>
                    <th>Count</th>
                </tr>
                % for word in history:
                  <tr>
                    <td> {{word[0]}} </td>
                    <td> {{word[1]}} </td>
                  </tr>
                % end
            </table>
        </div>
        %end
    </div>
    <script src="http://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="https://cdn.rawgit.com/mattboldt/typed.js/master/dist/typed.min.js"></script>
    <script src="/static/app.js"></script>
  </body>
</html>
