@extends('layouts.master')
@section('content')

<div class="container margin-top-20">
	
	<div class="row">
		<div class="col-md-4">
			<div class="list-group">
      {{--  @include('partials.product_sidebar') --}}
       </div>
        
	    </div>

	    <div class="col-md-8">
			<div class="widget">
				<h3> Products </h3>
				
				<div class="row">
            @foreach($products as $product)
					<div class="col-md-3">
					<div class="card" >
						@php $i=1; @endphp
						@if( $i>0)

						@foreach($product->images as $image)
					  <img class="card-img-top feature-img" src="{{ asset('images/'. $image->image ) }}" alt="Card image">
                         
					    @endforeach
					    @endif
					    @php $i-- @endphp
					   <div class="card-body">
					    <h4 class="card-title">{{ $product->title}}</h4>
					    <p class="card-text">Taka-{{ $product->price}}</p>
					     <a href="#" class="btn btn-outline-warning">Add to cart</a>
					 </div>
                    </div>
				   </div>
           @endforeach
				   
				</div>
				
		    </div>
        
	    </div>
	</div>
</div>
@endsection
<!--end sidebar-->