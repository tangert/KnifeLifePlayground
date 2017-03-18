//
//  GraphDemoViewController.swift
//  KnifeLifePlayground
//
//  Created by Tyler Angert on 3/15/17.
//  Copyright © 2017 Tyler Angert. All rights reserved.
//

import Foundation
import UIKit
import Charts

@objc(BarChartFormatter)
public class BarChartFormatter: NSObject, IAxisValueFormatter{
    
    var xVals = [String]()
    
    public func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        return xVals[Int(value)]
    }
}

class GraphDemoViewController: UIViewController {
    
    @IBOutlet weak var chart: CombinedChartView!
    
    //DUMMY DATA TO BE FILLED IN WITH REALM OBJECTS
    //SHOULD BE SIMPLE
    var callsPlaced: [Double] = [5,6,10,8,10,4,3]
    var demosPlaced: [Double] = [3,4,7,5,6,2,1]
    let daysOfWeek = ["Mon","Tue","Wed","Th","Fri","Sat","Sun"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chart.delegate = self
        setChart(xValues: daysOfWeek, yValuesLineChart: demosPlaced, yValuesBarChart: callsPlaced, combinedChartView: chart)
        chart.notifyDataSetChanged()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.chart.animate(yAxisDuration: 0.5)
    }

    func setChart(xValues: [String], yValuesLineChart: [Double], yValuesBarChart: [Double] , combinedChartView:CombinedChartView) {
        combinedChartView.noDataText = "Haven't made any deals yet to show stats! Go get em."
        
        let formatter:BarChartFormatter = BarChartFormatter()
        formatter.xVals = self.daysOfWeek
        let xAxis:XAxis = XAxis()

        
        var yVals1 : [ChartDataEntry] = [ChartDataEntry]()
        var yVals2 : [BarChartDataEntry] = [BarChartDataEntry]()
        
        for i in 0..<xValues.count {
            formatter.stringForValue(Double(i), axis: xAxis)
            yVals1.append(ChartDataEntry(x: Double(i), y: yValuesLineChart[i]))
            yVals2.append(BarChartDataEntry(x: Double(i), y: yValuesBarChart[i]))
        }
        
        xAxis.valueFormatter = formatter
        combinedChartView.xAxis.valueFormatter = xAxis.valueFormatter

        
        let lineChartSet = LineChartDataSet(values: yVals1, label: "Demos Placed")
        
        var lineChartColors = [UIColor]()
        var lineDashLengths = [CGFloat]()
        let lineMax = yValuesLineChart.max()
        let lineAlphaFactor = 1.5
        
        for i in yValuesLineChart {
            let lineAlpha = CGFloat(i/(lineAlphaFactor*lineMax!))
            lineChartColors.append(UIColor.red.withAlphaComponent(lineAlpha))
            lineDashLengths.append(5*(lineAlpha))
        }
        
        lineChartSet.circleColors = lineChartColors
        lineChartSet.circleRadius = 7.5
        
        lineChartSet.mode = .cubicBezier
        lineChartSet.lineWidth = 2.5
        lineChartSet.drawCirclesEnabled = true
        lineChartSet.drawFilledEnabled = true
        lineChartSet.colors = [UIColor.red]
        lineChartSet.fillColor = UIColor.red
        lineChartSet.fillAlpha = 0.4
        
        let barChartSet: BarChartDataSet = BarChartDataSet(values: yVals2, label: "Calls Placed")
        
        //adjust opacity of bar chart based on amount of calls
        //more calls = darker color
        var barChartColors = [UIColor]()
        let barMax = yValuesBarChart.max()
        let barAlphaFactor = 1.5
        
        for i in yValuesBarChart {
            let alpha = CGFloat(i/(barAlphaFactor*barMax!))
            barChartColors.append(UIColor.orange.withAlphaComponent(0.9*alpha))
        }
        
        barChartSet.cornerRadius = 10
        barChartSet.colors = barChartColors
        barChartSet.highlightAlpha = 0.2
        barChartSet.highlightColor = UIColor.gray
        barChartSet.barBorderWidth = 0.0
        barChartSet.barShadowColor = UIColor(red: 1, green: 0, blue: 0, alpha: 0)// If alpha is > 0, then grey bars will appear.
        
        let data: CombinedChartData = CombinedChartData()
        data.barData = BarChartData(dataSet: barChartSet)
        data.lineData = LineChartData(dataSet: lineChartSet)
        combinedChartView.data = data
        
        combinedChartView.leftAxis.drawLabelsEnabled = false
        combinedChartView.rightAxis.drawLabelsEnabled = false
        
        //LEGEND
        combinedChartView.legend.enabled = true
        combinedChartView.legend.form = .circle
        combinedChartView.legend.horizontalAlignment = .center
        combinedChartView.legend.font = NSUIFont.init(name: "Avenir", size: 10)!

        //FONT STUFF
        combinedChartView.barData?.setValueFont(NSUIFont.init(name: "Avenir heavy", size: 10))
        combinedChartView.lineData?.setValueFont(NSUIFont.init(name: "Avenir heavy", size: 10))
        combinedChartView.barData?.setValueTextColor(UIColor.orange.withAlphaComponent(0.9))
        combinedChartView.lineData?.setValueTextColor(UIColor.red.withAlphaComponent(0.9))
        
        combinedChartView.legend.orientation = .horizontal
        combinedChartView.xAxis.labelFont = NSUIFont.init(name: "Avenir", size: 10)!

        combinedChartView.backgroundColor = UIColor.clear
        combinedChartView.scaleXEnabled = false
        combinedChartView.scaleYEnabled = false
        
        //axis setup
        combinedChartView.xAxis.labelPosition = .bottom
        combinedChartView.leftAxis.gridColor = UIColor.lightGray.withAlphaComponent(0.3)
        combinedChartView.rightAxis.gridColor = UIColor.lightGray.withAlphaComponent(0.3)
        combinedChartView.xAxis.gridColor = UIColor.lightGray.withAlphaComponent(0.3)
        
        combinedChartView.xAxis.granularity = 1.0
        combinedChartView.rightAxis.drawAxisLineEnabled = false
        combinedChartView.chartDescription?.text = ""
        
    }
}

extension GraphDemoViewController: ChartViewDelegate {
    
    func chartValueSelected(chartView: ChartViewBase, entry: ChartDataEntry, dataSetIndex: Int, highlight: Highlight) {
        print("Data set index: \(dataSetIndex)")
    }
    
}
