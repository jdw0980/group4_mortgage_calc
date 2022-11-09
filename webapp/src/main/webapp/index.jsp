<html>
<head>
  <metacharset="UTF-8">
  <title>Mortgage Calculator</title>
  <metaname="viewport"content="width=device-width, initial-scale=1">
  <linkrel="stylesheet"href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"crossorigin="anonymous">
  <linkrel="stylesheet"href="mortgage.css">
  <scriptsrc="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <scriptsrc="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"crossorigin="anonymous"></script>
  <scriptsrc="mort_calc.js"></script>
</head>
<bodyclass="container-fluid">
  <divclass="row">
    <formclass="form-horizontal well"id="mortgage-calculator"method="POST">
      <divclass="col-xs-12 text-center">
        <p>Enter the <i>house price</i>, <i>interest rate</i>, <i>length of the loan</i>, <i>your down payment</i>, <i>insurance</i> and <i>taxes</i> to see how much your monthly mortgage payment will be:</p>
      </div>
      <divclass="form-group">
        <divid="house-price-group"class="col-xs-6 col-sm-4 input-spacer requisite">
          <labelclass="control-label">House Price</label>
          <divclass="input-group">
            <divclass="input-group-addon">$</div>
            <inputtype="number"class="form-control"placeholder="Amount"name="house-price"tabindex="1">
          </div>
        </div>
        <divid="interest-rate-group"class="col-xs-6 col-sm-4 input-spacer requisite">
          <labelclass="control-label">Interest Rate</label>
          <divclass="input-group">
            <inputtype="number"class="form-control"name="interest-rate"tabindex="2"step="0.001">
            <divclass="input-group-addon">%</div>
          </div>
        </div>
        <divid="years-group"class="col-xs-6 col-sm-4 input-spacer requisite">
          <labelclass="control-label"># of Years</label>
          <divclass="btn-group btn-group-justified"data-toggle="buttons"name="years">
            <labelclass="btn btn-default"name="years-button-15">
            <inputtype="radio"name="years-radio"autocomplete="off"value="15">15</label>
            <labelclass="btn btn-default"name="years-button-30">
            <inputtype="radio"name="years-radio"autocomplete="off"value="30">30</label>
          </div>
        </div>
        <divid="down-payment-group"class="col-xs-6 col-sm-4 input-spacer requisite">
          <labelclass="control-label">Down Payment</label>
          <divclass="input-group">
            <inputtype="number"class="form-control"name="down-payment"tabindex="3"step="0.001">
            <divclass="input-group-addon">%</div>
          </div>
        </div>
        <divid="insurance-group"class="col-xs-6 col-sm-4 requisite">
          <labelclass="control-label">Insurance</label>
          <buttontype="button"class="btn btn-xs btn-default"data-toggle="popover"data-trigger="hover"title="Annual Insurance"data-content="Enter the amount of your annual premium.">?</button>
          <divclass="input-group">
            <divclass="input-group-addon">$</div>
            <inputtype="number"class="form-control"placeholder="Amount"name="insurance"tabindex="4">
          </div>
        </div>
        <divid="taxes-group"class="col-xs-6 col-sm-4 requisite">
          <labelclass="control-label">Taxes</label>
          <buttontype="button"class="btn btn-xs btn-default"data-toggle="popover"data-trigger="hover"title="Annual Taxes"data-content="Enter the amount of your annual tax bill.">?</button>
          <divclass="input-group">
            <divclass="input-group-addon">$</div>
            <inputtype="number"class="form-control"placeholder="Amount"name="taxes"tabindex="5">
          </div>
        </div>
      </div>
      <divclass="form-group">
        <divclass="col-xs-12 col-sm-6 col-sm-offset-3">
          <buttontype="button"class="btn btn-primary btn-lg btn-block"name="calculate"tabindex="6">Calculate</button>
        </div>
      </div>
      <h3class="text-center">Monthly Insurance & Taxes</h4>
      <divclass="form-group">
        <divid="insurance-monthly-group"class="col-sm-offset-3 col-sm-3 col-xs-6">
          <labelclass="control-label"for="insurance-monthly">Insurance</label>
          <divclass="input-group">
            <divclass="input-group-addon">$</div>
            <inputtype="number"class="form-control"name="insurance-monthly"readonly>
          </div>
        </div>
        <divid="taxes-monthly-group"class="col-sm-3 col-xs-6">
          <labelclass="control-label"for="monthly-taxes">Taxes</label>
          <divclass="input-group">
            <divclass="input-group-addon">$</div>
            <inputtype="number"class="form-control"name="taxes-monthly"readonly>
          </div>
        </div>
      </div>
      <h3class="text-center">Total Monthly Payments <br><small>Including Taxes, Insurance, and Mortgage Insurance if applicable</small></h4>
      <divclass="form-group">
        <divid="fha-group"class="col-sm-3 col-xs-6 input-spacer">
          <labelclass="control-label"for="fha">FHA</label>
          <divclass="input-group">
            <divclass="input-group-addon">$</div>
            <inputtype="text"class="form-control"name="fha"readonly>
          </div>
        </div>
        <divid="va-group"class="col-sm-3 col-xs-6 input-spacer">
          <labelclass="control-label"for="va">VA</label>
          <divclass="input-group">
            <divclass="input-group-addon">$</div>
            <inputtype="text"class="form-control"name="va"readonly>
          </div>
        </div>
        <divid="usda-group"class="col-sm-3 col-xs-6 input-spacer">
          <labelclass="control-label"for="usda">USDA</label>
          <divclass="input-group">
            <divclass="input-group-addon">$</div>
            <inputtype="text"class="form-control"name="usda"readonly>
          </div>
        </div>
        <divid="conv-group"class="col-sm-3 col-xs-6 input-spacer">
          <labelclass="control-label"for="conv">Conventional</label>
          <divclass="input-group">
            <divclass="input-group-addon">$</div>
            <inputtype="text"class="form-control"name="conv"readonly>
          </div>
        </div>
      </div>
      <pclass="col-xs-12 col-sm-8 col-sm-offset-2 text-center">If you would like the information presented in this calculator to keep for offline viewing, printing, or sharing, enter your email below and click <q>Send</q>.</p>
      <divclass="form-group">
        <divid="email-group"class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3 col-xs-12">
       	  <divclass="input-group">
            <inputtype="email"class="form-control"name="email"placeholder="Email"</input>
      	    <spanclass="input-group-btn">
      	      <buttontype="submit"class="btn btn-success"name="submitEmail">Send</button>
      	    </span>
      	  </div>
        </div>
      </div>
      <divclass"form-group"name="response">
      </div>
    </form>
    </div>
</body>
</html>

