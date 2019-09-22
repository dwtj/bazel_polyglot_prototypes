use myapp_mylib::mymod::MyStruct;
use myapp_mylib::hello;

pub fn main() {
    #[allow(unused_variables)]
    let s = MyStruct {my_field: 0};

    hello();
}
