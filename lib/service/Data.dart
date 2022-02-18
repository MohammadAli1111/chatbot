import 'dart:math';

class Data{
  static List<String> intro_output_en = ["Hello","Hello, I am Robot","Hi","Hi, I am a Robot"];
  static List<String> intro_output_ar = ["اهلا","اهلا, انا روبوت"];

  static List<String> greetings_output_en = ["I am fine","I am fine, what about you ?", "I am good",
    "I am good, what about you ?"];
  static List<String> greetings_output_ar = ["انا بخير","انا بخير, كيف حالك انت؟", "الحمد لله",
    "الحمد لله, كيف حالك ؟"];

  static List<String> thank_output_en = ["Welcome","Most welcome","Its my pleasure","Mention not"];
  static List<String> thank_output_ar = ["اهلا العفو","على الرحب و السعة","من دواعي سروري"];
// generates a new Random object
  static final random = new Random();

  static String getMessageBot(String msgReq){
    var output_robot="I do not understand what you mean !!!\n (لم افهم مقصدك)";
    var message_Lower=msgReq.toString().toLowerCase();
    if(message_Lower.contains("hi") ||
       message_Lower.contains("hello")){
      output_robot= intro_output_en[random.nextInt(intro_output_en.length)];
      return output_robot;
    }if(message_Lower.contains("مرحبا")){
      output_robot= intro_output_ar[random.nextInt(intro_output_ar.length)];
      return output_robot;
    }if(message_Lower.contains("how are you") ||
        message_Lower.contains("how are you doing today")){
      output_robot=  greetings_output_en[random.nextInt(greetings_output_en.length)];
      return output_robot;
    }if(message_Lower.contains("كيفك") ||
        message_Lower.contains("كيف حالك")){
      output_robot=  greetings_output_ar[random.nextInt(greetings_output_ar.length)];
      return output_robot;
    }if(message_Lower.contains("شكرا") || message_Lower.contains("شكرا لك")){
      output_robot=  thank_output_ar[random.nextInt(thank_output_ar.length)];
      return output_robot;
    }if(message_Lower.contains("thank") || message_Lower.contains("thank you")){
      output_robot=  thank_output_en[random.nextInt(thank_output_en.length)];
      return output_robot;
    } else{
      return output_robot;
    }

  }

}