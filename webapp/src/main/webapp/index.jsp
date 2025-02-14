<html>
<head>
  <meta charset="UTF-8">
  <title>Mortgage Calculator</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  <link rel="stylesheet" href="mortgage.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
  <script src="mort_calc.js"></script>
</head>
<body class="container-fluid">
  <div class="row">
    <form class="form-horizontal well" id="mortgage-calculator" method="POST">
      <div class="col-xs-12 text-center">
        <p>Enter the <i>house price</i>, <i>interest rate</i>, <i>length of the loan</i>, <i>your down payment</i>, <i>insurance</i> and <i>taxes</i> to see how much your monthly mortgage payment will be:</p>
      </div>
      <div class="form-group">
        <div id="house-price-group" class="col-xs-6 col-sm-4 input-spacer requisite">
          <label class="control-label">House Price</label>
          <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="number" class="form-control" placeholder="Amount" name="house-price" tabindex="1">
          </div>
        </div>
        <div id="interest-rate-group" class="col-xs-6 col-sm-4 input-spacer requisite">
          <label class="control-label">Interest Rate</label>
          <div class="input-group">
            <input type="number" class="form-control" name="interest-rate" tabindex="2" step="0.001">
            <div class="input-group-addon">%</div>
          </div>
        </div>
        <div id="years-group" class="col-xs-6 col-sm-4 input-spacer requisite">
          <label class="control-label"># of Years</label>
          <div class="btn-group btn-group-justified" data-toggle="buttons" name="years">
            <label class="btn btn-default" name="years-button-15">
            <input type="radio" name="years-radio" autocomplete="off" value="15">15</label>
            <label class="btn btn-default" name="years-button-30">
            <input type="radio" name="years-radio" autocomplete="off" value="30">30</label>
          </div>
        </div>
        <div id="down-payment-group" class="col-xs-6 col-sm-4 input-spacer requisite">
          <label class="control-label">Down Payment</label>
          <div class="input-group">
            <input type="number" class="form-control" name="down-payment" tabindex="3" step="0.001">
            <div class="input-group-addon">%</div>
          </div>
        </div>
        <div id="insurance-group" class="col-xs-6 col-sm-4 requisite">
          <label class="control-label">Insurance</label>
          <button type="button" class="btn btn-xs btn-default" data-toggle="popover" data-trigger="hover" title="Annual Insurance" data-content="Enter the amount of your annual premium.">?</button>
          <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="number" class="form-control" placeholder="Amount" name="insurance" tabindex="4">
          </div>
        </div>
        <div id="taxes-group" class="col-xs-6 col-sm-4 requisite">
          <label class="control-label">Taxes</label>
          <button type="button" class="btn btn-xs btn-default" data-toggle="popover" data-trigger="hover" title="Annual Taxes" data-content="Enter the amount of your annual tax bill.">?</button>
          <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="number" class="form-control" placeholder="Amount" name="taxes" tabindex="5">
          </div>
        </div>
      </div>
      <div class="form-group">
        <div class="col-xs-12 col-sm-6 col-sm-offset-3">
          <button type="button" class="btn btn-primary btn-lg btn-block" name="calculate" tabindex="6">Calculate</button>
        </div>
      </div>
      <h3 class="text-center">Monthly Insurance & Taxes</h4>
      <div class="form-group">
        <div id="insurance-monthly-group" class="col-sm-offset-3 col-sm-3 col-xs-6">
          <label class="control-label" for="insurance-monthly">Insurance</label>
          <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="number" class="form-control" name="insurance-monthly" readonly>
          </div>
        </div>
        <div id="taxes-monthly-group" class="col-sm-3 col-xs-6">
          <label class="control-label" for="monthly-taxes">Taxes</label>
          <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="number" class="form-control" name="taxes-monthly" readonly>
          </div>
        </div>
      </div>
      <h3 class="text-center">Total Monthly Payments <br><small>Including Taxes, Insurance, and Mortgage Insurance if applicable</small></h4>
      <div class="form-group">
        <div id="fha-group" class="col-sm-3 col-xs-6 input-spacer">
          <label class="control-label" for="fha">FHA</label>
          <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="text" class="form-control" name="fha" readonly>
          </div>
        </div>
        <div id="va-group" class="col-sm-3 col-xs-6 input-spacer">
          <label class="control-label" for="va">VA</label>
          <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="text" class="form-control" name="va" readonly>
          </div>
        </div>
        <div id="usda-group" class="col-sm-3 col-xs-6 input-spacer">
          <label class="control-label" for="usda">USDA</label>
          <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="text" class="form-control" name="usda" readonly>
          </div>
        </div>
        <div id="conv-group" class="col-sm-3 col-xs-6 input-spacer">
          <label class="control-label" for="conv">Conventional</label>
          <div class="input-group">
            <div class="input-group-addon">$</div>
            <input type="text" class="form-control" name="conv" readonly>
          </div>
        </div>
      </div>
      <p class="col-xs-12 col-sm-8 col-sm-offset-2 text-center">If you would like the information presented in this calculator to keep for offline viewing, printing, or sharing, enter your email below and click <q>Send</q>.</p>
      <div class="form-group">
        <div id="email-group" class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-12">
       	  <div class="input-group">
            <input type="email" class="form-control" name="email" placeholder="Email"</input>
      	    <span class="input-group-btn">
      	      <button type="submit" class="btn btn-success" name="submitEmail">Send</button>
      	    </span>
      	  </div>
        </div>
      </div>
      <div class"form-group" name="response">
      </div>
    </form>
    </div>
</body>
</html>
