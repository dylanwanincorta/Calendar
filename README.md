# Utilities

## Overview

This project provides several utilties for loading and using the date table.

1. Get_Date_Rows.sql
	This is a PL/SQL function that generate the date rows.
	The input to the function is the year range.

	An Oracle database will be used as the data source for generating the date table.
	In Oracle 12c the WITH clause can be used to merge this PL/SQL function into SQL
2. Get_Date_Attribute.sql
	This is a SQL statement that uses the generated row from #1 to generate the date attributes.
3. Get_Current_Date_Seq.sql
	This is a SQL statement that should be executed daily and may be executed as part of initiating a user session.
	It gets the sequence number of current date, current month, and current year.

## Usage

1. To use these three script as part of your Incorta implementation, please install the Get Date Rows PL/SQL function in a Oracle database.
2. The Get Date Attribute SQL is the data load SQL for loading the date table.
3. The Get Current Date Seq is a SQL used to populating session variables.  The session variable is optional if you do not plan to use the feature of get the last N periods, where the period can be Week, Month, or Year.
 

	
## Copyright and License 

Copyright (c) 2010 Incorta

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.