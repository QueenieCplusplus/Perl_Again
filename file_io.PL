# 2020, 4/05, sun, am 11:15
# File 
# above v 5.6, Ｐerl 可用檔案代號參照開啟純量資料

# 使用檔案代號參照開啟純量資料，並且寫入或讀出字串
# open 為檔案代號
# $string_fh 檔案代號參照

open my $string_fh, '>', \ my $string;

# add in Save status feature

use somefile

open my $string_fh, '>', \ my $string;
somefile -> save($string_fh)

# to send data to 檔案代號 using nstore_fd

use Storable;

open my $string_fh, '>', \ my $string;
nstore_fd \@data, $string_fh;

# flexible way to define data type as file, socket, or string.

sub output2fh {
    my( $fh, @data ) = @_;
    print $fh @data;
}

# when specifying the datatype of output

sub toString {
    my ( @data ) = @_;
    open my $string_fh, '>', \ my $sting;
    output2fh($string_fh, @data);
    $string;
}
