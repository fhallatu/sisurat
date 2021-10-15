<div class="card-body">
    <div class="form-group mb-auto">
        <label for="{{ $field }}">{{$label}}</label>
            <input type="{{$type}}" class="{{$setting}}" id="{{$field}}" name="{{$field}}" 
            placeholder = "{{$ph ?? ''}}"  @isset($disabled) disabled @endisset
            
        @isset($isi)
        value="{{old($field) ? old($field) : $isi }}"
        @else
        value="{{old($field)}}" 
        @endisset
        />
        
    </div>

    @error($field)
        <div class="alert alert-danger">{{ $message }}</div>
    @enderror
</div>