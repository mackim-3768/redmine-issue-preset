$(document).ready(function() {
  var descriptionField = $('#issue_description');
  var trackerField = $('#issue_tracker_id');

  function applyStencilTemplate() {
    if (typeof stencilTemplates === 'undefined') return;

    var trackerId = trackerField.val();
    var template = stencilTemplates[trackerId];

    if (template && !descriptionField.val()) {
      descriptionField.val(template);
    }
  }

  if (trackerField.length && descriptionField.length) {
    // Apply on load if empty (e.g. new issue)
    applyStencilTemplate();

    // Apply on tracker change
    trackerField.change(function() {
      // We only want to auto-fill if the description is currently empty
      // or maybe prompt the user? For now, let's stick to safe "only if empty"
      applyStencilTemplate();
    });
  }
});
