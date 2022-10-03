import 'package:my_work_plz/home/home.dart';
import 'package:my_work_plz/setting/setting1_8.dart';
import 'package:my_work_plz/theme/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme/color.dart';

class num extends ChangeNotifier {
  final int _inputnum = 10;
  int get inputnum => _inputnum;

  notifyListeners();
}

final _formKey = GlobalKey<FormState>();

class RawPickerTest extends StatefulWidget {
  const RawPickerTest({Key? key}) : super(key: key);

  @override
  State<RawPickerTest> createState() => _RawPickerTestState();
}

class _RawPickerTestState extends State<RawPickerTest> {
  late num _numProvider;

  @override
  int? inputtedvalue;
  bool userInteracts() => inputtedvalue != null;
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 50),
        SizedBox(
          height: 200,
          width: 256,
          child: Row(
            children: [
              Expanded(child: _buildT(context, 0, 2, ValueKey(2))),
              Expanded(child: _buildhour(context, 2, 12, ValueKey(2))),
              Expanded(child: _buildmin(context, 0, 60, ValueKey(2))),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildhour(BuildContext context, int i, int _length, Key? key) {
    return Provider(
      create: (context) => setting3(),
      child: Form(
        // key: _formKey,
        child: CupertinoPicker.builder(
          key: key,
          scrollController: FixedExtentScrollController(initialItem: 4),
          itemExtent: 52,
          selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
              background: Colors.transparent),
          childCount: _length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: index < 9
                    ? Text(
                        "0${index + 1}",
                        style: subtitle5(color: text, size: 20),
                      )
                    : Text(
                        "${index + 1}",
                        style: subtitle5(color: text, size: 20),
                      ));
          },
          onSelectedItemChanged: (int _index) {
            setState(() => inputtedvalue = _index + 1);
            if (_length <= 10) return;
            var index = _index % _length;
          },
        ),
      ),
    );
  }

  Widget _buildmin(BuildContext context, int i, int _length, Key? key) {
    return CupertinoPicker.builder(
      key: key,
      scrollController: FixedExtentScrollController(initialItem: 30),
      itemExtent: 52,
      selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
          background: Colors.transparent),
      childCount: _length,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 15),
            child: index < 10
                ? Text(
                    "0$index",
                    style: subtitle5(color: text, size: 20),
                  )
                : Text(
                    "$index",
                    style: subtitle5(color: text, size: 20),
                  ));
      },
      onSelectedItemChanged: (int _index) {
        setState(() => inputtedvalue = _index + 1);
        if (_length <= 10) return;
        var index = _index % _length;
        Provider(
          create: (context) => num(),
          child: home1(),
        );
        print("onSelectedItemChanged. col: $i, row: $index");
      },
    );
  }

  List<String> strArr = ['오전\n', '오후\n'];
  Widget _buildT(BuildContext context, int i, int _length, Key? key) {
    return CupertinoPicker.builder(
      key: key,
      scrollController: FixedExtentScrollController(initialItem: 1),
      itemExtent: 52,
      selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
          background: Colors.transparent),
      // selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(),
      childCount: _length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 0, right: 3),
          child: Text(
            "${strArr[index]}",
            style: subtitle5(color: text, size: 20),
          ),
        );
      },
      onSelectedItemChanged: (int _index) {
        if (_length <= 0) return;
        var index = _index % _length;
        print("onSelectedItemChanged. col: $i, row: $index");
      },
    );
  }
}

class Min extends StatefulWidget {
  const Min({Key? key}) : super(key: key);

  @override
  State<Min> createState() => _MinState();
}

