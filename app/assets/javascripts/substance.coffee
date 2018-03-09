# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
substance_table = null

$(document).on "turbolinks:load", ->
  $('body').tooltip selector: '[data-toggle~=\'tooltip\']'
  substance_table = $('#substance-table').DataTable
    searching: false
    columnDefs: [
      targets: [5, 7, 9, 10, 11, 12], orderable: false
    ]
    language:
      decimal: ','
      sEmptyTable: 'Keine Daten in der Tabelle vorhanden'
      sInfo: '_START_ bis _END_ von _TOTAL_ Einträgen'
      sInfoEmpty: '0 bis 0 von 0 Einträgen'
      sInfoFiltered: '(gefiltert von _MAX_ Einträgen)'
      sInfoPostFix: ''
      sInfoThousands: '.'
      sLengthMenu: '_MENU_ Einträge anzeigen'
      sLoadingRecords: 'Wird geladen...'
      sProcessing: 'Bitte warten...'
      sSearch: 'Suchen'
      sZeroRecords: 'Keine Einträge vorhanden.'
      paginate:
        sFirst: 'Erste'
        sPrevious: 'Zurück'
        sNext: 'Nächste'
        sLast: 'Letzte'
      oAria:
        sSortAscending:  ': aktivieren, um Spalte aufsteigend zu sortieren'
        sSortDescending: ': aktivieren, um Spalte absteigend zu sortieren'

document.addEventListener  'turbolinks:before-cache', ->
  substance_table.destroy()
