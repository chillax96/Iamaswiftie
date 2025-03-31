import SwiftUI

struct ContentView: View {
    @State private var words: [String] = ["딸기", "바나나", "키위"]   // 단어를 저장할 배열
    @State private var newWord: String = ""  // 새로 입력할 단어
    @State private var wordToDelete: String = "" // 삭제할 단어
    @State private var message: String = ""  // 상태 메시지
    @State private var searchWord: String = "" //검색할 단어

    var body: some View {
        VStack {
            Text("단어 관리 프로그램")
                .font(.largeTitle)
                .padding()
            // 사용자 입력 텍스트 필드
            HStack {
                TextField("추가할 단어를 입력하세요.", text: $newWord)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("추가") {
                    addWord()
                }
                .padding(.horizontal)
            }
            
            .padding()
            
            // 입력된 단어 목록 표시
            List(words, id: \.self) { word in
                Text(word)
            }
            .padding()
            
            // 과제2 배열 크기 확인 기능 추가
            Text("현재 등록된 단어 개수: \(words.count)")
                .font(.headline)
                .foregroundColor(.gray)
            
            // 삭제할 단어 입력 및 삭제 버튼
            HStack {
                TextField("삭제할 단어를 입력하세요.", text: $wordToDelete)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("삭제") {
                    deleteWord()
                }
                .padding(.horizontal)
            }
            
            .padding()
            
            // 과제3 단어 검색 기능 추가
            HStack {
                TextField("검색할 단어를 입력하세요.", text: $searchWord)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("검색") {
                    searchwordinwords()
                }
                .padding()
            }
            // 메시지 표시
            Text(message)
                .foregroundColor(.red)
                .padding()
        }
        .padding()
    }
    
    // 단어 추가 함수 (과제 1.배열 중복 검사 기능 추가)
    func addWord() {
        if newWord.isEmpty {
            message = "단어를 입력하세요."
            return
        }
        
        if words.contains(newWord) {
            message = "이미 목록에 있는 단어입니다."
            return
        }
        words.append(newWord)
        newWord = ""
        message = "추가 완료"
    }
    
    // 단어 삭제 함수
    func deleteWord() {
        if let index = words.firstIndex(of: wordToDelete) {
            let deletedWord = words[index]
            words.remove(at: index)
            wordToDelete = ""
            message = "'\(deletedWord)'을(를) 삭제했습니다."
        } else {
            message = "해당 단어가 목록에 없습니다."
        }
    }
    
    // 단어 검색 함수
    func searchwordinwords() {
        if searchWord.isEmpty {
            message = "검색할 단어를 입력하세요."
            return
        }
    
        if let index = words.firstIndex(of: searchWord) {
            message = "\(searchWord)은/는 배열의 \(index + 1)번째 위치에 있습니다"
        }
    }
}

struct ArrayManagerView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

