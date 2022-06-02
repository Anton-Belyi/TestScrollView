//
//  ViewController.swift
//  TestScrollView
//
//  Created by Антон Белый on 01.06.2022.
//
import Stevia
import UIKit

class ViewController: UIViewController {
    

    override func loadView() {
        let view = UIView()
        view.backgroundColor = .darkGray
        
        
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .yellow
        let contentView = UIView()
        contentView.backgroundColor = .blue
        
        let testView0 = UIView()
        testView0.backgroundColor = .green
        
        let testView1 = UIView()
        testView1.backgroundColor = .red
            
        view.subviews(
            scrollView.subviews(
                contentView.subviews(
                    testView0,
                    testView1
                )
            )
        )
        
        scrollView.contentInsetAdjustmentBehavior = .never

        let bounds = UIScreen.main.bounds
        let height = bounds.size.height
        
        contentView.fillContainer()
        contentView.Width == scrollView.Width
        contentView.Height >= scrollView.Height
        
        scrollView.fillContainer()
        
        contentView.layout(
            testView0.fillHorizontally().top(0).height(3500),
            testView1.fillHorizontally(padding: 25).bottom(15).height(60).Top >= testView0.Bottom + 45
        )
 
        
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
    }
}
