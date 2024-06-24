@Entry
@Component
struct ifpage{
  @State fleg:boolean=true
  build(){
    Column(){
      Button('按')
        .onClick(()=>{
          if(this.fleg==true){
            this.fleg=false
          }else {
            this.fleg=true
          }
        })
      if (this.fleg){
        Text('这是true')
          .fontColor(Color.Red)
          .fontSize(40)
      }else{
        Text('这是false')
          .fontColor(Color.Red)
          .fontSize(40)
      }
    }

  }
}