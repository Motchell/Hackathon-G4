$(document).ready(function() {
    $('#calendar').fullCalendar({
        header: {
            left: 'prev,next today',
            center: 'title',
            right: 'month,agendaWeek,agendaDay'
        },
        defaultDate: '2024-07-01',
        editable: true,
        eventLimit: true, // allow "more" link when too many events
        events: [
            {
                title: 'Evento 1',
                start: '2024-07-03'
            },
            {
                title: 'Evento 2',
                start: '2024-07-10',
                end: '2024-07-12'
            },
            {
                title: 'Evento 3',
                start: '2024-07-22T14:30:00'
            }
        ]
    });
});