# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#areas').click ->
#    data = {method: 'getAreas'}
    data = {method: 'getAreass', options: {Ref: "71508137-9b87-11de-822f-000c2965ae0e"}}
    $.ajax
      url: '/api'
      type: 'GET'
      dataType: 'json'
      data: data
      success: (data) ->
        $('#areas_bloc').append JSON.stringify(data)


$(document).ready ->
  $('#cities').click ->
#    data = {method: 'getCities'}
#    data = {method: 'getCities', options: {asdasd: 'asd'}}   #No valid
#    data = {method: 'getCities', options: {CityNameLike: "Харк"}}
#    data = {method: 'getCities', options: {Area: "7150812a-9b87-11de-822f-000c2965ae0e"}}
    data = {method: 'getCities', options: {Ref: 'db5c88e0-391c-11dd-90d9-001a92567626'}}
    $.ajax
      url: '/api/'
      dataType: 'json'
      contentType: 'application/json'
      data: data
      type: 'GET'
      success: (data) ->
        $('#cities_block').append JSON.stringify(data)



  $('#warehouses').click ->
#    data = {method: 'getWarehouses'}
#    data = {method: 'getWarehouses', options: {City: 'db5c88e0-391c-11dd-90d9-001a92567626'}}
    data = {method: 'getWarehouses', options: {Ref: '0d545f61-e1c2-11e3-8c4a-0050568002cf'}}
    $.ajax
      url: '/api/'
      dataType: 'json'
      contentType: 'application/json'
      data: data
      type: 'GET'
      success: (data) ->
        $('#warehouses_block').append JSON.stringify(data)


  $('#streets').click ->
#    data = {method: 'getStreets', options: {City: 'db5c88e0-391c-11dd-90d9-001a92567626',  StreetNameLike: 'Жу'}}
    data = {method: 'getStreets', options: {City: 'db5c88e0-391c-11dd-90d9-001a92567626'}}
    #    data = {method: 'getStreets', options: {Ref: '45502a83-416d-11dd-9198-001d60451983'}}
    $.ajax
      url: '/api/'
      dataType: 'json'
      contentType: 'application/json'
      data: data
      type: 'GET'
      success: (data) ->
        $('#streets_block').append JSON.stringify(data)


  $('#rate').click ->
#    data = {method: 'getRate', options: {
#      ServiceType: 'WarehouseWarehouse',
#      CityRecipient: 'db5c88e0-391c-11dd-90d9-001a92567626',
#      RecipientAddress: 'fb5f51cb-0d49-11e6-971e-005056887b8d',
#      Cost: '200',
#      SeatsAmount: '5',
#      CargoType: 'Cargo',
#      Weight:  '50',
#      VolumeGeneral: '0.4'
#      }}

#    data = {method: 'getRate', options: {
#      Poshtomat:             'Privat',
#      ServiceType: 'WarehouseWarehouse',
#      CityRecipient: '8d5a980d-391c-11dd-90d9-001a92567626',
#      RecipientAddress: '608d3610-5232-11e6-a9f2-005056887b8d',
#      Cost: '200',
#      SeatsAmount: '5',
#      CargoType: 'Cargo',
#      Weight:  '50',
#      VolumeGeneral: '0.4'
#      OptionsSeat: [{
#        volumetricWidth:    "30",
#        volumetricLength:   "30",
#        volumetricHeight:   "30",
#        weight:             "28"
#      },
#        {
#          volumetricWidth:    "30",
#          volumetricLength:   "30",
#          volumetricHeight:   "30",
#          weight:             "28"
#        }
#      ]
#
#    }}

    data = {method: 'getRate', options: {
      ServiceType:           'WarehouseDoors',
      RecipientAddress:              '-',
      CityRecipient:                 'db5c88e0-391c-11dd-90d9-001a92567626',
      Cost:                  '200',
      SeatsAmount:           '2',
      CargoType:             'Cargo',
      Weight:                '0.001',
      VolumeGeneral:         '0.001',
      Address: {
        StreetRef:          "45502a83-416d-11dd-9198-001d60451983",
        BuildingNumber:     "12",
        Flat:               "10"
      }
    }}



    $.ajax
      url: '/api/'
      dataType: 'json'
      contentType: 'application/json'
      data: data
      type: 'GET'
      success: (data) ->
        $('#rate_block').append JSON.stringify(data)


  $('#create').click ->
