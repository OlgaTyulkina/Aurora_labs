import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page6

    TextField{
        id: txt
        placeholderText: qsTr("Введите функцию")

    }


Item{

    Canvas{
        id: canv
        width: 100
        height: 200

        onPaint: {
            var ctx = getContext("2d");

            // Начинаем путь (линию)
            context.beginPath();
            // Устанавливаем начальные координаты (x, y)
            context.moveTo(50, 50);
            // Рисуем линию до указанных координат (x, y)
            context.lineTo(750, 350);
            // Завершаем путь
            context.closePath();
            // Устанавливаем цвет линии
            context.strokeStyle = "blue";
            // Устанавливаем толщину линии
            context.lineWidth = 2;
            // Рисуем линию
            context.stroke();

            ctx.fillStyle = Material.background
            ctx.fillRect(0, 0, width, height);

            //отрисовка графика
            ctx.beginPath();
            ctx.moveTo(0,height)
            ctx.lineTo(0, pixData[0][1])
            for(var i = 0; i < pixData.length; i ++)
            ctx.lineTo(pixData[i][0],pixData[i][1])
            ctx.lineTo(width, pixData[pixData.length-1][1])
            ctx.lineTo(width,height)
            ctx.closePath()
            ctx.fill()

            // отрисовка линии графика
            ctx.beginPath();
            ctx.moveTo(pixData[0][0], pixData[0][1])
            for(var i = 0; i < pixData.length; i ++)
                ctx.lineTo(pixData[i][0],pixData[i][1])
            ctx.stroke()

            // поворот оси координат
            ctx.translate(0, canvas.height);
            ctx.rotate(-Math.PI/2);



//                var graph;
//                var xPadding = 30;
//                var yPadding = 30;

//                var data = { values:[
//                    { X: "1", Y: 15 },
//                    { X: "2", Y: 35 },
//                    { X: "3", Y: 60 },
//                    { X: "4", Y: 14 },
//                    { X: "5", Y: 20 },
//                    { X: "6", Y: 95 },
//                ]};

//                // Returns the max Y value in our data list
//                function getMaxY() {
//                    var max = 0;

//                    for(var i = 0; i < data.values.length; i ++) {
//                        if(data.values[i].Y > max) {
//                            max = data.values[i].Y;
//                        }
//                    }

//                    max += 10 - max % 10;
//                    return max;
//                }

//                // Return the x pixel for a graph point
//                function getXPixel(val) {
//                    return ((graph.width() - xPadding) / data.values.length) * val + (xPadding * 1.5);
//                }

//                // Return the y pixel for a graph point
//                function getYPixel(val) {
//                    return graph.height() - (((graph.height() - yPadding) / getMaxY()) * val) - yPadding;
//                }

//                $(document).ready(function() {
//                    graph = $('#graph');
//                    var c = graph[0].getContext('2d');

//                    c.lineWidth = 2;
//                    c.strokeStyle = '#333';
//                    c.font = 'italic 8pt sans-serif';
//                    c.textAlign = "center";

//                    // Draw the axises
//                    c.beginPath();
//                    c.moveTo(xPadding, 0);
//                    c.lineTo(xPadding, graph.height() - yPadding);
//                    c.lineTo(graph.width(), graph.height() - yPadding);
//                    c.stroke();

//                    // Draw the X value texts
//                    for(var i = 0; i < data.values.length; i ++) {
//                        c.fillText(data.values[i].X, getXPixel(i), graph.height() - yPadding + 20);
//                    }

//                    // Draw the Y value texts
//                    c.textAlign = "right"
//                    c.textBaseline = "middle";

//                    for(var i = 0; i < getMaxY(); i += 10) {
//                        c.fillText(i, xPadding - 10, getYPixel(i));
//                    }

//                    c.strokeStyle = '#f00';

//                    // Draw the line graph
//                    c.beginPath();
//                    c.moveTo(getXPixel(0), getYPixel(data.values[0].Y));
//                    for(var i = 1; i < data.values.length; i ++) {
//                        c.lineTo(getXPixel(i), getYPixel(data.values[i].Y));
//                    }
//                    c.stroke();

//                    // Draw the dots
//                    c.fillStyle = '#333';

//                    for(var i = 0; i < data.values.length; i ++) {
//                        c.beginPath();
//                        c.arc(getXPixel(i), getYPixel(data.values[i].Y), 4, 0, Math.PI * 2, true);
//                        c.fill();
//                    }
//                });



}
}
}

}
