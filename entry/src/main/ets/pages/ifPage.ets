@Entry
@Component
struct ifpage{
  @State flag:boolean=true
  build(){
    Column(){
      Button('按')
        .onClick(()=>{
          if(this.flag==true){
            this.flag=false
          }else {
            this.flag=true
          }
        })
      if (this.flag){
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