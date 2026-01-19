<!DOCTYPE html>
<html>

<head>
    <title>Product PDF</title>
</head>

<body>

    <h2>{{ $product->name }}</h2>
    <p>{{ $product->description }}</p>

    <hr>

    @foreach($product->brands as $brand)
        <p><strong>Brand:</strong> {{ $brand->name }}</p>
        <p>Price: {{ $brand->price }}</p>
        <img src="{{ public_path('storage/' . $brand->image) }}" width="100">
        <hr>
    @endforeach

    <h3>Total Price: {{ $total }}</h3>

</body>

</html>