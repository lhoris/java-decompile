# java-decompile

## 목차
- [JD-GUI]()
- [CFR (Class File Reader)]()
- [IntelliJ IDEA ConsoleDecompiler](#intellij-idea-consoledecompiler)

## JD-GUI

JD-GUI는 JAR 파일을 디컴파일하고, 소스를 sources JAR 파일로 내보낼 수 있는 디컴파일 도구입니다.

### JD-GUI 다운로드: [JD-GUI 공식 웹사이트](https://java-decompiler.github.io/)에서 다운로드 가능합니다.

### 사용 방법
JD-GUI를 실행하고, 디컴파일할 JAR 파일을 엽니다.  
**File > Save All Sources**를 선택하여, 디컴파일된 소스 코드를 ZIP 파일로 저장합니다.

## CFR (Class File Reader)

CFR은 최신 Java 기능을 디컴파일합니다. Java 9, 12 및 14 의 대부분을 포함 하지만 Java 6으로만 작성되었으므로 어디에서나 작동합니다.

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

#### 예시:
```
intellij-decompile.bat "C:\MyJars\app.jar" "C:\Decompiled"
```

이 명령은 `C:\MyJars\app.jar` 파일을 디컴파일하고 결과를 `C:\Decompiled` 디렉토리에 저장합니다.

```cmd
C:\java-decompile>intellij-decompile.bat "C:\Decompile\class-jar\log4j-core-2.17.2.jar" "C:\Decompile\java-jar"
INFO:  Decompiling class org/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction
INFO:  ... done
INFO:  Decompiling class org/apache/logging/log4j/core/appender/rolling/action/CompositeAction
INFO:  ... done
INFO:  Decompiling class org/apache/logging/log4j/core/appender/rolling/TriggeringPolicy
INFO:  ... done

...

Decompilation completed. Results are saved in the C:\Decompile\java-jar directory.
Press any key to continue . . .
```

### 2. 대화형 프롬프트 사용

인자 없이 스크립트를 실행하면 대화형 모드로 진입합니다:

#### 2-1. 명령 프롬프트에서 다음 명령을 실행합니다:
```
intellij-decompile.bat
```

#### 2-2. 프롬프트가 표시되면 JAR 파일의 경로를 입력합니다.

#### 2-3. 그 다음 프롬프트에서 결과를 저장할 디렉토리 경로를 입력합니다. (엔터키를 누르면 현재 디렉토리가 사용됩니다)

#### 2-4. 예시:
```cmd
C:\java-decompile>intellij-decompile.bat
Usage:
  1. Run without arguments and follow the prompts:
     decompile.bat
  2. Run with arguments:
     decompile.bat "path\to\your.jar" "path\to\target\directory"

Example:
  decompile.bat "C:\MyJars\app.jar" "C:\Decompiled"

Enter the path of the JAR file to decompile: C:\Decompile\class-jar\log4j-core-2.17.2.jar
Enter the name of the directory to save decompiled results default current directory: C:\Decompile\java-jar
INFO:  Decompiling class org/apache/logging/log4j/core/appender/rolling/action/AbstractPathAction
INFO:  ... done
INFO:  Decompiling class org/apache/logging/log4j/core/appender/rolling/action/CompositeAction
INFO:  ... done
INFO:  Decompiling class org/apache/logging/log4j/core/appender/rolling/TriggeringPolicy
INFO:  ... done

...

Decompilation completed. Results are saved in the C:\Decompile\java-jar directory.
Press any key to continue . . .
```

### 주의사항
- JAR 파일 경로와 결과 저장 디렉토리 경로에 공백이 포함된 경우, 반드시 따옴표로 감싸주어야 합니다.
- 결과 저장 디렉토리가 존재하지 않는 경우, 스크립트가 자동으로 생성합니다.
- 디컴파일 과정에서 오류가 발생하면 콘솔에 오류 메시지가 표시됩니다.

### 요구사항
- Windows 운영 체제
- IntelliJ IDEA가 설치되어 있어야 합니다.
- 스크립트 내의 IDEA_JDK와 DECOMPILER_JAR 경로가 올바르게 설정되어 있어야 합니다.