class _MinState extends State<Min> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 50),
        SizedBox(
          height: 200,
          width: 256,
          child: Row(
            children: [
              Expanded(child: _buildmin(context, 1, 60, ValueKey(2))),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildmin(BuildContext context, int i, int _length, Key? key) {
    return Center(
      child: CupertinoPicker.builder(
        key: key,
        scrollController: FixedExtentScrollController(initialItem: 9),
        itemExtent: 52,
        selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
            background: Colors.transparent),
        // selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(),
        childCount: _length,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15),
              child: index + 1 < 10
                  ? Text(
                      "0${index + 1}",
                      style: subtitle5(color: text, size: 20),
                    )
                  : Text(
                      "${index + 1}",
                      style: subtitle5(color: text, size: 20),
                    ));
        },
        onSelectedItemChanged: (int _index) {
          if (_length <= 10) return;
          var index = _index % _length;
          print("onSelectedItemChanged. col: $i, row: $index");
        },
      ),
    );
  }
}

class RawP extends StatefulWidget {
  const RawP({Key? key}) : super(key: key);

  @override
  State<RawP> createState() => _RawPState();
}

class _RawPState extends State<RawP> {
  late num _numProvider;

  @override
  int? inputtedvalue;
  bool userInteracts() => inputtedvalue != null;
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 50),
        SizedBox(
          height: 200,
          width: 256,
          child: Row(
            children: [
              Expanded(child: _buildT(context, 0, 2, ValueKey(2))),
              Expanded(child: _buildhour(context, 2, 12, ValueKey(2))),
              Expanded(child: _buildmin(context, 0, 60, ValueKey(2))),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildhour(BuildContext context, int i, int _length, Key? key) {
    return Provider(
      create: (context) => setting3(),
      child: Form(
        // key: _formKey,
        child: CupertinoPicker.builder(
          key: key,
          scrollController: FixedExtentScrollController(initialItem: 9),
          itemExtent: 52,
          selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
              background: Colors.transparent),
          // selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(),
          childCount: _length,
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15),
                child: index < 9
                    ? Text(
                        "0${index + 1}",
                        style: subtitle5(color: text, size: 20),
                      )
                    : Text(
                        "${index + 1}",
                        style: subtitle5(color: text, size: 20),
                      ));
          },
          onSelectedItemChanged: (int _index) {
            setState(() => inputtedvalue = _index + 1);
            if (_length <= 10) return;
            var index = _index % _length;
            // Provider(
            //   create: (context) => num(),
            //   child: home1(),
            // );
          },
        ),
      ),
    );
  }

  Widget _buildmin(BuildContext context, int i, int _length, Key? key) {
    return CupertinoPicker.builder(
      key: key,
      scrollController: FixedExtentScrollController(initialItem: 30),
      itemExtent: 52,
      selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
          background: Colors.transparent),
      // selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(),
      childCount: _length,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 15),
            child: index < 10
                ? Text(
                    "0$index",
                    style: subtitle5(color: text, size: 20),
                  )
                : Text(
                    "$index",
                    style: subtitle5(color: text, size: 20),
                  ));
      },
      onSelectedItemChanged: (int _index) {
        setState(() => inputtedvalue = _index + 1);
        if (_length <= 10) return;
        var index = _index % _length;
        Provider(
          create: (context) => num(),
          child: home1(),
        );
        print("onSelectedItemChanged. col: $i, row: $index");
      },
    );
  }

  List<String> strArr = ['오전\n', '오후\n'];
  Widget _buildT(BuildContext context, int i, int _length, Key? key) {
    return CupertinoPicker.builder(
      key: key,
      scrollController: FixedExtentScrollController(initialItem: 1),
      itemExtent: 52,
      selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
          background: Colors.transparent),
      // selectionOverlay: const CupertinoPickerDefaultSelectionOverlay(),
      childCount: _length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 15.0, bottom: 0, right: 3),
          child: Text(
            "${strArr[index]}",
            style: subtitle5(color: text, size: 20),
          ),
        );
      },
      onSelectedItemChanged: (int _index) {
        if (_length <= 0) return;
        var index = _index % _length;
        print("onSelectedItemChanged. col: $i, row: $index");
      },
    );
  }
}
