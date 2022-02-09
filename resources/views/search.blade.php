<style>
    body, html, .item-content, .item-title {
        font-family: arial,sans-serif;
        font-size: 14px;
    }
    .google-logo {
        padding: 20px 0;
    }
    .google-form .btn-group {
        padding: 20px 0;
    }
    .o_web_client {
        background: white;
    }
    #main-search {
        background: white;
        height: 100%;
        min-height: 800px;
        padding: 100px 0px 0px 0px;
        overflow: auto;
        padding-bottom: 300px !important;
    }
    #logo {
        margin: 0px 0px 50px 0px;
    }
    button {
        background-image: -webkit-linear-gradient(top,#f8f9fa,#f8f9fa);
        background-color: #15548e !important;
        border: 1px solid #f8f9fa;
        border-radius: 4px !important;
        color: white !important;
        font-family: arial,sans-serif;
        font-size: 16px !important;
        margin: 11px 4px;
        padding: 0 16px;
        line-height: 27px;
        height: 36px;
        min-width: 54px;
        text-align: center;
        cursor: pointer;
        user-select: none;
        width: 130px;
    }
    .has-search .form-control-feedback {
        right: initial;
        left: 0;
        color: #ccc;
        height: 100%;
        align-items: center;
        display: grid;
    }
    .has-search .form-control {
        padding-right: 12px;
        padding-left: 34px;
    }
    #input-search {
        font-size: 18px;
        border-radius: 20px;
        height: 50px;
    }
    #input-search:visited {
        border-color: #15548e !important;
    }
    .title {
        font-size: 16px;
    }
    #language {
        text-align: center;
    }
    #language a {
        padding: 0px 10px;
        color: #1a0dab;
    }
    #language a:hover {
        text-decoration: underline;
    }
    #results {
        margin-bottom: 5px;
        color: #70757a;
    }
    .item-title a {
        font-size: 20px !important;
        line-height: 1.3;
        font-weight: 600;
        font-family: arial,sans-serif;
        color: #15548e;
    }
    .item-title a:hover {
        color: #2b71b1 !important;
    }
    .panel {
        border-color: white !important;
        /* -webkit-box-shadow: none !important; */
        margin-bottom: 10px;
    }
    .panel-heading {
        background: white !important;
        border-color: white !important;
        padding: 10px 0px;
    }
    .panel-body {
        padding: 0px 0px 10px 0px;
        font-size: 16px;
        color: #70757a;
    }
    #indice {
        position: absolute;
        width: 30%;
        top: 0;
        height: 50px;
        border-radius: 0px 20px 20px 0px;
        background: #15548e;
        color: white;
        font-size: 16px;
        right: 0;
        padding-left: 15px;
        text-transform: capitalize;
        border-color: #15548e;
    }
    .mySelect2,.bootstrap-tagsinput{
        width: 100% !important;
    }
   
    .select2-selection {
      height: 32px !important;
    }
    .effective_date{
        padding-top: 10px;
    }
    .input-group-addon{
        width: 10px !important;
    }
    #select2-type_contract-tt-container{
        opacity: 0.25 !important;
    }
    .select2-container--default .select2-selection--single .select2-selection__rendered {
        opacity: 0.5 !important;
    }
    .name_partner{
        width:100%
    }
    .name_partner input{
        height:34px;
    }

</style>
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.4.2/bootstrap-tagsinput.css" />
<script src="https://cdn.jsdelivr.net/bootstrap.tagsinput/0.4.2/bootstrap-tagsinput.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>

<div class="container-fluid" id="main-search">
	<div class="row">
        <div class="col-md-6 col-md-offset-3 col-lg-6 col-lg-offset-3">
            {{-- <div class="row google-logo text-center">
                <img src="{{ asset('img/logo-bas-big@2x.png') }}" alt="logo" id="logo" style="max-width: 250px;"> 
                <span class="title"> &nbsp; &nbsp;Procurement</span>  
            </div> --}}
            <div class="row google-form text-center">
                <form action="{{ route('admin.document.search') }}" method="post">
                    {{ csrf_field() }}
                    <div class="form-group has-feedback has-search">
                        <span class="glyphicon glyphicon-search form-control-feedback"></span>
                        <input type="text" class="form-control input-lg" placeholder="Tìm kiếm hợp đồng" name="title" id="input-search"  value="{{ old('title') }}">
                      
                    </div>
                    <div class="form-group row">
                        <div class="col-md-3">
                            <select class="mySelect2 js-example-basic-single" name="type_contract" >
                                <option value=" " class="option-disable" disabled selected >Phân loại</option>
                                {{-- @foreach ($type as $item )
                                    <option {{ old('type_contract') == $item->id  ? "selected" : "" }}   value="{{ $item->id }}" >{{ $item->title }}</option>
                                @endforeach --}}
                              </select>
                        </div>
                        <div class="col-md-3">
                            <select  class=" mySelect2 js-example-basic-single" name="address">
                                <option value=" " disabled selected>Địa điểm</option>
                                {{-- @foreach ($address as $item )
                                    <option {{ old('address') == $item->id  ? "selected" : "" }}  value="{{ $item->id }}" >{{ $item->title }}</option>
                                @endforeach --}}
                              </select>
                        </div>
                        <div class="col-md-6">
                            <input id="tags" class="form-control" name="tags" value="{{ old('tags') }}" placeholder="Nhập tag" data-role="tagsinput" type="text">
                        </div>
                        <div class="col-md-6 effective_date">
                            <div style="float: left;">Ngày hết hạn</div>
                            <br>
                            <div class="input-group input-daterange">
                                <input type="text" class="form-control" name="date_go" value="{{ old('date_go') }}">
                                <div class="input-group-addon">đến</div>
                                <input type="text" class="form-control" name="date_to" value="{{ old('date_to') }}">
                            </div>
                        </div>
                        <div class="col-md-6 effective_date">
                            <div style="float: left;">Tên đối tác</div>
                            <br>
                            <div class="input-group name_partner">
                                <input type="text" class="form-control input-lg" placeholder="Tên đối tác" name="name_partner" value="{{ old('name_partner') }}">
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="btn-group">
                            <button type="submit" class="btn btn-default btn-md">
                                <i class="fa fa-search-plus" aria-hidden="true"></i>
                                Tìm kiếm 
                            </button>
                        </div>
                    </div>
                </form>
            </div>
         
        </div>
        <div class="col-md-8 col-md-push-2">
        @if (session()->exists('result'))
                @php 
                    $result = session()->get('result');
                @endphp
                <div class="row" id="results">
                    <span>Tìm thấy {{ number_format(sizeof($result)) ?? 0 }} kết quả </span>
                </div>
                <div class="row">
                    <div class="panel panel-default result-item">
                        <table class="table">
                            <thead>
                                <tr>
                                <th>Tên hợp đồng</th>
                                <th>Được tạo lúc</th>
                                <th>Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($result as $item)
                                    <tr>
                                        <td>{{ $item['title'] }}</td>
                                        <td>{{ date('d-m-Y', strtotime($item['created_at']))   }}</td>
                                        <td style="text-align: center"> 
                                            <a href="{{ route('admin.documents.show',$item['id'])  }}"> <i class="fa fa-eye"></i> </a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            @endif
        </div>
    </div>
</div>
<script type="text/javascript">
    $(".js-example-placeholder-multiple").select2({
        placeholder: "Select a state"
    });

    $('.mySelect2').select2({
        selectOnClose: true,
    });
    $('#tags').tagsinput({
        //   maxTags: 3
    });	

    $('.input-daterange input').each(function() {
        $(this).datepicker();
    });
    
</script>