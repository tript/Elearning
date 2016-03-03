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
                expanded: false
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
                expanded: false
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
                expanded: false
            },
            nodes: secondary_classes
        },
        {
            text: "Trung học phổ thông",
            state: {
                expanded: false
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
            return null;
        }
    }

    function getTypeOfNode(data) {
        var parent = getParentNode(data);
        if (parent === null) {
            return "grade";
        } else if (getParentNode(parent))
        {
            return "subject";
        } else {
            return "class";
        }
    }

    $.ajaxSetup({ cache: false });
    $('#tree').treeview({data: tree1});
    $('#tree').on('nodeSelected', function(event, data) {

        // Expand the selected node
        $('#tree').treeview('expandNode', data.nodeId);

        var type = getTypeOfNode(data);
        if (type === "grade") {
            $.getJSON("/grades/name/" + data.text, function(result){
                $.each(result, function(i, field){
                    //$("div").append(field + " ");
                    console.log(field);
                });
            });
        }

    });
    
};
$(document).ready(ready);
$(document).on('page:load', ready);