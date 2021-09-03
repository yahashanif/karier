class Job {
  static List<Job> getJob() => [
        Job(
            'Junior UX Designer',
            'Tokopedia',
            'Yogyakarta',
            'Gaji disembunyikan',
            '12 Sept 2021',
            ['Full Time', 'Sma'],
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at finibus massa, a scelerisque neque. Etiam rutrum sed arcu eget fringilla. Ut laoreet ullamcorper risus, eu porttitor ligula faucibus euismod. Sed dui quam, pellentesque eu diam sit amet, placerat rutrum nibh. Ut tellus felis, lobortis non accumsan in, sodales non nisi. Morbi non venenatis odio. Etiam vitae fermentum est.',
            'Proin a mi sit amet est condimentum interdum. Fusce id maximus diam. Integer id lacinia quam. Mauris tellus felis, volutpat at turpis nec, tempus facilisis felis. Nulla facilisi. Donec malesuada ante id libero imperdiet, vitae blandit lectus dapibus. Donec fringilla tortor vitae dui commodo lacinia. Nam dictum finibus libero, nec porttitor libero placerat et. Cras nec tristique orci. Donec et commodo velit, at porttitor massa. Mauris rhoncus faucibus faucibus. Nulla vitae mauris et tellus maximus mattis. Sed eu blandit enim.',
            'Proin a mi sit amet est condimentum interdum. Fusce id maximus diam. Integer id lacinia quam. Mauris tellus felis, volutpat at turpis nec, tempus facilisis felis. Nulla facilisi. Donec malesuada ante id libero imperdiet, vitae blandit lectus dapibus. Donec fringilla tortor vitae dui commodo lacinia. Nam dictum finibus libero, nec porttitor libero placerat et. Cras nec tristique orci. Donec et commodo velit, at porttitor massa. Mauris rhoncus faucibus faucibus. Nulla vitae mauris et tellus maximus mattis. Sed eu blandit enim.',
            'images/tokped.png'),
        Job(
            'Customer Service',
            'Bank Bni',
            'Jakarta',
            '1.800.000',
            '15 April 2021',
            ['Full Time', 'SMA'],
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at finibus massa, a scelerisque neque. Etiam rutrum sed arcu eget fringilla. Ut laoreet ullamcorper risus, eu porttitor ligula faucibus euismod. Sed dui quam, pellentesque eu diam sit amet, placerat rutrum nibh. Ut tellus felis, lobortis non accumsan in, sodales non nisi. Morbi non venenatis odio. Etiam vitae fermentum est.',
            'Proin a mi sit amet est condimentum interdum. Fusce id maximus diam. Integer id lacinia quam. Mauris tellus felis, volutpat at turpis nec, tempus facilisis felis. Nulla facilisi. Donec malesuada ante id libero imperdiet, vitae blandit lectus dapibus. Donec fringilla tortor vitae dui commodo lacinia. Nam dictum finibus libero, nec porttitor libero placerat et. Cras nec tristique orci. Donec et commodo velit, at porttitor massa. Mauris rhoncus faucibus faucibus. Nulla vitae mauris et tellus maximus mattis. Sed eu blandit enim.',
            'Proin a mi sit amet est condimentum interdum. Fusce id maximus diam. Integer id lacinia quam. Mauris tellus felis, volutpat at turpis nec, tempus facilisis felis. Nulla facilisi. Donec malesuada ante id libero imperdiet, vitae blandit lectus dapibus. Donec fringilla tortor vitae dui commodo lacinia. Nam dictum finibus libero, nec porttitor libero placerat et. Cras nec tristique orci. Donec et commodo velit, at porttitor massa. Mauris rhoncus faucibus faucibus. Nulla vitae mauris et tellus maximus mattis. Sed eu blandit enim.',
            'images/bni.png'),
        Job(
            'Customer Service',
            'Ruangguru',
            'Jakarta',
            '1.800.000',
            '15 April 2021',
            ['Full Time', 'SMA'],
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis at finibus massa, a scelerisque neque. Etiam rutrum sed arcu eget fringilla. Ut laoreet ullamcorper risus, eu porttitor ligula faucibus euismod. Sed dui quam, pellentesque eu diam sit amet, placerat rutrum nibh. Ut tellus felis, lobortis non accumsan in, sodales non nisi. Morbi non venenatis odio. Etiam vitae fermentum est.',
            'Proin a mi sit amet est condimentum interdum. Fusce id maximus diam. Integer id lacinia quam. Mauris tellus felis, volutpat at turpis nec, tempus facilisis felis. Nulla facilisi. Donec malesuada ante id libero imperdiet, vitae blandit lectus dapibus. Donec fringilla tortor vitae dui commodo lacinia. Nam dictum finibus libero, nec porttitor libero placerat et. Cras nec tristique orci. Donec et commodo velit, at porttitor massa. Mauris rhoncus faucibus faucibus. Nulla vitae mauris et tellus maximus mattis. Sed eu blandit enim.',
            'Proin a mi sit amet est condimentum interdum. Fusce id maximus diam. Integer id lacinia quam. Mauris tellus felis, volutpat at turpis nec, tempus facilisis felis. Nulla facilisi. Donec malesuada ante id libero imperdiet, vitae blandit lectus dapibus. Donec fringilla tortor vitae dui commodo lacinia. Nam dictum finibus libero, nec porttitor libero placerat et. Cras nec tristique orci. Donec et commodo velit, at porttitor massa. Mauris rhoncus faucibus faucibus. Nulla vitae mauris et tellus maximus mattis. Sed eu blandit enim.',
            'images/ruangguru.png'),
      ];
  late String title;
  late String company;
  late String location;
  late String salary;
  late String publishedAt;
  late List<String> category;
  late String description;
  late String syaratUmum;
  late String syaratKhusus;
  late String companyImage;

  Job(
      this.title,
      this.company,
      this.location,
      this.salary,
      this.publishedAt,
      this.category,
      this.description,
      this.syaratUmum,
      this.syaratKhusus,
      this.companyImage);
}
