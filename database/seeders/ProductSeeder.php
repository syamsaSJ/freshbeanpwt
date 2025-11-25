<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Product;

class ProductSeeder extends Seeder
{
    public function run()
    {
        $products = [
            [
                'name' => 'Arabika Honey Ciwidey 200gr',
                'origin_id' => 16, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Honey Ciwidey dalam kemasan 200 gram, menawarkan rasa madu yang khas.',
                'image' => 'products/images/arabika_honey_ciwidey_200gr.png'
            ],
            [
                'name' => 'Arabika Honey Yellow Ciwidey 200gr',
                'origin_id' => 16, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 75000,
                'description' => 'Kopi Arabika Honey Yellow Ciwidey dalam kemasan 200 gram, dengan rasa dan aroma madu yang cerah.',
                'image' => 'products/images/arabika_honey_yellow_ciwidey_200gr.png'
            ],
            [
                'name' => 'Arabika Ijen Apel Malang 100gr',
                'origin_id' => 17, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 100,
                'satuan' => 'pcs',
                'price' => 38000,
                'description' => 'Kopi Arabika Ijen Apel Malang dalam kemasan 100 gram, dengan sentuhan rasa apel Malang.',
                'image' => 'products/images/arabika_ijen_apel_malang_100gr.png'
            ],
            [
                'name' => 'Arabika Ijen Apel Malang 200gr',
                'origin_id' => 17, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 75000,
                'description' => 'Kopi Arabika Ijen Apel Malang dalam kemasan 200 gram, dengan rasa apel Malang yang lebih dominan.',
                'image' => 'products/images/arabika_ijen_apel_malang_200gr.png'
            ],
            [
                'name' => 'Arabika Ijen Karamela Honey 100gr',
                'origin_id' => 18, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 100,
                'satuan' => 'pcs',
                'price' => 42000,
                'description' => 'Kopi Arabika Ijen Karamela Honey dalam kemasan 100 gram, dengan rasa karamel dan madu yang harmonis.',
                'image' => 'products/images/arabika_ijen_karamela_honey_100gr.png'
            ],
            [
                'name' => 'Arabika Ijen Karamela Honey 200gr',
                'origin_id' => 18, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 80000,
                'description' => 'Kopi Arabika Ijen Karamela Honey dalam kemasan 200 gram, memberikan rasa karamel dan madu yang lebih kuat.',
                'image' => 'products/images/arabika_ijen_karamela_honey_200gr.png'
            ],
            [
                'name' => 'Arabika Ijen Lestari Natural CM 100gr',
                'origin_id' => 19, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 100,
                'satuan' => 'pcs',
                'price' => 55000,
                'description' => 'Kopi Arabika Ijen Lestari Natural CM dalam kemasan 100 gram, menawarkan rasa alami dan aroma yang kaya.',
                'image' => 'products/images/arabika_ijen_lestari_natural_cm_100gr.png'
            ],
            [
                'name' => 'Arabika Ijen Natural Classic 200gr',
                'origin_id' => 19, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Ijen Natural Classic dalam kemasan 200 gram, dengan rasa klasik dan aroma natural.',
                'image' => 'products/images/arabika_ijen_natural_classic_200gr.png'
            ],
            [
                'name' => 'Arabika Ijen honey Madumerah 200gr',
                'origin_id' => 20, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Ijen Honey Madumerah dalam kemasan 200 gram, menawarkan rasa madu merah yang khas.',
                'image' => 'products/images/arabika_ijen_honey_madumerah_200gr.png'
            ],
            [
                'name' => 'Arabika Kaligua Natural 100gr',
                'origin_id' => 21, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 100,
                'satuan' => 'pcs',
                'price' => 37000,
                'description' => 'Kopi Arabika Kaligua Natural dalam kemasan 100 gram, memberikan rasa natural yang segar.',
                'image' => 'products/images/arabika_kaligua_natural_100gr.png'
            ],
            [
                'name' => 'Arabika Kaligua Slamet Natural 200gr',
                'origin_id' => 21, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Kaligua Slamet Natural dalam kemasan 200 gram, dengan rasa dan aroma natural yang kuat.',
                'image' => 'products/images/arabika_kaligua_slamet_natural_200gr.png'
            ],
            [
                'name' => 'Arabika Kamojang Blackhoney 200gr',
                'origin_id' => 22, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Kamojang Blackhoney dalam kemasan 200 gram, menawarkan rasa madu hitam yang kaya.',
                'image' => 'products/images/arabika_kamojang_blackhoney_200gr.png'
            ],
            [
                'name' => 'Arabika Kamojang Madu Hitam Wanoja 200gr',
                'origin_id' => 22, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 75000,
                'description' => 'Kopi Arabika Kamojang Madu Hitam Wanoja dalam kemasan 200 gram, dengan rasa madu hitam yang mendalam.',
                'image' => 'products/images/arabika_kamojang_madu_hitam_wanoja_200gr.png'
            ],
            [
                'name' => 'Arabika Karaha Natural 100gr',
                'origin_id' => 23, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 100,
                'satuan' => 'pcs',
                'price' => 35000,
                'description' => 'Kopi Arabika Karaha Natural dalam kemasan 100 gram, menawarkan rasa alami yang segar.',
                'image' => 'products/images/arabika_karaha_natural_100gr.png'
            ],
            [
                'name' => 'Arabika Karaha Natural 200gr',
                'origin_id' => 23, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 60000,
                'description' => 'Kopi Arabika Karaha Natural dalam kemasan 200 gram, dengan rasa alami yang kuat.',
                'image' => 'products/images/arabika_karaha_natural_200gr.png'
            ],
            [
                'name' => 'Arabika Karamat Nat 200gr',
                'origin_id' => 24, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Karamat Nat dalam kemasan 200 gram, memberikan rasa yang khas dan unik.',
                'image' => 'products/images/arabika_karamat_nat_200gr.png'
            ],
            [
                'name' => 'Arabika Karkobar Banjarnegara 200gr',
                'origin_id' => 25, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Karkobar Banjarnegara dalam kemasan 200 gram, menawarkan rasa dan aroma yang menarik.',
                'image' => 'products/images/arabika_karkobar_banjarnegara_200gr.png'
            ],
            [
                'name' => 'Arabika Kelimutu Turajaji Honey 150gr',
                'origin_id' => 26, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 150,
                'satuan' => 'pcs',
                'price' => 50000,
                'description' => 'Kopi Arabika Kelimutu Turajaji Honey dalam kemasan 150 gram, memberikan rasa madu yang lembut.',
                'image' => 'products/images/arabika_kelimutu_turajaji_honey_150gr.png'
            ],
            [
                'name' => 'Arabika Kelimutu Turajaji Honey 250gr',
                'origin_id' => 26, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 250,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Kelimutu Turajaji Honey dalam kemasan 250 gram, dengan rasa madu yang lebih intens.',
                'image' => 'products/images/arabika_kelimutu_turajaji_honey_250gr.png'
            ],
            [
                'name' => 'Arabika Kenya Kainamui 200gr',
                'origin_id' => 27, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 85000,
                'description' => 'Kopi Arabika Kenya Kainamui dalam kemasan 200 gram, dengan rasa yang kuat dan aroma khas.',
                'image' => 'products/images/arabika_kenya_kainamui_200gr.png'
            ],
            [
                'name' => 'Arabika Kerinci FW 200gr',
                'origin_id' => 28, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Kerinci FW dalam kemasan 200 gram, memberikan rasa yang kaya dan berkarakter.',
                'image' => 'products/images/arabika_kerinci_fw_200gr.png'
            ],
            [
                'name' => 'Arabika Kerinci Natural 100gr',
                'origin_id' => 28, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 100,
                'satuan' => 'pcs',
                'price' => 35000,
                'description' => 'Kopi Arabika Kerinci Natural dalam kemasan 100 gram, menawarkan rasa alami yang segar.',
                'image' => 'products/images/arabika_kerinci_natural_100gr.png'
            ],
            [
                'name' => 'Arabika Kerinci Natural 200gr',
                'origin_id' => 28, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Kerinci Natural dalam kemasan 200 gram, dengan rasa alami yang kuat.',
                'image' => 'products/images/arabika_kerinci_natural_200gr.png'
            ],
            [
                'name' => 'Arabika Kintamani Nat 100gr',
                'origin_id' => 29, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 100,
                'satuan' => 'pcs',
                'price' => 38000,
                'description' => 'Kopi Arabika Kintamani Nat dalam kemasan 100 gram, dengan rasa alami dan aroma segar.',
                'image' => 'products/images/arabika_kintamani_nat_100gr.png'
            ],
            [
                'name' => 'Arabika Kintamani Nat 200gr',
                'origin_id' => 29, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Kintamani Nat dalam kemasan 200 gram, menawarkan rasa alami yang intens.',
                'image' => 'products/images/arabika_kintamani_nat_200gr.png'
            ],
            [
                'name' => 'Arabika Lamuk Sumbing FW 200gr',
                'origin_id' => 30, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Lamuk Sumbing FW dalam kemasan 200 gram, memberikan rasa yang kaya dan kompleks.',
                'image' => 'products/images/arabika_lamuk_sumbing_fw_200gr.png'
            ],
            [
                'name' => 'Arabika Lamuk Sumbing Wine 150gr',
                'origin_id' => 30, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 150,
                'satuan' => 'pcs',
                'price' => 55000,
                'description' => 'Kopi Arabika Lamuk Sumbing Wine dalam kemasan 150 gram, dengan rasa wine yang khas.',
                'image' => 'products/images/arabika_lamuk_sumbing_wine_150gr.png'
            ],
            [
                'name' => 'Arabika Lamuk Sumbing wine 250gr',
                'origin_id' => 30, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 250,
                'satuan' => 'pcs',
                'price' => 75000,
                'description' => 'Kopi Arabika Lamuk Sumbing Wine dalam kemasan 250 gram, menawarkan rasa wine yang lebih dominan.',
                'image' => 'products/images/arabika_lamuk_sumbing_wine_250gr.png'
            ],
            [
                'name' => 'Arabika Lemahsugih Honey 200gr',
                'origin_id' => 31, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 75000,
                'description' => 'Kopi Arabika Lemahsugih Honey dalam kemasan 200 gram, dengan rasa madu yang lembut dan manis.',
                'image' => 'products/images/arabika_lemahsugih_honey_200gr.png'
            ],
            [
                'name' => 'Arabika Lintong Nihuta 100gr',
                'origin_id' => 32, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 100,
                'satuan' => 'pcs',
                'price' => 35000,
                'description' => 'Kopi Arabika Lintong Nihuta dalam kemasan 100 gram, dengan rasa yang kuat dan aroma khas.',
                'image' => 'products/images/arabika_lintong_nihuta_100gr.png'
            ],
            [
                'name' => 'Arabika Lintong Nihuta 200gr',
                'origin_id' => 32, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Lintong Nihuta dalam kemasan 200 gram, memberikan rasa yang kuat dan kompleks.',
                'image' => 'products/images/arabika_lintong_nihuta_200gr.png'
            ],
            [
                'name' => 'Arabika Malabar Blackhoney 200gr',
                'origin_id' => 33, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Malabar Blackhoney dalam kemasan 200 gram, menawarkan rasa madu yang kaya dan kompleks.',
                'image' => 'products/images/arabika_malabar_blackhoney_200gr.png'
            ],
            [
                'name' => 'Arabika Malabar Nat 200gr',
                'origin_id' => 33, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Malabar Nat dalam kemasan 200 gram, memberikan rasa yang khas dan intens.',
                'image' => 'products/images/arabika_malabar_nat_200gr.png'
            ],
            [
                'name' => 'Arabika Mandheling FW 100gr',
                'origin_id' => 34, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 100,
                'satuan' => 'pcs',
                'price' => 35000,
                'description' => 'Kopi Arabika Mandheling FW dalam kemasan 100 gram, menawarkan rasa yang kuat dan berkarakter.',
                'image' => 'products/images/arabika_mandheling_fw_100gr.png'
            ],
            [
                'name' => 'Arabika Mandheling FW 200gr',
                'origin_id' => 34, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Mandheling FW dalam kemasan 200 gram, memberikan rasa yang kuat dan berkarakter.',
                'image' => 'products/images/arabika_mandheling_fw_200gr.png'
            ],
            [
                'name' => 'Arabika Manglayang Blackhoney 200gr',
                'origin_id' => 35, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Manglayang Blackhoney dalam kemasan 200 gram, menawarkan rasa madu yang khas.',
                'image' => 'products/images/arabika_manglayang_blackhoney_200gr.png'
            ],
            [
                'name' => 'Arabika Merapi Natural 150gr',
                'origin_id' => 36, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 150,
                'satuan' => 'pcs',
                'price' => 50000,
                'description' => 'Kopi Arabika Merapi Natural dalam kemasan 150 gram, dengan rasa alami yang lembut.',
                'image' => 'products/images/arabika_merapi_natural_150gr.png'
            ],
            [
                'name' => 'Arabika Merapi Natural 250gr',
                'origin_id' => 36, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 250,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Merapi Natural dalam kemasan 250 gram, menawarkan rasa yang alami dan segar.',
                'image' => 'products/images/arabika_merapi_natural_250gr.png'
            ],
            [
                'name' => 'Arabika Merbabu 150gr',
                'origin_id' => 37, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 150,
                'satuan' => 'pcs',
                'price' => 50000,
                'description' => 'Kopi Arabika Merbabu dalam kemasan 150 gram, memberikan rasa yang lembut dan menyegarkan.',
                'image' => 'products/images/arabika_merbabu_150gr.png'
            ],
            [
                'name' => 'Arabika Merbabu 250gr',
                'origin_id' => 37, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 250,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Merbabu dalam kemasan 250 gram, menawarkan rasa yang lembut dan penuh aroma.',
                'image' => 'products/images/arabika_merbabu_250gr.png'
            ],
            [
                'name' => 'Arabika Pangalengan Honey 200gr',
                'origin_id' => 38, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Pangalengan Honey dalam kemasan 200 gram, memberikan rasa madu yang lembut dan manis.',
                'image' => 'products/images/arabika_pangalengan_honey_200gr.png'
            ],
            [
                'name' => 'Arabika Papandayan FW 150gr',
                'origin_id' => 39, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 150,
                'satuan' => 'pcs',
                'price' => 45000,
                'description' => 'Kopi Arabika Papandayan FW dalam kemasan 150 gram, menawarkan rasa yang khas dan berkualitas.',
                'image' => 'products/images/arabika_papandayan_fw_150gr.png'
            ],
            [
                'name' => 'Arabika Papandayan FW 250gr',
                'origin_id' => 39, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 250,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Papandayan FW dalam kemasan 250 gram, memberikan rasa yang kaya dan berkualitas.',
                'image' => 'products/images/arabika_papandayan_fw_250gr.png'
            ],
            [
                'name' => 'Arabika Papua Lembah Kamu 150gr',
                'origin_id' => 40, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 150,
                'satuan' => 'pcs',
                'price' => 50000,
                'description' => 'Kopi Arabika Papua Lembah Kamu dalam kemasan 150 gram, dengan rasa alami yang segar.',
                'image' => 'products/images/arabika_papua_lembah_kamu_150gr.png'
            ],
            [
                'name' => 'Arabika Papua Lembah Kamu 250gr',
                'origin_id' => 40, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 250,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Papua Lembah Kamu dalam kemasan 250 gram, menawarkan rasa yang alami dan segar.',
                'image' => 'products/images/arabika_papua_lembah_kamu_250gr.png'
            ],
            [
                'name' => 'Arabika Rancaboleng Honey 200gr',
                'origin_id' => 41, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Rancaboleng Honey dalam kemasan 200 gram, memberikan rasa madu yang lembut dan manis.',
                'image' => 'products/images/arabika_rancaboleng_honey_200gr.png'
            ],
            [
                'name' => 'Arabika Rancaboleng Nat 100gr',
                'origin_id' => 41, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 100,
                'satuan' => 'pcs',
                'price' => 38000,
                'description' => 'Kopi Arabika Rancaboleng Nat dalam kemasan 100 gram, dengan rasa yang khas dan segar.',
                'image' => 'products/images/arabika_rancaboleng_nat_100gr.png'
            ],
            [
                'name' => 'Arabika Rancaboleng Nat 200gr',
                'origin_id' => 41, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Rancaboleng Nat dalam kemasan 200 gram, menawarkan rasa yang khas dan menyegarkan.',
                'image' => 'products/images/arabika_rancaboleng_nat_200gr.png'
            ],
            [
                'name' => 'Arabika Rancaboleng Nat 250gr',
                'origin_id' => 41, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 250,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Rancaboleng Nat dalam kemasan 250 gram, memberikan rasa yang kaya dan menyegarkan.',
                'image' => 'products/images/arabika_rancaboleng_nat_250gr.png'
            ],
            [
                'name' => 'Arabika Rancaboleng Nat 500gr',
                'origin_id' => 41, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 500,
                'satuan' => 'pcs',
                'price' => 120000,
                'description' => 'Kopi Arabika Rancaboleng Nat dalam kemasan 500 gram, dengan rasa yang kuat dan berkarakter.',
                'image' => 'products/images/arabika_rancaboleng_nat_500gr.png'
            ],
            [
                'name' => 'Arabika Rancaboleng Red Honey 200gr',
                'origin_id' => 41, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 70000,
                'description' => 'Kopi Arabika Rancaboleng Red Honey dalam kemasan 200 gram, memberikan rasa madu merah yang khas.',
                'image' => 'products/images/arabika_rancaboleng_red_honey_200gr.png'
            ],
            [
                'name' => 'Arabika Rancaboleng Red Honey 250gr',
                'origin_id' => 41, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 250,
                'satuan' => 'pcs',
                'price' => 75000,
                'description' => 'Kopi Arabika Rancaboleng Red Honey dalam kemasan 250 gram, dengan rasa madu merah yang lebih intens.',
                'image' => 'products/images/arabika_rancaboleng_red_honey_250gr.png'
            ],
            [
                'name' => 'Arabika Rancaboleng Red Honey 500gr',
                'origin_id' => 41, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 500,
                'satuan' => 'pcs',
                'price' => 150000,
                'description' => 'Kopi Arabika Rancaboleng Red Honey dalam kemasan 500 gram, menawarkan rasa madu merah yang kaya.',
                'image' => 'products/images/arabika_rancaboleng_red_honey_500gr.png'
            ],
            [
                'name' => 'Arabika Rancaboleng Red Honey 1kg',
                'origin_id' => 41, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 1000,
                'satuan' => 'pcs',
                'price' => 250000,
                'description' => 'Kopi Arabika Rancaboleng Red Honey dalam kemasan 1 kilogram, memberikan rasa madu merah yang intens dan khas.',
                'image' => 'products/images/arabika_rancaboleng_red_honey_1kg.png'
            ],
            [
                'name' => 'Arabika Sumatera Takengon 100gr',
                'origin_id' => 32, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 100,
                'satuan' => 'pcs',
                'price' => 35000,
                'description' => 'Kopi Arabika Sumatera Takengon dalam kemasan 100 gram, dengan rasa yang kuat dan aroma yang khas.',
                'image' => 'products/images/arabika_sumatera_takengon_100gr.png'
            ],
            [
                'name' => 'Arabika Sumatera Takengon 200gr',
                'origin_id' => 31, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 200,
                'satuan' => 'pcs',
                'price' => 65000,
                'description' => 'Kopi Arabika Sumatera Takengon dalam kemasan 200 gram, memberikan rasa yang kuat dan berkarakter.',
                'image' => 'products/images/arabika_sumatera_takengon_200gr.png'
            ],
            [
                'name' => 'Arabika Sumatera Takengon 500gr',
                'origin_id' => 32, // Sesuaikan dengan ID asal yang sesuai
                'category_id' => 1, // Sesuaikan dengan ID kategori yang sesuai
                'weight' => 500,
                'satuan' => 'pcs',
                'price' => 120000,
                'description' => 'Kopi Arabika Sumatera Takengon dalam kemasan 500 gram, memberikan rasa yang kuat dan berkarakter.',
                'image' => 'products/images/arabika_sumatera_takengon_500gr.png'
            ],
        ];
        foreach ($products as $product) {
            Product::create($product);
        }
    }
}
