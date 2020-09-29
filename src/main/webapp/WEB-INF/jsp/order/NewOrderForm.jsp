<%@ include file="../account/IncludeAccount.jsp"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="targetUrl">
	<c:url value="/shop/newOrderSubmitted.do" />
</c:set>

<div align="center">
	<form:form modelAttribute="orderForm" action="${targetUrl}" method="post">
		<form:errors cssClass="error" />
		<br>
		<h1>Order Infomation</h1>
		<br>
		<table class="orderInfo">
			<tr class="orderInfo">
				<td colspan="2" style="text-align: center">
					<font color="#40bea7" size="5">
						<b>Billing Address</b>
					</font>
				</td>
			</tr>
			<tr class="orderInfo">
				<td>
					<div class="form-label-group">
						<form:input path="order.billToUsername" id="inputBillToUsername"
							class="form-control" />
						<B><form:errors path="order.billToUsername" cssClass="error" /></B>
						<label for="inputBillToUsername">Name</label>
					</div>
				</td>
			</tr>
			<tr class="orderInfo">
				<td>
					<div class="form-label-group">
						<form:input path="order.billAddr1" id="inputBillAddr1"
							class="form-control" />
						<B><form:errors path="order.billAddr1" cssClass="error" /></B>
						<label for="inputBillAddr1">Address 1</label>
					</div>
				</td>
			</tr>
			<tr class="orderInfo">
				<td>
					<div class="form-label-group">
						<form:input path="order.billAddr2" id="inputBillAddr2"
							class="form-control" />
						<B><form:errors path="order.billAddr2" cssClass="error" /></B>
						<label for="inputBillAddr2">Address 2</label>
					</div>
				</td>
			</tr>
			<tr class="orderInfo">
				<td>
					<div class="form-label-group">
						<form:input path="order.billCity" id="inputBillCity"
							class="form-control" />
						<B><form:errors path="order.billCity" cssClass="error" /></B>
						<label for="inputBillCity">City</label>
					</div>
				</td>
			</tr>
			<tr class="orderInfo">
				<td>
					<div class="form-label-group">
						<form:input path="order.billZip" id="inputBillZip"
							class="form-control" />
						<B><form:errors path="order.billZip" cssClass="error" /></B>
						<label for="inputBillZip">ZipCode</label>
					</div>
				</td>
			</tr>
			<tr class="orderInfo">
				<td>
					<div class="form-label-group">
						<form:input path="order.billCountry" id="inputBillCountry"
							class="form-control" />
						<B><form:errors path="order.billCountry" cssClass="error" /></B>
						<label for="inputBillCountry">Country</label>
					</div>
				</td>
			</tr>
			<tr class="orderInfo">
				<td colspan="2"><form:checkbox path="shippingAddressRequired"
						label="Ship to different address..." />
			</tr>
			
			<tr class="orderInfo">
				<td colspan="2" style="text-align: center">
					<font color="#40bea7" size="5">
						<b>Payment Details</b>
					</font>
				</td>
			</tr>
			<tr class="orderInfo">
				<td>
					<h6 class="card-title"> Card Type </h6>
					
					<div class="form-label-group">
						<B><form:errors path="order.cardType" cssClass="error" /></B>
						<form:select path="order.cardType"  class="form-control">
							<option value="Card Type"></option>
							<form:options items="${creditCardTypes}" />
						</form:select>
					</div>
				</td>
			</tr>
			<tr class="orderInfo">
				<td>
					<font color="red" size="2">* Use a fake number!</font>
					<div class="form-label-group">
						<form:input path="order.creditCard" id="inputCardNumber"
							class="form-control" />
						<B><form:errors path="order.creditCard" cssClass="error" /></B>
						<label for="inputCardNumber">Card Number</label>
					</div>
				</td>
			</tr>
			<tr class="orderInfo">
				<td>
					<div class="form-label-group">
						<form:input path="order.expiryDate" id="inputName"
							class="form-control" />
						<B><form:errors path="order.expiryDate" cssClass="error" /></B>
						<label for="inputName">Expiry Date (MM/YY)</label>
					</div>
				</td>
			</tr>
		</table>
		<br>
		<p>
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Open modal for @mdo</button>
			<input type="submit" value="결제하기"/>
		</p>
		<!-- Payment Modal -->
		
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">New message</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form>
		          <div class="form-group">
		            <label for="recipient-name" class="col-form-label">Recipient:</label>
		            <input type="text" class="form-control" id="recipient-name">
		          </div>
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">Message:</label>
		            <textarea class="form-control" id="message-text"></textarea>
		          </div>
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Send message</button>
		      </div>
		    </div>
		  </div>
		</div>
	</form:form>
</div>