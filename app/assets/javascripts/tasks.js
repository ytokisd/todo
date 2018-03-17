$(document).ready(function(){
  $(document).on('change', 'input.js-toogle-task', function() {
    var taskId = $(this).data('taskId');
    var projectId = $(this).data('projectId');
    var url = '/projects/' + projectId + '/tasks/' + taskId + '/complete'
    $.ajax({
      url: url,
      type: 'PUT',
      success: function(data) {
        console.log(data);
        alert('click');
      }
    });
  });
  $(document).on('click', '.js-create-task-button', function() {
  $(this).parent('form').submit();
  });
});