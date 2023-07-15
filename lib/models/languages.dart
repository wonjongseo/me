import 'package:get/get.dart';

String toTr(String word) => word.tr;

class Languagues extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ko_KR': {
          'download_cv': 'CV의 언어를 선택하세요',
          'description': '설명',
          'corporation_project': '회사 프로젝트',
          'read_more': '더보기',

          'project_completion_report': '프로젝트 완료 보고서',
          'author': '작성자 (계급 및 성명)',
          'date_writed': '작성 일자',
          'project_name': '프로젝트 명',

          'performance_period': '수행 기간',
          'assigned_task': '담당 업무',
          'operating_environment': '운영 환경',
          'used_learned': '사용한 것 (배운 것)',
          'problems_future_countermeasures': '문제점\n향후 대응방안',
          'point_me_felt': '느낀점',

          'programmer_name': '원종서',
          'programmer_city': '도쿄',
          'programmer_residence': '일본',
          'programmer_age': '1997년05월17일',
          'academic_ability': '세종대학교\n(컴퓨터공학과)',

          'page_title': '지금 이순간에 최선을 다하자.',

          'index_10_description': "일본어 공부하면서 한자 바로 볼 수 있는 일본어 단어앱(+문법)",

          'index_10_specifications_0': 'N1급~N5급 단어 학습 (1급 데이터는 일부만 표시)',
          'index_10_specifications_1': '일본어, 한국어 음성 기능',
          'index_10_specifications_2': '자동 듣기 기능',
          'index_10_specifications_3':
              '테스트 기능 [단어의 의미 (사지선다형) + 단어의 읽는 법 (주관식)]',
          'index_10_specifications_4': '각 단어의 한자 [읽는 법, 훈독, 음독] 보기',
          'index_10_specifications_5': 'N1급~N3급 문법 학습 (1급 데이터는 일부만 표시)',
          'index_10_specifications_6': '문법 예제 보기 / 듣기',
          'index_10_specifications_7': '테스트 기능',
          'index_10_specifications_8': 'N1~N5급 한자 학습 (1급 데이터는 일부만 표시)',
          'index_10_specifications_9': '일본어 음성 기능',
          'index_10_specifications_10': '테스트 기능',
          'index_10_specifications_11': '한자 [읽는 법, 훈독, 음독] 보기',
          'index_10_specifications_12': '한자 획수 보기',
          'index_10_specifications_13': '직접 나만의 단어 저장',
          'index_10_specifications_14':
              'JLPT 단어 혹은 JLPT 한자를 학습 중 모르는 단어를 저장하여 반복 학습',
          // ----------- 0 ------------v
          'index_9_description': '풀스택 개발자 원종서의 반응형 웹 포토폴리오',
          'index_9_specifications_0': '반응형 웹 페이지',
          'index_9_specifications_1': '여러 언어 지원',

          // ----------- 1 ------------
          'index_8_description':
              '당신은 토익 단어를 쉽게 배울 수 있고, 간단한 테스트를 통해 메타인지 능력을 향상시킬 수 있습니다. 내장된 단어 외에도 자신의 단어를 배우고 테스트할 수도 있습니다.',

          'index_8_specifications_1': '약 1500개의 토익 단어 학습',
          'index_8_specifications_2': '발음 듣기',
          'index_8_specifications_3': '주관식 테스트 기능',
          'index_8_specifications_4': '객관식 테스트 기능',
          'index_8_specifications_5': '단어 자동 재생',
          'index_8_specifications_6': '나만의 단어 저장 기능',
          'index_8_specifications_7': 'Excel 파일 데이터를 TOEIC 종각에 저장 기능',

          // ----------- 2 ------------
          'index_7_description':
              '잃어버린 반려견을 펫 탐정소에 업로드 시키면 AI 기술을 이용하여 반려견의 특성을 분석해 인근 사용자에게 반려견에 대한 정보를 제공해 반려견를 잃어버리는 것을 막을 수 있습니다.',
          'index_7_specifications_0': '인증',
          'index_7_specifications_1': '게시글 업로드',
          'index_7_specifications_2': '게시글 보기',
          'index_7_specifications_3': '인근 사용자에게 메세지 전송',
          'index_7_specifications_4': '이미지 분석',

          'index_6_description': '플러터 실력을 향상 시키기 위한 Won Food 애플리케이션.',
          'index_6_specifications_0': '스플레쉬 화면',
          'index_6_specifications_1': '로그인',
          'index_6_specifications_2': '비밀번호 찾기',
          'index_6_specifications_3': 'OTP 코드 인증 ',
          'index_6_specifications_4': '회원가입',
          'index_6_specifications_5': '설문조사',
          'index_6_specifications_6': '홈 화면',
          'index_6_specifications_7': '음식 세부화면',
          'index_6_specifications_8': 'Food style screen ',
          'index_6_specifications_9': '주문',
          'index_6_specifications_10': '체크아웃',
          'index_6_specifications_11': '결제',
          'index_6_specifications_12': '결제방법',
          'index_6_specifications_13': '세로운 주소 등록',
          'index_6_specifications_14': '주문 상태',
          'index_6_specifications_15': '프로필 수정',

          // ----------- 3 ------------
          'index_5_description': 'Spring과 JPA의 실력 향상을 위한 온라인 쇼핑몰 프로젝트',
          'index_5_specifications_0': '인증',
          'index_5_specifications_1': '상품 리뷰',
          'index_5_specifications_2': '유저 정보 변경',
          'index_5_specifications_3': '카드에 상품 추가',
          'index_5_specifications_4': '유저 관리',
          'index_5_specifications_5': '상품 관리',
          'index_5_specifications_6': '배너 관리',

          // ----------- 4 ------------
          'index_4_description': 'React JS의 실력을 향상 시키기 위한 Netflix  클론 코딩.',

          // ----------- 5 ------------
          'index_3_description':
              'React JS과 Graph QL 의 실력을 향상 시키기 위한 Instagram  클론 코딩.',

          // ----------- 6 ------------
          'index_2_description':
              'Express, MongoDb과 Java Script 의 실력을 향상 시키기 위한 Youtube  클론 코딩.',
          'index_2_specifications_0': '동영상 시청',
          'index_2_specifications_1': '동영상 녹화',
          'index_2_specifications_2': '동영상 업로드',
          'index_2_specifications_3': '동영상 편집',
          'index_2_specifications_4': '동영상 삭제',

          // ----------- 10 ------------
          'index_1_description': '자바Swing을 이용한 XML-Maker 프로그램',

          // ----------- 11 ------------
          'index_0_description':
              '단어를 외운 것인지 단어의 순서를 외운 것인지 헷갈리는 사람들을 위한 JLPT 단어 외우기 프로그램.',
        },

        ////////////////////////////////////////////////////
        'ja_JP': {
          'download_cv': 'CV 言語を選択してください',
          'description': '説明',
          'corporation_project': '`会社のプロジェクト',
          'read_more': 'もっとみる',

          'project_completion_report': 'プロジェクト完了レポート',
          'project_name': 'プロジェクト名',
          'performance_period': '遂行期間',
          'author': '作成者(階級及び氏名)',
          'date_writed': '作成日付',

          'assigned_task': '担当業務',
          'operating_environment': '運営環境',
          'used_learned': '使ったこと(習った)',
          'problems_future_countermeasures': '問題点\n今後の対応策',
          'point_me_felt': '感じた点',

          'programmer_name': 'ウォンジョンソ',
          'programmer_city': '東京',
          'programmer_residence': '日本',
          'programmer_age': '1997年05月17日',
          'academic_ability': '世宗大学校\n(コンピューター工学科)',

          'page_title': '今この瞬間に集中しよう.',

          'index_10_description': "일본어 공부하면서 한자 바로 볼 수 있는 일본어 단어앱(+문법)",

          'index_10_specifications_0': 'N1級~N5級単語学習(1級データは一部のみ表示)',
          'index_10_specifications_1': '日本語、韓国語音声機能',
          'index_10_specifications_2': '自動リスニング機能',
          'index_10_specifications_3': 'テスト機能 [単語の意味(四肢選択肢)+単語の読み方(主観式)]',
          'index_10_specifications_4': '各単語の漢字[読み方、訓読、音読]を見る',
          'index_10_specifications_5': 'N1級~N3級文法学習(1級データは一部のみ表示)',
          'index_10_specifications_6': '文法例を見る/聞く',
          'index_10_specifications_7': 'テスト機能',
          'index_10_specifications_8': 'N1~N5級漢字学習（1級データは一部のみ表示）',
          'index_10_specifications_9': '日本語音声機能',
          'index_10_specifications_10': 'テスト機能',
          'index_10_specifications_11': '漢字[読み方、訓読、音読] 見る',
          'index_10_specifications_12': '漢字画数を見る',
          'index_10_specifications_13': '直接自分だけの単語を保存',
          'index_10_specifications_14': 'JLPT単語またはJLPT漢字を学習中に知らない単語を保存して繰り返し学習',
          // ----------- 0 ------------v
          'index_9_description': 'フルスタック開発者ウォン·ジョンソの反応型のウェブのポートフォリオ',
          'index_9_specifications_0': '反応型のウェブページ',
          'index_9_specifications_1': 'マルチ言語を支援',

          // ----------- 1 ------------
          'index_8_description':
              '貴方はTOEICの単語を簡単に学ぶことができ, 簡単なテストを通じてメタ認知能力を向上させることができます。 内蔵された単語の他にも, 自分の単語を保存にて, テストすることもできます。',

          'index_8_specifications_0': '約1500 TOEIC単語学習',
          'index_8_specifications_1': '発音を聴くこと',
          'index_8_specifications_2': '主観テスト機能',
          'index_8_specifications_3': '多肢選択テスト機能',
          'index_8_specifications_4': '自動ワード再生',
          'index_8_specifications_5': '私自身のワードストレージ機能',
          'index_8_specifications_6': 'ExcelファイルデータをTOEICの縦角度に保存可能',

          // ----------- 2 ------------
          'index_7_description':
              'なくなったペットをペット探偵社に載せさせれば、AI技術を利用してペットの特性を分析し近隣ユーザーにペットに関する情報を提供しペットを失うことを防ぐことができます',
          'index_7_specifications_0': '認証',
          'index_7_specifications_1': '掲示板を乗せること',
          'index_7_specifications_2': '掲示板を見ること',
          'index_7_specifications_3': '近隣ユーザーにメッセージを送ること',
          'index_7_specifications_4': 'イメージを分析',

          'index_6_description': 'Flutterの実力を上がるためのウォンードアプリ',
          'index_6_specifications_0': 'スプラッシュページ',
          'index_6_specifications_1': 'ログリンページ',
          'index_6_specifications_2': 'バスワードのお忘れページ',
          'index_6_specifications_3': 'OTPコードの認証ページ',
          'index_6_specifications_4': '新規登録ページ',
          'index_6_specifications_5': 'アンケートページ',
          'index_6_specifications_6': 'ホームページ',
          'index_6_specifications_7': '食べ物の詳細パージ',
          'index_6_specifications_8': '食べ物のスタイルのベージ',
          'index_6_specifications_9': '注文ページ',
          'index_6_specifications_10': 'テェックアウトページ',
          'index_6_specifications_11': '支払いページ',
          'index_6_specifications_12': '支払い方法ページ',
          'index_6_specifications_13': '新いアドレス登録ページ',
          'index_6_specifications_14': '注文状況ページ',
          'index_6_specifications_15': 'プロファイルページ',

          // ----------- 3 ------------
          'index_5_description': 'SpringとJPAを利用した実力向上のためのオンラインショッピングモールのプロジェクト',
          'index_5_specifications_0': '認証',
          'index_5_specifications_1': '商品をレビュー',
          'index_5_specifications_2': 'ユーザ情報の変更',
          'index_5_specifications_3': 'カートへの商品の追加',
          'index_5_specifications_4': 'ユーザ管理',
          'index_5_specifications_5': '商品管理',
          'index_5_specifications_6': 'バナー管理',

          // ----------- 4 ------------
          'index_4_description':
              'React JS の実力を向上するのための Netflix Clone Codingプロジェクト',

          // ----------- 5 ------------
          'index_3_description':
              'React JS と Graph QL の実力を向上するのための Instagram Clone Codingプロジェクト',

          // ----------- 6 ------------
          'index_2_description':
              'Express と MongoDb と JavaScript の実力を向上するのための Youtube Clone Codingプロジェクト',
          'index_2_specifications_0': '動画を見ること',
          'index_2_specifications_1': '動画を録音こと',
          'index_2_specifications_2': '動画を乗せること',
          'index_2_specifications_3': '動画を編集すること',
          'index_2_specifications_4': '動画を削除すること',

          // ----------- 6 ------------
          'index_1_description': 'Java の Swing を利用して作った XML-Maker プログラム',
          'index_0_description': '単語を覚えたのか単語の順を覚えたのか紛れる人のためのJLPT単語を覚えるプログラム.',

          ///////////////////////////////////////////////////// Company

          // ----------- 12-------------
        },

        /////////////////////////////////////////////////////

        'en_US': {
          'download_cv': 'Select a language for CV.',
          'description': 'description',
          'corporation_project': '`Corporation  Project',
          'read_more': 'Read More',

          'project_completion_report': 'Project Completion Report',
          'author': 'Author (class and name)',
          'date_writed': 'Date Writed',
          'project_name': 'Project Name',
          'performance_period': 'Performance Period',
          'assigned_task': 'Assigned task',
          'operating_environment': 'Operating Environment',
          'used_learned': 'Used (learned)',
          'problems_future_countermeasures': 'Problems\nFuture Countermeasures',
          'point_me_felt': 'Point me felt',

          'programmer_name': 'Jong seo Won',
          'programmer_city': 'Tokyo',
          'programmer_residence': 'Japan',

          'programmer_age': '1997/05/17',
          'academic_ability': 'Sejong University\n(Computer Engineering)',

          'page_title': 'Concentrate on this Moments.',
          'point_me_felt_ans_0':
              'I can feel about Importance of specifications',

          // ----------- 0 ------------
          'index_10_description':
              "This Application is Japanese word App that help people who is studying JLPT Test.",

          'index_10_specifications_0':
              'N1 to N5 level word learning (only some of the first level data are displayed)',
          'index_10_specifications_1': 'Japanese and Korean voice functions',
          'index_10_specifications_2': 'Automatic listening function',
          'index_10_specifications_3':
              'Test function [Meaning of words (plural) + how to read words (subjective)]',
          'index_10_specifications_4':
              'View the Chinese characters of each word [Reading, Teaching, Reading]',
          'index_10_specifications_5':
              'N1 to N3 level grammar learning (only some of the first level data are displayed)',
          'index_10_specifications_6': 'View/Listen to Grammar Examples',
          'index_10_specifications_7': 'Test functionality',
          'index_10_specifications_8':
              'Learning Chinese characters of N1 to N5 (only some of the first-class data are displayed)',
          'index_10_specifications_9': 'Japanese voice function',
          'index_10_specifications_10': 'Test function',
          'index_10_specifications_11':
              'Chinese characters [Reading, Teaching, Reading]',
          'index_10_specifications_12':
              'Viewing the number of strokes in Chinese characters',
          'index_10_specifications_13': 'Save your own words yourself',
          'index_10_specifications_14':
              'Repeat learning by saving words that you don\'t know while learning JLPT words or JLPT Chinese characters',
          // ----------- 0 ------------
          'index_9_description':
              "It is Full-stack developer Won Jong seo's responsive web portfolio.'",
          'index_9_specifications_0': 'Responsive Web Page',
          'index_9_specifications_1': 'Supporting multi lanagues',

          // ----------- 1 ------------
          'index_8_description':
              'You can easily learn TOEIC words and improve your meta-cognitive skills through simple tests. In addition to built-in words, you can also test your own words by saving them.',

          'index_8_specifications_0': 'About 1500 TOEIC word learning',
          'index_8_specifications_1': 'Listening to pronunciation',
          'index_8_specifications_2': 'Subjective test function',
          'index_8_specifications_3': 'Multiple choice test function',
          'index_8_specifications_4': 'Automatic word playback',
          'index_8_specifications_5': 'My own word storage function',
          'index_8_specifications_6':
              'Ability to save Excel file data to TOEIC longitudinal angles',

          // ----------- 2 ------------
          'index_7_description':
              "If you let the lost pet go to a pet detective agency, you can use AI technology to analyze the pet's characteristics and provide information about the pet to neighboring users to prevent them from losing it.",
          'index_7_specifications_0': 'Authentication',
          'index_7_specifications_1': 'Uploading posts',
          'index_7_specifications_2': 'Watching posts',
          'index_7_specifications_3': 'Pushing a notification to nearby users',
          'index_7_specifications_4': 'Analyzing images',

          'index_6_description':
              'This is Won Food App by building Flutter to encrease my Skill of Flutter ',
          'index_6_specifications_0': 'Splash Screen',
          'index_6_specifications_1': 'Login Screen',
          'index_6_specifications_2': 'Forgot Password Screen',
          'index_6_specifications_3': 'OTP code verification Screen',
          'index_6_specifications_4': 'Sign Up Screen',
          'index_6_specifications_5': 'Quick survey Screen',
          'index_6_specifications_6': 'Home Screen',
          'index_6_specifications_7': 'Food details Screen',
          'index_6_specifications_8': 'Food style screen ',
          'index_6_specifications_9': 'Order Screen',
          'index_6_specifications_10': 'CheckOut Screen',
          'index_6_specifications_11': 'Pay Screen',
          'index_6_specifications_12': 'Pay Method Screen',
          'index_6_specifications_13': 'Add New Address Screen',
          'index_6_specifications_14': 'Order Status Screen',
          'index_6_specifications_15': 'Update Profile Screen',
          // ----------- 3 ------------
          'index_5_description':
              'It is an online shopping mall project to improve skills using spring and JPA.',
          'index_5_specifications_0': 'Authentication',
          'index_5_specifications_1': 'Reviewing projects',
          'index_5_specifications_2': 'Changing the user infomation',
          'index_5_specifications_3': 'Adding products to the basket',
          'index_5_specifications_4': 'Managing users',
          'index_5_specifications_5': 'Managing products',
          'index_5_specifications_6': 'Managing a banner',

          // ----------- 4 ------------
          'index_4_description':
              'It is The Netflix Clone Coding Project for improving Skill of React JS.',

          // ----------- 5 ------------
          'index_3_description':
              'It is The Instagram Clone Coding Project for improving Skill of Graph QL and React JS.',

          // ----------- 6 ------------
          'index_2_description':
              'It is The Youtube Clone Coding Project for improving Skill of Express, MongoDB and Java Script.',
          'index_2_specifications_0': 'Watching a Video',
          'index_2_specifications_1': 'Recording a Video',
          'index_2_specifications_2': 'Uploading a Video',
          'index_2_specifications_3': 'Editing a Video',
          'index_2_specifications_4': 'Deleting a Video',

          'index_1_description':
              'It is The XML Maker Program using Swing of Java.',

          'index_0_description':
              'A program for memorizing JLPT words for those who are confused about whether they have memorized words or the order of words.',

          // ----------- 12-------------
        }
      };
}
