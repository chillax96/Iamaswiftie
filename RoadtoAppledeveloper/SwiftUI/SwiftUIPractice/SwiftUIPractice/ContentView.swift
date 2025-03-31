import SwiftUI

struct ContentView: View {
    // 사용자의 상태를 나타내는 @State 변수 선언
    // showImagePicker가 true가 되면 이미지 선택 Sheet가 표시됨
    @State private var showImagePicker = false
    // 선택된 이미지를 저장하는 상태 변수 (UIImage는 UIKit 타입)
    @State private var selectedImage: UIImage?

    var body: some View {
        VStack {
            // selectedImage가 nil이 아닐 경우(옵셔널 바인딩) 이미지 표시
            if let image = selectedImage {
                // UIKit의 UIImage를 SwiftUI의 Image로 변환하여 표시
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
            } else {
                Text("선택된 이미지 없음")
            }
            // 버튼을 클릭하면 showImagePicker가 true가 되어 시트를 띄움
            Button("사진 선택") {
                showImagePicker = true
            }
            .padding()
        }
        // 시트(sheet)는 모달 형태로 View를 띄우는 SwiftUI 기능
        // showImagePicker가 true일 때, ImagePickerView가 모달로 나타남
        .sheet(isPresented: $showImagePicker) {
            // Binding을 통해 ImagePickerView와 selectedImage 상태 공유
            ImagePickerView(selectedImage: $selectedImage)
        }
    }
}
