//
//  SnowShoeView.swift
//  Pods
//
//  Created by Matt Luedke on 8/27/15.
//
//

import OAuthSwift
import ObjectMapper

public class SnowShoeView: UIView {
  
  public var appKey: String?
  public var appSecret: String?
  public var delegate: SnowShoeDelegate?
  
  let baseUrl = "http://beta.snowshoestamp.com/api/v2/stamp"
  let touchCount = 5
  
  override init (frame: CGRect) {
    super.init(frame: frame)
    setupStampDetection()
  }
  
  public required init?(coder: NSCoder) {
    super.init(coder: coder)
    setupStampDetection()
  }
  
  func setupStampDetection() {
    let tapRecognizer = UITapGestureRecognizer(target: self, action: "handleStamp:")
    tapRecognizer.numberOfTapsRequired = 1
    tapRecognizer.numberOfTouchesRequired = touchCount
    addGestureRecognizer(tapRecognizer)
  }
  
  func handleStamp(sender: UIGestureRecognizer) {
    
    if let appKey = appKey, let appSecret = appSecret {
      var request = [[CGFloat]]()
      
      for i in 0...touchCount-1 {
        let point = sender.locationOfTouch(i, inView: self)
        request.append([point.x, point.y])
      }
      
      let data = try? NSJSONSerialization.dataWithJSONObject(request, options: [])
      let base64Encoded = data!.base64EncodedStringWithOptions(NSDataBase64EncodingOptions(rawValue: 0))
      
      let client = OAuthSwiftClient(consumerKey: appKey, consumerSecret: appSecret)
      
      client.post(baseUrl,
        parameters: ["data": base64Encoded],
        success: { (data, response) -> Void in
          let JSONObject: AnyObject? = try? NSJSONSerialization.JSONObjectWithData(data, options: [])
          let response = Mapper<SnowShoeResult>().map(JSONObject)
          self.delegate?.onStampResult(response)
        },
        failure: { (error) -> Void in
          print("\(error.localizedDescription)")
          self.delegate?.onStampResult(nil)
      })
      
      delegate?.onStampRequestMade()
      
    } else {
      assertionFailure("error: neither appKey nor appSecret can be empty")
    }
  }
}
