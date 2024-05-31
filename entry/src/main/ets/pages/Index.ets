@Entry
@Component
struct Index {
  build(){
    //根组件
    Column(){


      //置顶logo
      Column(){
        Image($rawfile('log.png'))
          .width(200)
          .offset({y:70})

        //推荐榜单
        List(){
          ListItem(){
            Column(){
              Image($rawfile('rank.png'))
                .width('34%')
            }
          }

          ListItem(){
            Column(){
              Image($rawfile('hot.png'))
                .width('34%')
            }
          }

          ListItem(){
            Column(){
              Image($rawfile('scenery.png'))
                .width('34%')
            }
          }

          ListItem(){
            Column(){
              Image($rawfile('ski.png'))
                .width('34%')
            }
          }

        }
        .listDirection(Axis.Horizontal)
        .height(82)
        .position({y:160})
        .scrollBar(BarState.Off)


      }
      .backgroundImage($rawfile('banner.png'))
      .width('100%')
      .height(264)


    }
    .width(360)
    .height('100%')
  }
}