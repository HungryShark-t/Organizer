<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Органайзер</title>
      <link rel="stylesheet" type="text/css" href="/css/style.x12421.css"/>
</head>
<body>
<h1>Органайзер</h1>
<h3>Добавление задачи в общий список</h3>
<form action="/add" method="post">
    <table border="1px">
        <tr>
            <td>
                <label>Приоритет задачи</label>
                <input type="number" name="priorityId">
            </td>
            <td>
                <label>Описание</label>
                <input type="text" name="description">
            </td>
            <td>
                <label>Дата сдачи</label>
                <input type="date" name="date">
            </td>

            <td>
                <input type="submit" value="Записать задачу">
            </td>

        </tr>

    </table>
</form>
<br>
<h2>Список задач(количество : ${taskSize})</h2>
<table border="1px">
    <tr>
        <td>№</td>
        <td>Приоритет</td>
        <td>Описание задачи</td>
        <td>Дата</td>
        <td>Удалить из списка</td>
    </tr>
    <#list taskList as task>
    <tr>
        <td>${task.id}</td>
        <td>${task.priorityId}</td>
        <td>${task.description}</td>
        <td>${task.date}</td>
        <td><a href="${'/delete/'+task.id}"">Удалить</a></td>
    </tr>
    </#list>
</table>
</body>
</html>