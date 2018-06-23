//
//  ViewController.swift
//  ardemo
//
//  Created by mac126 on 2018/3/30.
//  Copyright © 2018年 mac126. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.delegate = self
        sceneView.showsStatistics = true
        let scene = SCNScene(named: "art.scnassets/ship.scn")!
        sceneView.scene = scene
        
        print("another_branch")
        sayByebye()
        walk()
        run()
        fuckYou(person: "zhang")
        
        whatShouldIdo()
        unityAndARKitARCore()
        
        // 什么是Metal
        whatIsMetal()
        // 什么是CoreML
        whatIsCoreML()
        // 多模型多动画
        whatIsMutiple3DModelsAndMutipleAnimations()
        // 无限水平面
        infiniteHorizontalPlane()
        
        // ARDragon
        arDragon()
        
        // 课余时间做个AR游戏吧
        makeARDragonGame()
        
    }
    
    private func makeARDragonGame() {
        print("课余时间做个AR游戏吧")
    }
    
    func fuckYou(person: String) {
        print("funckyou\(person)")
        print("cizhima cizhima cizhima")
    }
    
    func sayByebye() {
        print("sayByebye")
    }
    
    func walk() {
        print("walkjjjjljljljljjjjjllllllllll")
    }
    
    func run() {
        print("runle hejiu")
    }
    
    func whatShouldIdo() {
        print("whatShouldIdo")
    }
    
    func unityAndARKitARCore() {
        print("unityAndARKitARCore")
        print("learnunity???")
    }
    
    func whatIsMetal() {
        print("whatIsMetal")
    }
    
    func whatIsCoreML() {
        print("whatIsCoreML")
    }
    
    func whatIsMutiple3DModelsAndMutipleAnimations() {
        print("whatIsMutiple3DModelsAndMutipleAnimations")
    }
    
    func infiniteHorizontalPlane() {
        print("infiniteHorizontalPlane")
    }
    
    func arDragon() {
        print("arDragon怎么做的平面检测，圆凳子上竟然识别到平面，放置恐龙")
    }
    
    func duanwuGoHome() {
        print("端午节GoHome")
    }
    
    func whatShouldIdo( thing: String) {
        print("whatShouldIdo-我该怎么办\(thing)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    // MARK: - ARSCNViewDelegate
    
/*
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
     
        return node
    }
*/
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
