<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <title>Document</title>
</head>
<body>

<div id="app-7">
    <ol>
        <todo-item
                v-for="item in groceryList"
                v-bind:todo="item"
                v-bind:key="item.id"
        ></todo-item>
    </ol>
</div>
</body>
</html>
<script>
    Vue.component('todo-item', {
        props: ['todo'],
        template: '<li>{{ todo.text }}</li>'
    })

    var app7 = new Vue({
        el: '#app-7',
        data: {
            groceryList: [
                { id: 0, text: 'Vegetables' },
                { id: 1, text: 'Cheese' },
                { id: 2, text: 'Whatever else humans are supposed to eat' }
            ]
        }
    })
</script>