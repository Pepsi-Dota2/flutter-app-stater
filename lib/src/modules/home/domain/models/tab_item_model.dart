// Create a model for tab data (put this in a separate file)
import 'package:flutter/material.dart';

class TabItem {
  final String title;
  final Widget content;

  const TabItem({
    required this.title,
    required this.content,
  });

  static List<TabItem> get tabItems => [
        const TabItem(
          title: 'About',
          content: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Text(
              "Dr. Sarah Johnson is a highly accomplished Cardiologist with over 10 years of dedicated experience in the medical field. Renowned for her expertise in diagnosing and treating complex heart conditions, she has a proven track record of improving the health and well-being of her patients. Dr. Johnson graduated with honors from a prestigious medical school and completed her residency at a top-rated hospital, where she gained extensive hands-on experience in cardiology.\n\n"
              "Her approach to healthcare is deeply patient-centric, emphasizing personalized care plans tailored to individual needs. Dr. Johnson is also actively involved in cutting-edge research, contributing to advancements in heart health and preventative care. She has authored several peer-reviewed articles in renowned medical journals and frequently speaks at national and international conferences.\n\n"
              "Beyond her professional commitments, Dr. Johnson is passionate about educating the community on the importance of heart health. She organizes free health camps and workshops, empowering individuals with the knowledge to lead healthier lives. Known for her compassionate and approachable demeanor, Dr. Johnson has consistently received excellent reviews for her commitment to her patients' well-being, making her one of the most sought-after cardiologists in the region.",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        const TabItem(
          title: 'Reviews',
          content: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Text(
              "Dr. Sarah Johnson has earned high praise from her patients for her exceptional care, dedication, and expertise. Patients frequently highlight her ability to explain complex medical conditions in a way that is easy to understand, making them feel confident in their treatment plans. \n\n"
              "One patient shared, 'Dr. Johnson took the time to listen to all my concerns and provided a comprehensive plan to address my heart condition. She made me feel at ease during what was a stressful time for me and my family.' Another noted, 'Her knowledge and professionalism are unmatched. I feel fortunate to have her as my cardiologist.' \n\n"
              "Her staff is also commended for their warm and friendly approach, ensuring a smooth and pleasant experience for everyone. With an average rating of 4.9 out of 5 stars, Dr. Johnson continues to set a high standard for patient care, making her one of the most recommended specialists in her field.",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        const TabItem(
          title: 'Consultation',
          content: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Text(
              "Dr. Sarah Johnson offers a comprehensive consultation process designed to provide patients with a clear understanding of their heart health. During a typical consultation, she conducts a thorough review of medical history, performs necessary diagnostic tests, and discusses personalized treatment options.\n\n"
              "Patients can expect a collaborative approach to care, where their concerns are addressed in detail. Dr. Johnson believes in empowering her patients with knowledge, ensuring they are actively involved in decisions regarding their health. Teleconsultation services are also available for those unable to visit in person, offering the same level of attention and care.\n\n"
              "To schedule a consultation, patients are encouraged to contact the clinic directly or book an appointment online. The consultation fee includes a detailed report and actionable recommendations tailored to individual needs. Dr. Johnson’s commitment to providing accessible and compassionate care makes her a trusted partner in managing cardiovascular health.",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ];
}
