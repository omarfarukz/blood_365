import 'package:blood_365/Screens/Signup/components/custom_drop_down.dart';
import 'package:blood_365/Screens/dashboard/dashboard.dart';
import 'package:blood_365/Screens/request_screeen/typable_text.dart';
import 'package:blood_365/application/request/request_bloc.dart';
import 'package:blood_365/domain/request_blood/request.dart';
import 'package:blood_365/domain/user/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:logger/logger.dart';

class RequestForm extends HookWidget {
  // final String recieverID;
  // const MulticityInput(this.recieverID);
  final String bloodGroup;
  final UserLocation userLocation;
  RequestForm(this.bloodGroup, this.userLocation);

  @override
  Widget build(BuildContext context) {
    final TextEditingController date = useTextEditingController();
    final TextEditingController patientName = useTextEditingController();
    final TextEditingController patientAge = useTextEditingController();
    final TextEditingController disease = useTextEditingController();
    final TextEditingController gender = useTextEditingController();
    final TextEditingController hospitalName = useTextEditingController();
    final TextEditingController ward = useTextEditingController();
    final TextEditingController bed = useTextEditingController();
    final TextEditingController requestType = useTextEditingController();
    final TextEditingController senderNumber = useTextEditingController();

    final List<String> genders = ["Male", "Female"];
    final List<String> requestTypes = ["Blood", "Plasma"];
    final _formKey = useMemoized(() => GlobalKey<FormState>());
    final RequestBloc requestBloc = BlocProvider.of<RequestBloc>(context);
    return BlocListener<RequestBloc, RequestState>(
        listenWhen: (p, c) =>
            p.isSubmitting != c.isSubmitting ||
            p.error != c.error ||
            p.isSubmitted != c.isSubmitted,
        listener: (context, state) {
          EasyLoading.dismiss();
          if (state.error.isNotEmpty) {
            EasyLoading.showError(state.error);
          } else if (state.isSubmitting) {
            EasyLoading.show(status: 'not loading...');
          } else if (state.isSubmitted) {
            EasyLoading.showSuccess('Request Submitted!');
            BlocProvider.of<RequestBloc>(context).add(const GetMyRequestList());
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Dashboard()),
            );
          }
        },
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                  child: TypeableTextFormField(
                    patientName,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person, color: Colors.blue[900]),
                      labelText: "Patient Name",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                  child: TypeableTextFormField(
                    patientAge,
                    finalText: "Lake Xanderland",
                    decoration: InputDecoration(
                      icon: Icon(Icons.person, color: Colors.blue[900]),
                      labelText: "Patient Age",
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: TypeableTextFormField(
                          disease,
                          finalText: "South Darian",
                          decoration: InputDecoration(
                            icon: Icon(Icons.coronavirus,
                                color: Colors.blue[900]),
                            labelText: "issue",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 64.0,
                      alignment: Alignment.center,
                      child: IconButton(
                          onPressed: () => {},
                          icon: const Icon(Icons.add_circle_outline,
                              color: Colors.grey)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomDropDown(
                        options: requestTypes,
                        title: "Request Type",
                        controller: requestType,
                        colors: Colors.blue[900],
                      ),
                      CustomDropDown(
                        colors: Colors.blue[900],
                        options: genders,
                        title: "Gender",
                        controller: gender,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                  child: TypeableTextFormField(
                    hospitalName,
                    finalText: "4",
                    decoration: InputDecoration(
                      icon: Icon(Icons.local_hospital, color: Colors.blue[900]),
                      labelText: "Hospital Name",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                  child: TypeableTextFormField(
                    senderNumber,
                    finalText: "4",
                    decoration: InputDecoration(
                      icon: Icon(Icons.local_hospital, color: Colors.blue[900]),
                      labelText: "Phone Number",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                  child: TypeableTextFormField(
                    ward,
                    finalText: "4",
                    decoration: InputDecoration(
                      icon: Icon(Icons.dns, color: Colors.blue[900]),
                      labelText: "Ward",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 0.0, 64.0, 8.0),
                  child: TypeableTextFormField(
                    bed,
                    finalText: "4",
                    decoration: InputDecoration(
                      icon: Icon(Icons.king_bed, color: Colors.blue[900]),
                      labelText: "Bed",
                    ),
                  ),
                ),
                DateTimePicker(
                  controller: date,
                  type: DateTimePickerType.dateTimeSeparate,
                  dateMask: 'd MMM, yyyy',
                  // initialValue: '',
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  icon: const Icon(Icons.event),
                  dateLabelText: 'Date',
                  timeLabelText: "Hour",
                  selectableDayPredicate: (date) {
                    // Disable weekend days to select from the calendar

                    return true;
                  },
                  onChanged: (val) {
                    Logger().i(val);
                  },
                  validator: (val) {
                    if (val == null || val.isEmpty) {
                      return 'Select date';
                    }

                    return null;
                  },
                  onSaved: (val) => Logger().i(val),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
                      child: FloatingActionButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            requestBloc.add(PostRequestEvent(
                              RequestData(
                                  "",
                                  "",
                                  "",
                                  DateTime.parse(date.text)
                                      .millisecondsSinceEpoch,
                                  hospitalName.text,
                                  ward.text,
                                  bed.text,
                                  patientName.text,
                                  disease.text,
                                  bloodGroup,
                                  gender.text,
                                  senderNumber.text,
                                  "",
                                  requestType.text,
                                  "",
                                  int.parse(patientAge.text),
                                  userLocation),
                            ));
                          }
                        },
                        child: const Icon(Icons.timeline, size: 36.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
