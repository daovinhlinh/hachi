import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:hachi/pages/TrackingState/controller.dart';
import 'package:hachi/utils/styles.dart';

class TrackingState extends StatelessWidget {
  TrackingState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TrackingStateController c = Get.put(TrackingStateController());
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text(
            'Theo dõi tiến độ',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  // reverse: true,
                  child: FormBuilder(
                    key: c.formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ExpandableNotifier(
                                child: Column(
                                  children: [
                                    ScrollOnExpand(
                                        scrollOnCollapse: false,
                                        scrollOnExpand: false,
                                        child: Column(
                                          children: [
                                            ExpandablePanel(
                                              controller: c.controller1,
                                              theme: const ExpandableThemeData(
                                                  headerAlignment:
                                                      ExpandablePanelHeaderAlignment
                                                          .center,
                                                  tapBodyToCollapse: true),
                                              header: Text("Cơ quan",
                                                  style: TextStyle(
                                                      color: theme.darkBlue,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              collapsed: Container(),
                                              expanded: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 28),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Nhập đia điểm',
                                                      softWrap: true,
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          color:
                                                              theme.neutral_2,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    const SizedBox(height: 10),
                                                    FormBuilderTextField(
                                                      name: 'address',
                                                      decoration:
                                                          const InputDecoration(
                                                        hintText:
                                                            'Cục cảnh sát quản lý hành chính về',
                                                      ),
                                                      onChanged: (val) {},
                                                      // valueTransformer: (text) => num.tryParse(text),
                                                      validator:
                                                          FormBuilderValidators
                                                              .compose([
                                                        FormBuilderValidators
                                                            .required(context,
                                                                errorText:
                                                                    'Vui lòng nhập địa điểm'),
                                                        FormBuilderValidators
                                                            .max(context, 200),
                                                      ]),
                                                      keyboardType:
                                                          TextInputType.text,
                                                    ),
                                                    const SizedBox(height: 12),
                                                    Text(
                                                      'Nhập thời gian',
                                                      softWrap: true,
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          color:
                                                              theme.neutral_2,
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    const SizedBox(height: 10),
                                                    FormBuilderTextField(
                                                      name: 'time',
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            '01:00 pm  09/09/2021',
                                                      ),
                                                      onChanged: (val) {},
                                                      // valueTransformer: (text) => num.tryParse(text),
                                                      validator:
                                                          FormBuilderValidators
                                                              .compose([
                                                        FormBuilderValidators
                                                            .required(context,
                                                                errorText:
                                                                    'Vui lòng nhập thời gian'),
                                                        FormBuilderValidators
                                                            .max(context, 70),
                                                      ]),
                                                      keyboardType:
                                                          TextInputType.number,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            const Divider(),
                                            ExpandablePanel(
                                              controller: c.controller2,
                                              theme: const ExpandableThemeData(
                                                  headerAlignment:
                                                      ExpandablePanelHeaderAlignment
                                                          .center,
                                                  tapBodyToCollapse: true),
                                              header: Text("Giấy tờ cần (0/2)",
                                                  style: TextStyle(
                                                      color: theme.darkBlue,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              collapsed: Container(),
                                              expanded:
                                                  FormBuilderCheckboxGroup<
                                                      String?>(
                                                decoration:
                                                    const InputDecoration(
                                                  fillColor: Colors.white,
                                                ),
                                                name: 'papers',
                                                orientation:
                                                    OptionsOrientation.vertical,
                                                options: [
                                                  FormBuilderFieldOption(
                                                      value: '1',
                                                      child: Text(
                                                        '01 Tờ khai căn cước công dân',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                theme.neutral_2,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )),
                                                  FormBuilderFieldOption(
                                                      value: '2',
                                                      child: Text(
                                                        '01 Sổ hộ khẩu',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                theme.neutral_2,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            const Divider(),
                                            ExpandablePanel(
                                              controller: c.controller3,
                                              theme: const ExpandableThemeData(
                                                  headerAlignment:
                                                      ExpandablePanelHeaderAlignment
                                                          .center,
                                                  tapBodyToCollapse: true),
                                              header: Text("Quy trình (0/6)",
                                                  style: TextStyle(
                                                      color: theme.darkBlue,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              collapsed: Container(),
                                              expanded:
                                                  FormBuilderCheckboxGroup<
                                                      String?>(
                                                onChanged: (val) {},
                                                decoration:
                                                    const InputDecoration(
                                                        fillColor: Colors.white,
                                                        border:
                                                            OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                        width:
                                                                            0))),
                                                name: 'papers',
                                                orientation:
                                                    OptionsOrientation.vertical,
                                                options: [
                                                  FormBuilderFieldOption(
                                                      value: '1',
                                                      child: Text(
                                                        'Nhập vân tay, chụp ảnh',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                theme.neutral_2,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )),
                                                  FormBuilderFieldOption(
                                                      value: '2',
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Xác nhận và trả phí',
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: theme
                                                                    .neutral_2,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                          Text(
                                                            'Lệ phí 70.000 vnđ',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              color: theme
                                                                  .neutral_2,
                                                            ),
                                                          ),
                                                        ],
                                                      )),
                                                  FormBuilderFieldOption(
                                                      value: '3',
                                                      child: Text(
                                                        '01 Sổ hộ khẩu',
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                theme.neutral_2,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )),
                                                ],
                                              ),
                                            ),
                                            const Divider(),
                                            ExpandablePanel(
                                              controller: c.controller4,
                                              theme: const ExpandableThemeData(
                                                  headerAlignment:
                                                      ExpandablePanelHeaderAlignment
                                                          .center,
                                                  tapBodyToCollapse: true),
                                              header: Text("Cách nhận kết quả",
                                                  style: TextStyle(
                                                      color: theme.darkBlue,
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              collapsed: Container(),
                                              expanded: Column(
                                                children: [
                                                  FormBuilderRadioGroup<String>(
                                                    orientation:
                                                        OptionsOrientation
                                                            .vertical,
                                                    initialValue: null,
                                                    name: 'result',
                                                    onChanged: (val) {},
                                                    validator:
                                                        FormBuilderValidators
                                                            .compose([
                                                      FormBuilderValidators
                                                          .required(context)
                                                    ]),
                                                    options: [
                                                      'Nhận kết quả trực tiếp',
                                                      'Nhận qua đường chuyển phát',
                                                    ]
                                                        .map((lang) =>
                                                            FormBuilderFieldOption(
                                                              value: lang,
                                                              child: Text(lang,
                                                                  style: const TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16)),
                                                            ))
                                                        .toList(
                                                            growable: false),
                                                  ),
                                                  const SizedBox(height: 15),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 28),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Địa điểm',
                                                          softWrap: true,
                                                          maxLines: 2,
                                                          style: TextStyle(
                                                              color: theme
                                                                  .neutral_2,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
                                                        FormBuilderTextField(
                                                          enabled: false,
                                                          name: 'address',
                                                          decoration:
                                                              const InputDecoration(
                                                            hintText:
                                                                'Cục cảnh sát quản lý hành chính về',
                                                          ),
                                                          onChanged: (val) {},
                                                          // valueTransformer: (text) => num.tryParse(text),
                                                          validator:
                                                              FormBuilderValidators
                                                                  .compose([
                                                            FormBuilderValidators
                                                                .required(
                                                                    context,
                                                                    errorText:
                                                                        'Vui lòng nhập địa điểm'),
                                                            FormBuilderValidators
                                                                .max(context,
                                                                    200),
                                                          ]),
                                                          keyboardType:
                                                              TextInputType
                                                                  .text,
                                                        ),
                                                        const SizedBox(
                                                            height: 12),
                                                        Text(
                                                          'Thời gian',
                                                          softWrap: true,
                                                          maxLines: 2,
                                                          style: TextStyle(
                                                              color: theme
                                                                  .neutral_2,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500),
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                        const SizedBox(
                                                            height: 10),
                                                        FormBuilderTextField(
                                                          enabled: false,
                                                          name: 'time',
                                                          decoration:
                                                              const InputDecoration(
                                                            hintText:
                                                                '01:00 pm  09/09/2021',
                                                          ),
                                                          onChanged: (val) {},
                                                          // valueTransformer: (text) => num.tryParse(text),
                                                          validator:
                                                              FormBuilderValidators
                                                                  .compose([
                                                            FormBuilderValidators
                                                                .required(
                                                                    context,
                                                                    errorText:
                                                                        'Vui lòng nhập thời gian'),
                                                            FormBuilderValidators
                                                                .max(context,
                                                                    70),
                                                          ]),
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(vertical: 16)),
                      backgroundColor:
                          MaterialStateProperty.all(theme.primary)),
                  onPressed: () {},
                  child: SizedBox(
                    width: Get.width,
                    child: const Text(
                      'Đã hoàn thành',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  )),
              const SizedBox(height: 15)
            ],
          ),
        ));
  }
}
