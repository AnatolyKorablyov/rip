<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <title>Машинки</title>
  </head>
  <body>
  <div class="container col-sm-3 mt-5">

    <form action="car" method="post">
      <div class="form-group row">
        <label for="model" class="col-sm-3 col-form-label">Модель</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" id="model" name="model" required>
        </div>
      </div>
      <div class="form-group row">
        <label for="body-type" class="col-sm-3 col-form-label">Тип кузова</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" id="body-type" name="body-type" required>
        </div>
      </div>
      <div class="form-group row">
        <label for="engine-power" class="col-sm-3 col-form-label">Мощность двигателя</label>
        <div class="col-sm-9">
          <input type="number" class="form-control" id="engine-power" name="engine-power" required>
        </div>
      </div>
      <div class="form-group row">
        <label for="year-issue" class="col-sm-3 col-form-label">Год выпуска</label>
        <div class="col-sm-9">
          <input type="number" class="form-control" id="year-issue" name="year-issue" required>
        </div>
      </div>
      <div class="form-group row">
        <label for="color" class="col-sm-3 col-form-label">Год выпуска</label>
        <div class="col-sm-9">
          <input type="text" class="form-control" id="color" name="color" required>
        </div>
      </div>
      <button type="submit" class="btn btn-primary float-right">Добавить</button>
    </form>

    <form action="car" method="get">
      <button type="submit" class="btn btn-primary float-left">Список машин</button>
    </form>

  </div>
  </body>
</html>
