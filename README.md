
# Custom rails task

Custom rails task that takes a folder path as an input and outputs the 5 most frequent file formats in descending order

# Example
Here is the content of test_data_folder
```
new_folder
    test.txt
    secret_files
        file1.docx
        file2.txt
        file3.png
        ExamSolutions.java
        ExamTest.java
        file4.xml
        homeworks
            homeworks_description.txt
            homework_git.md
            homework_grades.xlsx
    essay.docx
    essay_draft.docx
    essay.pdf
    hello_world.py
    test_hello.py
    new.txt
    project
        README.md
        Main.java
        Test.java
        Main.class
        src
HelloWorld.java
```

Here is the example of the task running:

```
$ rails custom_command:top_five[test_data_folder]
Top 5 file formats in new_folder folder:
.java      5
.txt       4
.docx      3
.md        2
.py        2
```