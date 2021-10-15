<div class="card-body">
    <div class="form-group">
        <label for="{{ $field }}">{{$label}}</label>
        <div class="input-group">
            <div class="input-group-prepend">
                <div class="input-group-text">
                    <i class="{{$icon}}"></i>
                </div>
            </div>
            <input type="{{$type}}" class="{{$setting}}" id="{{$field}}" name="{{$field}}" placeholder="{{$ph ?? ''}}"
                @isset($isi) value="{{old($field) ? old($field) : $isi }}" @else value="{{old($field)}}" @endisset />
        </div>
    </div>

    @error($field)
    <div class="alert alert-danger">{{ $message }}</div>
    @enderror
</div>
