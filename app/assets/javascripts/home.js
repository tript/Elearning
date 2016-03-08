var ready;
ready = function () {
    var secondary_subjects = [
        {
            text: "Ngữ văn"
        },
        {
            text: "Tiếng Anh"
        },
        {
            text: "Vật lý"
        },
        {
            text: "Sinh học"
        },
        {
            text: "Địa lý"
        },
        {
            text: "Lịch sử"
        },
        {
            text: "Tin học"
        },
        {
            text: "Công nghệ"
        },
        {
            text: "GDCD - GDNGLL"
        },
        {
            text: "Âm nhạc"
        },
        {
            text: "Mỹ thuật"
        }
    ];

    var class6th_subjects = [
        {
            text: "Số học"
        },
        {
            text: "Hình học"
        },
        {
            text: "Ngữ văn"
        },
        {
            text: "Tiếng Anh"
        },
        {
            text: "Vật lý"
        },
        {
            text: "Sinh học"
        },
        {
            text: "Địa lý"
        },
        {
            text: "Lịch sử"
        },
        {
            text: "Tin học"
        },
        {
            text: "Công nghệ"
        },
        {
            text: "GDCD - GDNGLL"
        },
        {
            text: "Âm nhạc"
        },
        {
            text: "Mỹ thuật"
        }
    ];

    var class7th_subjects = [
        {
            text: "Đại số"
        },
        {
            text: "Hình học"
        },
        {
            text: "Ngữ văn"
        },
        {
            text: "Tiếng Anh"
        },
        {
            text: "Vật lý"
        },
        {
            text: "Sinh học"
        },
        {
            text: "Địa lý"
        },
        {
            text: "Lịch sử"
        },
        {
            text: "Tin học"
        },
        {
            text: "Công nghệ"
        },
        {
            text: "GDCD - GDNGLL"
        },
        {
            text: "Âm nhạc"
        },
        {
            text: "Mỹ thuật"
        }
    ];

    var class89th_subjects = [
        {
            text: "Đại số"
        },
        {
            text: "Hình học"
        },
        {
            text: "Ngữ văn"
        },
        {
            text: "Tiếng Anh"
        },
        {
            text: "Vật lý"
        },
        {
            text: "Hóa học"
        },
        {
            text: "Sinh học"
        },
        {
            text: "Địa lý"
        },
        {
            text: "Lịch sử"
        },
        {
            text: "Tin học"
        },
        {
            text: "Công nghệ"
        },
        {
            text: "GDCD - GDNGLL"
        },
        {
            text: "Âm nhạc"
        },
        {
            text: "Mỹ thuật"
        }
    ];

    var secondary_classes = [
        {
            text: "Lớp 6",
            state: {
                expanded: false
            },
            nodes: class6th_subjects
        },
        {
            text: "Lớp 7",
            state: {
                expanded: false
            },
            nodes: class7th_subjects
        },
        {
            text: "Lớp 8",
            state: {
                expanded: false
            },
            nodes: class89th_subjects
        },
        {
            text: "Lớp 9",
            state: {
                expanded: false
            },
            nodes: class89th_subjects
        }
    ];

    var highschool_subjects = [
        {
            text: "Ngữ văn"
        },
        {
            text: "Tiếng Anh"
        },
        {
            text: "Ngoại ngữ khác"
        },
        {
            text: "Vật lý"
        },
        {
            text: "Hóa học"
        },
        {
            text: "Sinh học"
        },
        {
            text: "Địa lý"
        },
        {
            text: "Lịch sử"
        },
        {
            text: "Tin học"
        },
        {
            text: "Công nghệ"
        },
        {
            text: "GDCD - GDNGLL"
        },
        {
            text: "Thể dục"
        }
    ];

    var class10th_subjects = [
        {
            text: "Đại số"
        },
        {
            text: "Hình học"
        },
        {
            text: "Ngữ văn"
        },
        {
            text: "Tiếng Anh"
        },
        {
            text: "Ngoại ngữ khác"
        },
        {
            text: "Vật lý"
        },
        {
            text: "Hóa học"
        },
        {
            text: "Sinh học"
        },
        {
            text: "Địa lý"
        },
        {
            text: "Lịch sử"
        },
        {
            text: "Tin học"
        },
        {
            text: "Công nghệ"
        },
        {
            text: "GDCD - GDNGLL"
        },
        {
            text: "Thể dục"
        }
    ];

    var class11th_subjects = [
        {
            text: "Đại số và giải tích"
        },
        {
            text: "Hình học"
        },
        {
            text: "Ngữ văn"
        },
        {
            text: "Tiếng Anh"
        },
        {
            text: "Ngoại ngữ khác"
        },
        {
            text: "Vật lý"
        },
        {
            text: "Hóa học"
        },
        {
            text: "Sinh học"
        },
        {
            text: "Địa lý"
        },
        {
            text: "Lịch sử"
        },
        {
            text: "Tin học"
        },
        {
            text: "Công nghệ"
        },
        {
            text: "GDCD - GDNGLL"
        },
        {
            text: "Thể dục"
        }
    ];

    var class12th_subjects = [
        {
            text: "Giải tích"
        },
        {
            text: "Hình học"
        },
        {
            text: "Ngữ văn"
        },
        {
            text: "Tiếng Anh"
        },
        {
            text: "Ngoại ngữ khác"
        },
        {
            text: "Vật lý"
        },
        {
            text: "Hóa học"
        },
        {
            text: "Sinh học"
        },
        {
            text: "Địa lý"
        },
        {
            text: "Lịch sử"
        },
        {
            text: "Tin học"
        },
        {
            text: "Công nghệ"
        },
        {
            text: "GDCD - GDNGLL"
        },
        {
            text: "Thể dục"
        }
    ];

    var highschool_classes = [
        {
            text: "Lớp 10",
            nodes: class10th_subjects
        },
        {
            text: "Lớp 11",
            nodes: class11th_subjects
        },
        {
            text: "Lớp 12",
            nodes: class12th_subjects
        }
    ];

    var tree1 = [
        {
            text: "Mầm non",
            state: {
                expanded: true
            },

            nodes: [
                {
                    text: "Lớp 3 tuổi"
                },
                {
                    text: "Lớp 4 tuổi"
                },
                {
                    text: "Lớp 5 tuổi"
                }
            ]
        },
        {
            text: "Tiểu học",
            state: {
                expanded: true
            },
            nodes: [
                {
                    text: "Lớp 1",
                    nodes:
                        [{
                            text: "Âm nhạc"
                        },
                        {
                            text: "Chính tả"
                        },
                        {
                            text: "Đạo đức"
                        },
                        {
                            text: "Học vần"
                        },
                        {
                            text: "Kể chuyện"
                        },
                        {
                            text: "Mỹ thuật"
                        },
                        {
                            text: "Tập đọc"
                        },
                        {
                            text: "Tập viết"
                        },
                        {
                            text: "Thủ công"
                        },
                        {
                            text: "Toán học"
                        },
                        {
                            text: "Tiếng Anh"
                        },
                        {
                            text: "Tự nhiên xã hội"
                        }]
                },
                {
                    text: "Lớp 2",
                    nodes:
                        [{
                            text: "Âm nhạc"
                        },
                        {
                            text: "Chính tả"
                        },
                        {
                            text: "Đạo đức"
                        },
                        {
                            text: "Kể chuyện"
                        },
                        {
                            text: "Luyện từ và câu"
                        },
                        {
                            text: "Mỹ thuật"
                        },
                        {
                            text: "Tập đọc"
                        },
                        {
                            text: "Tập làm văn"
                        },
                        {
                            text: "Tập viết"
                        },
                        {
                            text: "Thủ công"
                        },
                        {
                            text: "Toán học"
                        },
                        {
                            text: "Tiếng Anh"
                        },
                        {
                            text: "Tự nhiên xã hội"
                        }]
                },
                {
                    text: "Lớp 3",
                    nodes:
                        [{
                            text: "Âm nhạc"
                        },
                        {
                            text: "Chính tả"
                        },
                        {
                            text: "Đạo đức"
                        },
                        {
                            text: "Luyện từ và câu"
                        },
                        {
                            text: "Mỹ thuật"
                        },
                        {
                            text: "Tập đọc"
                        },
                        {
                            text: "Tập làm văn"
                        },
                        {
                            text: "Tập viết"
                        },
                        {
                            text: "Thủ công"
                        },
                        {
                            text: "Toán học"
                        },
                        {
                            text: "Tiếng Anh"
                        },
                        {
                            text: "Tự nhiên xã hội"
                        },
                        {
                            text: "Tin học"
                        }]
                },
                {
                    text: "Lớp 4",
                    nodes:
                        [{
                            text: "Âm nhạc"
                        },
                        {
                            text: "Chính tả"
                        },
                        {
                            text: "Đạo đức"
                        },
                        {
                            text: "Địa lí"
                        },
                        {
                            text: "Kể chuyện"
                        },
                        {
                            text: "Khoa học"
                        },
                        {
                            text: "Kĩ thuật"
                        },
                        {
                            text: "Lịch sử"
                        },
                        {
                            text: "Luyện từ và câu"
                        },
                        {
                            text: "Mỹ thuật"
                        },
                        {
                            text: "Tập đọc"
                        },
                        {
                            text: "Tập làm văn"
                        },
                        {
                            text: "Toán học"
                        },
                        {
                            text: "Tiếng Anh"
                        },
                        {
                            text: "Thể dục"
                        },
                        {
                            text: "Tin học"
                        }]
                },
                {
                    text: "Lớp 5",
                    nodes:
                        [{
                            text: "Âm nhạc"
                        },
                        {
                            text: "Chính tả"
                        },
                        {
                            text: "Đạo đức"
                        },
                        {
                            text: "Địa lí"
                        },
                        {
                            text: "Kể chuyện"
                        },
                        {
                            text: "Khoa học"
                        },
                        {
                            text: "Kĩ thuật"
                        },
                        {
                            text: "Lịch sử"
                        },
                        {
                            text: "Luyện từ và câu"
                        },
                        {
                            text: "Mỹ thuật"
                        },
                        {
                            text: "Tập đọc"
                        },
                        {
                            text: "Tập làm văn"
                        },
                        {
                            text: "Toán học"
                        },
                        {
                            text: "Tiếng Anh"
                        },
                        {
                            text: "Thể dục"
                        },
                        {
                            text: "Tin học"
                        }]
                }
            ]
        },
        {
            text: "Trung học cơ sở",
            state: {
                expanded: true
            },
            nodes: secondary_classes
        },
        {
            text: "Trung học phổ thông",
            state: {
                expanded: true
            },
            nodes: highschool_classes
        },
        {
            text: "CĐ-ĐH"
        }
    ];

    function getTree() {
        var gradesArr = new Array();
        var cout = 0;
        $.getJSON("/grades", function(result){
            $.each(result, function(i, field){
                var mGrade = {};
                var gradeId = field.id;
                var gradeName = field.name;

                // Get classes of the grade
                var classArr = new Array();
                $.getJSON("/grades/" + gradeId + "/classes", function(result){
                    $.each(result, function(i, field){
                        var classId = field.id;
                        var className = field.name;
                        var mClass = {};
                        mClass.text = className;
                        mGrade.state = {expanded: false};

                        // Get subjects of class
                        var subjectArr = new Array();
                        $.getJSON("/classes/" + classId + "/subjects", function(result) {
                            $.each(result, function (i, field) {
                                var subjectName = field.name;
                                var mSubject = {};
                                mSubject.text = subjectName;
                                subjectArr.push(mSubject);
                            });
                        });

                        // Push subjects to class Array
                        if (subjectArr.length > 0) {
                            mClass.nodes = subjectArr;
                        }
                        classArr.push(mClass);
                    });
                });

                // Push classes to grade array
                mGrade.text = gradeName;
                mGrade.state = {expanded: false};

                if (classArr.length > 0) {
                    mGrade.nodes = classArr;
                }

                gradesArr.push(mGrade);
            });
        });
        return gradesArr;
    }

    function getParentNode(data) {
        if (data.parentId) {
            return $('#tree').treeview('getParent', data.nodeId);
        } else {
            return undefined;
        }
    }

    function getTypeOfNode(data) {
        var parent = getParentNode(data);
        if (typeof data.parentId === 'undefined') {
            return "grade";
        } else if (data.parentId === 0) {
            return "class";
        } else if (getParentNode(parent))
        {
            return "subject";
        } else {
            return "class";
        }
    }

    $.ajaxSetup({ cache: false });
    $('#tree').treeview({data: tree1});
    $('#menu').metisMenu({
        toggle: true,
        doubleTapToGo: false,
        preventDefault: true,
        activeClass: 'active',
        collapseClass: 'collapse',
        collapseInClass: 'in',
        collapsingClass: 'collapsing',
        onTransitionStart: false,
        onTransitionEnd: false

    });
    $('#tree').on('nodeSelected', function(event, data) {

        // Expand the selected node
        $('#tree').treeview('expandNode', data.nodeId);

        var type = getTypeOfNode(data);

        $("#class-lesson").html("");
        // User select a grade node
        if (type === "grade") {

            //$.getJSON("/grades/" + data.text + "/lessons", function(result){
            //    $.each(result, function(i, class_lesson){
            //        $("#class-lesson").append("<div class=\"row\">");
            //        var class_name = class_lesson.class;
            //        var lessons = class_lesson.lessons;
            //        var number_of_lessons = class_lesson.quantity;
            //
            //        $("#class-lesson").append("<h3>" + class_name + " (" + number_of_lessons + ")" + "</h3>");
            //        $.each(lessons, function(i, lesson) {
            //            $("#class-lesson").append(
            //                "<div class=\"col-md-4 portfolio-item lessons\" id=\"lesson-" + lesson.id + "\">" +
            //                "<span class=\"lesson-image\"> <div >" + "<img class=\"img-responsive\" src=/assets/elearning_untitled-389b54cd0a7ffe850f67b41b4f701ddf7d10ca1271a38cbfcd4fc437a9c38a9e.jpg />"  + "</div></span>" +
            //            "<span class=\"lesson-name\">" + lesson.name +
            //                "</span> </div>"
            //                );
            //        });
            //        $("#class-lesson").append("</div>");
            //    });
            //});
            window.location.href = "/grades/" + data.text + "/lessons";
        }

        // User select a class node
        else if (type === "class") {
            // redirect to class_lesson view
            window.location.href = "/classes/" + data.text + "/lessons";
        }

        // User select a subject node
        else if (type === "subject") {
            // redirect to subject_lesson view
        }
    });
    
};
$(document).ready(ready);
$(document).on('page:load', ready);