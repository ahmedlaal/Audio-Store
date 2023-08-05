List<Map> cart = [
  {
    'id': 1,
    'name': 'speaker',
    'size': 's',
    'color': 'black',
    'price': 1600,
    'image': 'assets/inputimage.png'
  },
  {
    'id': 2,
    'name': 'speaker',
    'size': 's',
    'color': 'black',
    'price': 1600,
    'image': 'assets/inputimage.png'
  },
];

class shipping {
  int id;
  int s_charges;
  int u_charges;
  String u_delivery;
  String s_delivery;
  bool svc_type;
  shipping(this.id, this.s_charges, this.u_charges, this.s_delivery,
      this.u_delivery, this.svc_type);
}

List<shipping> shipp = [
  shipping(1, 0, 100, '6-7', '2-3', true),
];
