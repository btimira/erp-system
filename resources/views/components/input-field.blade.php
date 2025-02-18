<div class="form-group">
    <label for="{{ $name }}">{{ $label }}</label>
    <input type="{{ $type }}" name="{{ $name }}" id="{{ $name }}" class="form-control" value="{{ old($name) }}">
    @error($name)
        <div class="alert alert-danger">{{ $message }}</div>
    @enderror
</div>
