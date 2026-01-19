<?php
namespace App\Http\Controllers\Seller;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Brand;
use Barryvdh\DomPDF\Facade\Pdf;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\UploadedFile;


class ProductController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'brands' => 'required|array|min:1',
            'brands.*.name' => 'required',
            'brands.*.detail' => 'required',
            'brands.*.price' => 'required|numeric'
        ]);

        $product = Product::create([
            'seller_id' => auth()->id(),
            'name' => $request->name,
            'description' => $request->description
        ]);

        foreach ($request->brands as $brand) {
            // Image upload is optional for now; store empty string when not provided
            $path = '';

            if (isset($brand['image']) && $brand['image'] instanceof UploadedFile) {
                $path = $brand['image']->store('brands', 'public');
            }

            Brand::create([
                'product_id' => $product->id,
                'name' => $brand['name'],
                'detail' => $brand['detail'],
                'price' => $brand['price'],
                'image' => $path
            ]);
        }

        return response()->json(['message' => 'Product added'], 201);
    }

    public function index()
    {
        return Product::with('brands')
            ->where('seller_id', auth()->id())
            ->paginate(10);
    }

    public function destroy($id)
    {
        $product = Product::where('seller_id', auth()->id())->find($id);

        if (!$product) {
            return response()->json(['message' => 'Unauthorized'], 403);
        }

        $product->delete();
        return response()->json(['message' => 'Deleted']);
    }
    // public function viewPdf($id)
    // {
    //     $product = Product::with('brands')
    //         ->where('seller_id', auth()->id())
    //         ->findOrFail($id);

    //     $total = $product->brands->sum('price');

    //     $pdf = Pdf::loadView('pdf.product', compact('product', 'total'));
    //     return $pdf->stream('product.pdf');
    // }

    public function viewPdf($id)
    {
        $product = Product::with('brands')->find($id);

        if (!$product) {
            return response()->json(['message' => 'Product not found'], 404);
        }

        $pdf = \PDF::loadView('pdf.product', compact('product'));

        return $pdf->download('product_' . $product->id . '.pdf');
    }

}