var ready;
ready = function () {
    var primary_subjects = [
        {
            text: "Âm nhạc",
        },
        {
            text: "Chính tả"
        },
        {
            text: "Đạo đức"
        },
        {
            text: "Học vần",
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
            text: "Tập viết",
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
        }
    ]

    var secondary_classes = [
        {
            text: "Lớp 6"
        },
        {
            text: "Lớp 7"
        },
        {
            text: "Lớp 8"
        },
        {
            text: "Lớp 9"
        }
    ]

    var highschool_classes = [
        {
            text: "Lớp 10"
        },
        {
            text: "Lớp 11"
        },
        {
            text: "Lớp 12"
        }
    ]

    var secondary_subjects = [
        {
            text: "Toán học",
            nodes: secondary_classes
        },
        {
            text: "Ngữ văn",
            nodes: secondary_classes
        },
        {
            text: "Tiếng Anh",
            nodes: secondary_classes
        },
        {
            text: "Vật lý",
            nodes: secondary_classes
        },
        {
            text: "Hóa học",
            nodes: secondary_classes
        },
        {
            text: "Sinh học",
            nodes: secondary_classes
        },
        {
            text: "Địa lý",
            nodes: secondary_classes
        },
        {
            text: "Lịch sử",
            nodes: secondary_classes
        },
        {
            text: "Tin học",
            nodes: secondary_classes
        },
        {
            text: "Công nghệ",
            nodes: secondary_classes
        },
        {
            text: "GDCD - GDNGLL",
            nodes: secondary_classes
        },
        {
            text: "Âm nhạc",
            nodes: secondary_classes
        },
        {
            text: "Mỹ thuật",
            nodes: secondary_classes
        }
    ]

    var highschool_subjects = [
        {
            text: "Toán học",
            nodes: highschool_classes
        },
        {
            text: "Ngữ văn",
            nodes: highschool_classes
        },
        {
            text: "Ngoại ngữ",
            nodes: highschool_classes
        },
        {
            text: "Vật lý",
            nodes: highschool_classes
        },
        {
            text: "Hóa học",
            nodes: highschool_classes
        },
        {
            text: "Sinh học",
            nodes: highschool_classes
        },
        {
            text: "Địa lý",
            nodes: highschool_classes
        },
        {
            text: "Lịch sử",
            nodes: highschool_classes
        },
        {
            text: "Tin học",
            nodes: highschool_classes
        },
        {
            text: "Công nghệ",
            nodes: highschool_classes
        },
        {
            text: "GDCD - GDNGLL",
            nodes: highschool_classes
        },
        {
            text: "Thể dục",
            nodes: highschool_classes
        }
    ]

    var tree = [
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
                    text: "Lớp 4 tuổi",
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
                    nodes: primary_subjects
                },
                {
                    text: "Lớp 2",
                    nodes: primary_subjects
                },
                {
                    text: "Lớp 3",
                    nodes: primary_subjects
                },
                {
                    text: "Lớp 4",
                    nodes: primary_subjects
                },
                {
                    text: "Lớp 5",
                    nodes: primary_subjects
                }
            ]
        },
        {
            text: "Trung học cơ sở",
            state: {
                expanded: false
            },
            nodes: secondary_subjects
        },
        {
            text: "Trung học phổ thông",
            state: {
                expanded: false
            },
            nodes: highschool_subjects
        },
        {
            text: "CĐ-ĐH"
        }
    ];

    function getTree() {
        // Some logic to retrieve, or generate tree structure
        return tree;
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
    $('#tree').treeview({data: getTree()});
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