<?php $this->load->view("partial/header"); ?>
<?php
if (isset($error_message))
{
	echo '<h1 style="text-align: center;">'.$error_message.'</h1>';
	exit;
}
?>

<table style="margin-left:auto; margin-right:auto;">
<tr>
<td><strong><?php echo $this->config->item('company'); ?></strong></td>
</tr>
<tr>
<td><?php echo nl2br($this->config->item('address')); ?></td>
</tr>
<tr>
<td><?php echo $this->config->item('phone'); ?></td>
</tr>
<tr>		
<td><?php //echo "<b>$receipt_title</b>"; ?></td>
</tr>
<tr>		
<td>BIR ACC.#<?php echo "78678676258785978"; ?></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>		
<td><?php echo $transaction_time ?></td>
</tr>

<tr>
<td><?php if(isset($customer))
	{
	?>
	<?php echo $this->lang->line('customers_customer').": ".$customer; ?>
	<?php
	}
	?>
</td>
</tr>
<tr>
<td><?php echo $this->lang->line('employees_employee').": ".$employee; ?></td>
</tr>
<tr>
<!--<td><?php //echo $this->lang->line('common_comments').": ".$this->sale_lib->get_comment(); ?></td>-->
</tr>
<tr>
<td><?php echo $this->lang->line('common_senior').": ".$this->sale_lib->get_senior(); ?></td>
</tr>
<tr>
<td><?php $format = '%1$010d';
		echo $this->lang->line('sales_id').": ". sprintf($format, $sale_id); //echo $this->lang->line('sales_id').": ".$sale_id; 
	?>
</td>
</tr>
<tr>
<td><?php //echo $this->lang->line('sales_or_id').": ".$or_id; ?></td>
</tr>
<tr><td>========================</td>
<tr>
<td><?php echo $this->sale_lib->get_take_type(); ?></td>
</tr>
<tr><td>========================</td>

<tr>
<td style="width:5px;"><u><b>Description</b></u></td>
<td><u><b>Price</b></u></td>
<td><?php echo '&nbsp;'; ?></td>
<td><u><b>Total</b></u></td>
</tr>
<tr><td colspan="4">================================================</td>
	
	<?php
	foreach(array_reverse($cart, true) as $line=>$item)
	{
	?>
	
	<tr><td><?php echo $item['quantity']."-"; ?><?php echo $item['name']; ?></td>

	<td><?php echo /*to_currencyto_currency_no_money*/($item['price']*$item['quantity']); ?></td>
	<td><?php echo '&nbsp;'; ?></td>
	<td><?php echo to_currency_no_money($item['price']*$item['quantity']*(100/112)); ?></td>
	</tr>
	<?php
	}
	?>

<tr><td colspan="4">================================================</td>

<tr>
<td><?php echo '&nbsp;'; ?></td>
<td><b><?php echo $this->lang->line('sales_sub_total'); ?></b></td>
<td><?php echo '&nbsp;'; ?></td>
<td><b><?php echo /*to_currency*/($subtotal); ?></b></td>
</tr>
<tr>
<td><?php echo '&nbsp;'; ?></td>
<td><b><?php echo $this->lang->line('sales_total'); ?></b></td>
<td><?php echo '&nbsp;'; ?></td>
<td><b><?php echo /*to_currency*/($total); ?></b></td>
</tr>

<tr><td>&nbsp;</td></tr>

	<?php
		foreach($payments as $payment_id=>$payment)
	{ ?>
		<tr>
		<td><?php echo '&nbsp;'; ?></td>
		<td><b><?php echo $this->lang->line('sales_payment'); ?></b></td></tr>
		<tr>
		<td><?php echo '&nbsp;'; ?></td>
		<td><?php $splitpayment=explode(':',$payment['payment_type']); echo $splitpayment[0]; ?></td>
		<td><?php echo '&nbsp;'; ?></td>
		<!--<td colspan="2" style=""><?php //$splitpayment=explode(':',$payment['payment_type']); echo $splitpayment[0]; ?></td>-->
		<td><?php echo to_currency_no_money( $payment['payment_amount'] * -1 ); ?></td>
	    </tr>
	<?php
	}
	?>

    <tr><td>&nbsp;</td></tr>

	<tr>
		<td><?php echo '&nbsp;'; ?></td>
		<td><b><?php echo $this->lang->line('sales_change_due'); ?></b></td>
		<td><?php echo '&nbsp;'; ?></td>
		<td><b><?php echo  /*to_currency_no_money*/($amount_change); ?></b></td>
	</tr>
	<tr><td>========================</td></tr>
	<tr><td>VAT BREAKDOWN</td></tr>
	<tr><td>========================</td></tr>
<tr><td>VAT SALE</td><td>
	<?php 
		
		
		echo to_currency_no_money($subtotal);
	
		//$subtotal = 0;
		//echo ( to_currency_no_money($item['price'] * $item['quantity'] - ($item['price']*$item['quantity']*(100/112)*.12)));
		
		
	?>
</td></tr>
<tr><td>VAT EXEMPT</td><td><?php echo "0.00"; ?></td></tr>
<tr><td>ZERO-RATED</td><td><?php echo "0.00"; ?></td></tr>
	
<tr><td>TOTAL SALE</td><td><?php echo /*to_currency*/($subtotal); ?></td></tr>

	<?php 

		if($sdiscount >0){
			echo'<tr>';
			//echo'<td>'.'&nbsp'.'</td>';
			echo'<td>'.$this->lang->line('sales_discount').'</td>';
			//echo'<td>'.'&nbsp'.'</td>';
			echo'<td>'.to_currency_no_money($sdiscount).'</td>';
		}else{
			echo'</tr>';
		}
	//echo $this->lang->line('sales_discount'); 
	
	?>
<!--tr>
<!--<td><?php //echo $this->lang->line('sales_discount'); ?></td>
<td><?php //echo /*to_currency*/($sdiscount); ?></td>
</tr>-->
	
	<?php foreach($taxes as $name=>$value) { ?>
		
		<?php if($value >0){
			//echo "allen";
			echo'<tr>';
			echo'<td>'.$name.'</td>'; 
			echo '<td>'./*to_currency*/to_currency_no_money($value).'</td>'; 
		}else{
		
			
		//echo "allen";
		echo'</tr>';
		}
		?>
		
	<?php }; ?>
<tr>
<td><?php echo $this->lang->line('sales_total'); ?></b></td>
<td><?php echo /*to_currency*/($total); ?></b></td>
</tr>
<tr>
<td>&nbsp;</td>
</tr>
<tr>
<td>Owned & Operated By:</td>
</tr>
<tr>
<td>M'Suites Heart Cafe</td>
</tr>
<tr>
<td>Machine Serial#: J8JG003726</td>
</tr>
<tr>
<td>This Serves as your OFFICIAL RECEIPT</td>
</tr>
<tr>
<td>THANK YOU, COME AGAIN</td>
</tr>
<tr>
<td>For Reservation Please call</td>
</tr>
<tr>
<td>(02)-808-4123</td>
</tr>
</table>

<?php $this->load->view("partial/footer"); ?>

<?php if ($this->Appconfig->get('print_after_sale'))
{
?>
<script type="text/javascript">
$(window).load(function()
{
	window.print();
});
</script>
<?php
}
?>