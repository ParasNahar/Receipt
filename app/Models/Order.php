<?php

namespace Cart\Models;

use Cart\Models\Product;
use Cart\Models\Address;
use Cart\Models\Payment;
use Illuminate\Database\Eloquent\Model;

class Order extends Model 
{
	protected $fillable = [
		'hash',
		'subtotal',
		'shipping',
		'paid',
		'address_id',
		'customer_id',
		'email_sent'
	];

	public function address()
	{
		return $this->belongsTo(Address::class);
	}

	public function customer()
	{
		return $this->belongsTo(Customer::class);
	}

	public function products()
	{
		return $this->belongsToMany(Product::class, 'orders_products')->withPivot('quantity');
	}

	public function payment() 
	{
		return $this->hasOne(Payment::class);
	}

}