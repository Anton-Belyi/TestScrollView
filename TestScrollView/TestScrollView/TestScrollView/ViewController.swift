//
//  ViewController.swift
//  TestScrollView
//
//  Created by Антон Белый on 01.06.2022.
//
import Stevia
import UIKit
import PhotosUI

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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if PHPhotoLibrary.authorizationStatus(for: .readWrite) == .limited {
            print("Access limited")
        }
    
        
        switch PHPhotoLibrary.authorizationStatus(for: .readWrite) {
        case .notDetermined:
            print("access") // ask for access
        case .restricted, .denied:
            print("access") // sorry
        case .authorized:
            print("access")  // we have full access
         
        // new option:
        case .limited:
            print("access") // we only got access to some photos of library
        @unknown default:
            fatalError()
        }
        
        
//        PHPhotoLibrary.requestAuthorization(for: .readWrite) { status in
//            switch status {
//            case .notDetermined:
//                print("access") // The user hasn't determined this app's access.
//            case .restricted:
//                print("access")// The system restricted this app's access.
//            case .denied:
//                print("access")// The user explicitly denied this app's access.
//            case .authorized:
//                print("access")// The user authorized this app to access Photos data.
//            case .limited:
//                print("access")// The user authorized this app for limited Photos access.
//            @unknown default:
//                fatalError()
//            }
//        }
    }
}
