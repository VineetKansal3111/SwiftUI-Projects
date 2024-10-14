//
//  DatePickerDemo.swift
//  SwiftThinkingBootcamp
//
//  Created by IOS on 11/10/24.
//

import SwiftUI

struct DatePickerDemo: View {
    @State var selectDate : Date  = Date()
    let startingDate : Date = Calendar.current.date(from:DateComponents(year: 2018)) ?? Date()
    let endingDate : Date = Date()
    var dateFormatter : DateFormatter{
        let formatter = DateFormatter()
        formatter .dateStyle = .medium
        formatter .timeStyle = .short
        return formatter
    }
    var body: some View {
        VStack{
            // DatePicker("Select Date", selection: $selectDate)
            // METHOD 2 :
            //        DatePicker("Select a date",selection: $selectDate,displayedComponents:[.date,.hourAndMinute])
            //            .accentColor(.blue)
            // METHOD 3 :
            Text("Selected Date is :")
            Text(dateFormatter.string(from: selectDate))
                .font(.largeTitle)
            DatePicker("SELECT A DATE",selection: $selectDate , in:startingDate...endingDate ,displayedComponents: [.date,.hourAndMinute])
                .datePickerStyle(
                    CompactDatePickerStyle()
                    // GraphicalDatePickerStyle()
                    //  WheelDatePickerStyle()
                )
        }
    }
}

struct DatePickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerDemo()
    }
}
