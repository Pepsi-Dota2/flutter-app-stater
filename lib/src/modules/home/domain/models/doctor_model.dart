class DoctorModel {
  final String name;
  final String desc;
  final String images;
  final double rating;

  const DoctorModel(
    this.name,
    this.desc,
    this.images,
    this.rating,
  );

  // Mock data for doctors
  static final List<DoctorModel> defaultCategories = [
    DoctorModel(
      'Dr. Sarah Johnson',
      'Cardiologist with 10 years of experience',
      'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      4.5,
    ),
    DoctorModel(
      'Dr. James Anderson',
      'Orthopedic Specialist with a passion for sports medicine',
      'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      4.8,
    ),
    DoctorModel(
      'Dr. Emily Carter',
      'Pediatrician known for her care and attention',
      'https://images.unsplash.com/photo-1524253482453-3fed8d2fe12b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      4.7,
    ),
    DoctorModel(
      'Dr. Michael Brown',
      'Dermatologist specializing in skin health',
      'https://images.unsplash.com/photo-1597764694022-0b8451993729?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      4.6,
    ),
    DoctorModel(
      'Dr. Sophia Lee',
      'Neurologist with cutting-edge research experience',
      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
      4.9,
    ),
  ];
}
