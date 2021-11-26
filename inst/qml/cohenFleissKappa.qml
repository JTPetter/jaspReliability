//
// Copyright (C) 2013-2020 University of Amsterdam
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public
// License along with this program.  If not, see
// <http://www.gnu.org/licenses/>.
//

import QtQuick 			2.8
import JASP.Controls 	1.0
import JASP.Theme		1.0
import JASP.Widgets 	1.0

Form
{
	VariablesForm
	{
		height: 300

		AvailableVariablesList { name: "allVariablesList" }

		AssignedVariablesList
		{
			name: 			"variables"
			title: 			qsTr("Variables")
			allowedColumns: ["nominal", "nominalText", "ordinal"]
		}
	}

	Group
	{


		CheckBox
		{
			name:   	"cohensKappa"
			label:  	qsTr("Cohen's Kappa")
			checked: 	true
			
			RadioButtonGroup
			{
			name:		"cohensWeightedOrNot"
			
			
							RadioButton
				{
				name:                               "cohensUnweighted"
				label:                              qsTr("Unweighted")
				}

				RadioButton
				{
				name:                               "cohensWeighted"
				label:                              qsTr("Weighted")
				checked:                            true
				}

			

			}
			
			
		}
		
		CheckBox
		{
			name:   	"fleissKappa"
			label:  	qsTr("Fleiss' Kappa")
			checked: 	true
		}
		
	}
	
	
	

	CheckBox 
	{
		name: 				"kappaIntervalOn"
		label:				qsTr("Confidence Interval")
		checked: 			true
		childrenOnSameRow: 	true

		CIField 
		{      
			name: 		"kappaConfidenceIntervalValue";   
			label: 		"";
			defaultValue: 95;
		}
	}
}
