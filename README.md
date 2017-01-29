# 第15回: １時間でiPhoneアプリを作ろう
## ブラウザアプリ

  <div style="text-align:center"><img src ="https://github.com/iosClassForBeginner/sampleWebViewApp/blob/master/Assets/sample.png" /></div>
  
  当アカウントへ訪れていただき、誠にありがとうございます。第15回アプリ教室では、ブラウザアプリを作ります。自分のペースで勉強したい、勉強前に予習したい、内容を復習したい場合、ご利用ください。
  
## アプリ教室に興味ある方、歓迎します。  
  Meetup  
  http://www.meetup.com/ios-dev-in-namba/
  
## 別途アプリ教室(有料)も開いております  
  http://learning-ios-dev.esy.es/  

## 問い合わせ
  株式会社ジーライブ
  http://geelive-inc.com  

## アプリ作成手順

#### 0, 開発準備
> 0-1. xcodeで新規プロジェクトを立ち上げる
![image](https://github.com/iosClassForBeginner/sampleWebViewApp/blob/master/Assets/create_new_project.gif)

#### 1, Storyboardで、アプリのデザイン
> 1-1. main.storyboardを選択し、UI部品からUIWebViewを配置します。(ドラッグ&ドロップ)
![image](https://github.com/iosClassForBeginner/sampleWebViewApp/blob/master/Assets/set_webview.gif)

> 1-2. StoryboardのUIWebViewを、ViewController.swiftに紐づけます（control押しながらドラッグ）
![image](https://github.com/iosClassForBeginner/sampleWebViewApp/blob/master/Assets/tying_webview.gif)

#### 2, ViewController.swiftにコード記述
- 以下コードブロックを記入
  
```Swift
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myweb: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let url = URL(string: "https://www.google.co.jp/")
        let request = URLRequest(url: url!)
        self.myweb.loadRequest(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
```
