import UIKit //화며에 보이는 모든것, 버튼 들이 유아이 킷 , 즉 화면에 보이는 것을 묶어놓은것
import Foundation //통신을 위한 것, 배열등은 파운데이션에 들어 있음, 즉 화면에 보이지 않는 것들을 묶어놓은것
//이두개를 묶어서 코코아라고 부른것

class MainViewController : UIViewController{
    @IBOutlet var imageViewCandle :UIImageView? = nil //잡아주는것은 :
    // ?는 옵셔널 지금당장은 값이 안들어와도 나중에 들어올수 있음을 의미
    @IBOutlet var labelStatus :UILabel? = nil //@IBOutlet으로 인터페이스 명시
    @IBOutlet var switchStatus:UISwitch? = nil //상수로 한것
    
    
    @IBAction func touchSwitch(sender:UISwitch){//센더는 여기서는 스위치라고 보면됨  AnyObject로 해도 되긴함 메인뷰에 호출되는것
        //인터페이스연결 아이비액션 스위치 아이콘에서 컨트롤 드래그 메이뷰콘틀롤러로 하기
     print("스위치를 눌렀다!!!")
        
        
        
        //액션에 따라서 이미지와 레이블이 바뀜
        let flag = sender.isOn
        
        if flag == true{
            self.imageViewCandle?.image = UIImage(named: "Candle on.jpg")
            self.labelStatus?.text = "Candle is now on!!!"
        }else{
            self.imageViewCandle?.image = UIImage(named: "Candle off.jpg")
            self.labelStatus?.text = "Candle is now off!!!"
            }
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.switchStatus?.setOn(true, animated: true)// true 켜있는 상태 false 꺼져있는상태
        self.touchSwitch(sender: self.switchStatus!)
        
  /*
        //1. switch off
        if let mySwitch = self.switchStatus {
            mySwitch.setOn(false, animated: true)
        }
        
        //2. text : 촛불이 꺼졌습니다...  옵셔널 바인딩
        if let myLabel = self.labelStatus {
            myLabel.text = "촛불이 꺼졌습니다..."
        }
        
    //폴스언래핑은 값이 꼭 있어야함 따라서 ?를 넣어야 에러가 없음
    //   self.labelStatus?.text = "촛불이 꺼졌습니다..."
        
        
        //3.이미지를 넣기
        
        self.imageViewCandle?.image = UIImage(named: "candle off.jpg")
 */
        
    }

}
