# java-decompile

## 목차
- [IntelliJ IDEA ConsoleDecompiler](#intellij-idea-decompiler-tool)
- [JD-GUI]()
- [CFR (Class File Reader)]()

## IntelliJ IDEA ConsoleDecompiler

이 도구는 IntelliJ IDEA의 Java 디컴파일러를 사용하여 JAR 파일을 디컴파일하는 Windows 배치 스크립트입니다.

### 사용 방법

이 도구는 두 가지 방식으로 사용할 수 있습니다:

1. 명령줄 인자를 사용하는 방법
2. 대화형 프롬프트를 사용하는 방법

### 1. 명령줄 인자 사용

명령 프롬프트에서 다음과 같이 스크립트를 실행합니다:

```
intellij-decompile.bat "JAR 파일 경로" "결과 저장 디렉토리"
```

예시:
```
intellij-decompile.bat "C:\MyJars\app.jar" "C:\Decompiled"
```

이 명령은 `C:\MyJars\app.jar` 파일을 디컴파일하고 결과를 `C:\Decompiled` 디렉토리에 저장합니다.

### 2. 대화형 프롬프트 사용

인자 없이 스크립트를 실행하면 대화형 모드로 진입합니다:

#### 1. 명령 프롬프트에서 다음 명령을 실행합니다:
```
intellij-decompile.bat
```

#### 2. 프롬프트가 표시되면 JAR 파일의 경로를 입력합니다.

#### 3. 그 다음 프롬프트에서 결과를 저장할 디렉토리 경로를 입력합니다. (엔터키를 누르면 현재 디렉토리가 사용됩니다)

### 주의사항
- JAR 파일 경로와 결과 저장 디렉토리 경로에 공백이 포함된 경우, 반드시 따옴표로 감싸주어야 합니다.
- 결과 저장 디렉토리가 존재하지 않는 경우, 스크립트가 자동으로 생성합니다.
- 디컴파일 과정에서 오류가 발생하면 콘솔에 오류 메시지가 표시됩니다.

### 요구사항
- Windows 운영 체제
- IntelliJ IDEA가 설치되어 있어야 합니다.
- 스크립트 내의 IDEA_JDK와 DECOMPILER_JAR 경로가 올바르게 설정되어 있어야 합니다.