#    data = {method: 'setEBill', options: {
#      Poshtomat:             'Privat',
#      DateTime:              '29.08.2016',
#      ServiceType:           'WarehouseWarehouse',
#      RecipientFirstName:            'Іван',
#      RecipientMiddleName:           'Іванович',
#      RecipientLastName:             'Іванов',
#      RecipientPhone:                '0661234567',
#      RecipientCounterpartyType:     'PrivatePerson',
#      CityRecipient:                 'db5c88c6-391c-11dd-90d9-001a92567626',
#      RecipientAddress:              'a265669e-5ba5-11e5-8d8d-005056887b8d',
#      PaymentMethod:                 'Cash',
#      PayerType:                     'Sender',                                #PayerType: 'Recipient'
#      Cost:                  '200',
#      SeatsAmount:           '2',
#      Description:           'Опис товару',
#      CargoType:             'Cargo',
#      Weight:                '0.001',
#      VolumeGeneral:         '0.001',
#      OptionsSeat: [{
#          volumetricWidth:    "30",
#          volumetricLength:   "30",
#          volumetricHeight:   "30",
#          weight:             "10"
#      }]
#    }}

#    data = {method: 'setEBill', options: {
#      DateTime:              '28.08.2016',
#      ServiceType:           'WarehouseWarehouse',
#      RecipientFirstName:            'Іван',
#      RecipientMiddleName:           'Іванович',
#      RecipientLastName:             'Іванов',
#      RecipientPhone:                '0661234567',
#      RecipientCounterpartyType:     'PrivatePerson',
#      CityRecipient:                 'db5c88e0-391c-11dd-90d9-001a92567626',
#      RecipientAddress:              '0d545f61-e1c2-11e3-8c4a-0050568002cf',
#      PaymentMethod:                 'Cash',
#      PayerType:                     'Sender',                                #PayerType: 'Recipient'
#      Cost:                  '200',
#      SeatsAmount:           '2',
#      Description:           'Опис товару',
#      CargoType:             'Cargo',
#      Weight:                '0.001',
#      VolumeGeneral:         '0.001',
#    }}


    data = {method: 'setEBill', options: {
      DateTime:              '29.08.2016',
      ServiceType:           'WarehouseDoors',
      RecipientFirstName:            'Петро',
      RecipientMiddleName:           'Іванович',
      RecipientLastName:             'Іванов',
      RecipientPhone:                '0661234567',
      RecipientAddress:              '-',
      RecipientCounterpartyType:     'PrivatePerson',
      CityRecipient:                 'db5c88e0-391c-11dd-90d9-001a92567626',
      PaymentMethod:                 'Cash',
      PayerType:                     'Sender',                                #PayerType: 'Recipient'
      Cost:                  '200',
      SeatsAmount:           '2',
      Description:           'Опис товару',
      CargoType:             'Cargo',
      Weight:                '0.001',
      VolumeGeneral:         '0.001',
      Address: {
        StreetRef:          "45502a83-416d-11dd-9198-001d60451983",
        BuildingNumber:     "12",
        Flat:               "10"
      }
    }}

    $.ajax
      url: '/api/'
      dataType: 'json'
      data: data
      type: 'GET'
      success: (data) ->
        $('#create_block').append JSON.stringify(data)




  $('#print_m').click ->
    data = {method: 'getMarkings', options: {
      Ref:              '071e8f66-687b-11e6-a54a-005056801333'
    }}
    $.ajax
      url: '/api/'
      dataType: 'json'
      data: data
      type: 'GET'
      success: (data) ->
        alert data
        $('#print_m_block').append JSON.stringify(data)


  $('#print_doc').click ->
    data = {method: 'getTtn', options: {
      Ref:              '071e8f66-687b-11e6-a54a-005056801333'
    }}
    $.ajax
      url: '/api/'
      dataType: 'json'
      contentType: 'application/json'
      data: data
      type: 'GET'
      success: (data) ->
        $('#print_doc_block').append JSON.stringify(data)



  $('#delete_doc').click ->
    data = {method: 'deleteEBill', options: {
      Ref:              '071e8f66-687b-11e6-a54a-005056801333'
    }}
    $.ajax
      url: '/api/'
      dataType: 'json'
      contentType: 'application/json'
      data: data
      type: 'GET'
      success: (data) ->
        $('#delete_doc_block').append JSON.stringify(data)



