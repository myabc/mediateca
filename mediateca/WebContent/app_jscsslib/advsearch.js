
function _CF_onError(form_object, input_object, object_value, error_message)
    {
	alert(error_message);
       	return false;	
    }



function _CF_checkdate(object_value)
    {
    //Returns true if value is a date format or is NULL
    //otherwise returns false	

    if (object_value.length == 0)
        return true;

    //Returns true if value is a date in the mm/dd/yyyy format
	isplit = object_value.indexOf('/');

	if (isplit == -1 || isplit == object_value.length)
		return false;

    sMonth = object_value.substring(0, isplit);

	if (sMonth.length == 0)
        return false;

	isplit = object_value.indexOf('/', isplit + 1);

	if (isplit == -1 || (isplit + 1 ) == object_value.length)
		return false;

    sDay = object_value.substring((sMonth.length + 1), isplit);

	if (sDay.length == 0)
        return false;

	sYear = object_value.substring(isplit + 1);

	if (!_CF_checkinteger(sMonth)) //check month
		return false;
	else
	if (!_CF_checkrange(sMonth, 1, 12)) //check month
		return false;
	else
	if (!_CF_checkinteger(sYear)) //check year
		return false;
	else
	if (!_CF_checkrange(sYear, 0, 9999)) //check year
		return false;
	else
	if (!_CF_checkinteger(sDay)) //check day
		return false;
	else
	if (!_CF_checkday(sYear, sMonth, sDay)) // check day
		return false;
	else
		return true;
    }



function _CF_checkday(checkYear, checkMonth, checkDay)
    {

	maxDay = 31;

	if (checkMonth == 4 || checkMonth == 6 ||
			checkMonth == 9 || checkMonth == 11)
		maxDay = 30;
	else
	if (checkMonth == 2)
	{
		if (checkYear % 4 > 0)
			maxDay =28;
		else
		if (checkYear % 100 == 0 && checkYear % 400 > 0)
			maxDay = 28;
		else
			maxDay = 29;
	}

	return _CF_checkrange(checkDay, 1, maxDay); //check day
    }



function _CF_checkinteger(object_value)
    {
    //Returns true if value is a number or is NULL
    //otherwise returns false	

    if (object_value.length == 0)
        return true;

    //Returns true if value is an integer defined as
    //   having an optional leading + or -.
    //   otherwise containing only the characters 0-9.
	var decimal_format = ".";
	var check_char;

    //The first character can be + -  blank or a digit.
	check_char = object_value.indexOf(decimal_format)
    //Was it a decimal?
    if (check_char < 1)
	return _CF_checknumber(object_value);
    else
	return false;
    }



function _CF_numberrange(object_value, min_value, max_value)
    {
    // check minimum
    if (min_value != null)
	{
        if (object_value < min_value)
		return false;
	}

    // check maximum
    if (max_value != null)
	{
	if (object_value > max_value)
		return false;
	}
	
    //All tests passed, so...
    return true;
    }



function _CF_checknumber(object_value)
    {
    //Returns true if value is a number or is NULL
    //otherwise returns false	

    if (object_value.length == 0)
        return true;

    //Returns true if value is a number defined as
    //   having an optional leading + or -.
    //   having at most 1 decimal point.
    //   otherwise containing only the characters 0-9.
	var start_format = " .+-0123456789";
	var number_format = " .0123456789";
	var check_char;
	var decimal = false;
	var trailing_blank = false;
	var digits = false;

    //The first character can be + - .  blank or a digit.
	check_char = start_format.indexOf(object_value.charAt(0))
    //Was it a decimal?
	if (check_char == 1)
	    decimal = true;
	else if (check_char < 1)
		return false;
        
	//Remaining characters can be only . or a digit, but only one decimal.
	for (var i = 1; i < object_value.length; i++)
	{
		check_char = number_format.indexOf(object_value.charAt(i))
		if (check_char < 0)
			return false;
		else if (check_char == 1)
		{
			if (decimal)		// Second decimal.
				return false;
			else
				decimal = true;
		}
		else if (check_char == 0)
		{
			if (decimal || digits)	
				trailing_blank = true;
        // ignore leading blanks

		}
	        else if (trailing_blank)
			return false;
		else
			digits = true;
	}	
    //All tests passed, so...
    return true
    }



function _CF_checkrange(object_value, min_value, max_value)
    {
    //if value is in range then return true else return false

    if (object_value.length == 0)
        return true;


    if (!_CF_checknumber(object_value))
	{
	return false;
	}
    else
	{
	return (_CF_numberrange((eval(object_value)), min_value, max_value));
	}
	
    //All tests passed, so...
    return true;
    }


// Function checks the advanced search form
	
function  chkSearchForm(_CF_this) {

    if  (!_CF_checkdate(_CF_this.dcb.value)) {

        if  (!_CF_onError(_CF_this, _CF_this.dcb, _CF_this.dcb.value, "The date entered in the Date Created Before field is invalid")) {

            return false; 

            }

        }


    if  (!_CF_checkdate(_CF_this.dca.value)) {

        if  (!_CF_onError(_CF_this, _CF_this.dca, _CF_this.dca.value, "The date entered in the Date Created After field is invalid"))

            {

            return false; 

            }

        }


    if  (!_CF_checkdate(_CF_this.dab.value)) {

        if  (!_CF_onError(_CF_this, _CF_this.dab, _CF_this.dab.value, "The date entered in the Date Available Before field is invalid"))

            {

            return false; 

            }

        }


    if  (!_CF_checkdate(_CF_this.daa.value)) {

        if  (!_CF_onError(_CF_this, _CF_this.daa, _CF_this.daa.value, "The date entered in the Date Available After field is invalid"))

            {

            return false; 

            }

        }


    return true;

    }
	
	
	
	
function  _CF_checkCFForm_2(_CF_this)

    {

    if  (!_CF_checkdate(_CF_this.date_created_before.value))

        {

        if  (!_CF_onError(_CF_this, _CF_this.date_created_before, _CF_this.date_created_before.value, "Error in date_created_before text."))

            {

            return false; 

            }

        }


    if  (!_CF_checkdate(_CF_this.date_created_after.value))

        {

        if  (!_CF_onError(_CF_this, _CF_this.date_created_after, _CF_this.date_created_after.value, "Error in date_created_after text."))

            {

            return false; 

            }

        }


    if  (!_CF_checkdate(_CF_this.date_available_before.value))

        {

        if  (!_CF_onError(_CF_this, _CF_this.date_available_before, _CF_this.date_available_before.value, "Error in date_available_before text."))

            {

            return false; 

            }

        }


    if  (!_CF_checkdate(_CF_this.date_available_after.value))

        {

        if  (!_CF_onError(_CF_this, _CF_this.date_available_after, _CF_this.date_available_after.value, "Error in date_available_after text."))

            {

            return false; 

            }

        }


    return true;

    }

