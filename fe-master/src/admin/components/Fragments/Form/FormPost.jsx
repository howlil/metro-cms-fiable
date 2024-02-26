import s from "./form.module.css";
import InputForm from "../../Elements/Input/Index";
import Button from "../../../../components/Button/Button";

export default function FormPost() {
  return (
    <div className={s.layout}>
      <form action="">
        <InputForm
          label="Judul"
          placeholder="Masukan Nama Kategori"
          htmlFor="judul"
          type="text"
          nama="judul"
        />
        <InputForm nama="slug" label="Slug" htmlFor="slug" type="text" />

        {/* ganti dengan select */}
        <InputForm
          label="Kategori"
          htmlFor="kategori"
          placeholder="Masukan Kategori"
          type="option"
          nama="kategori"
        />
        {/* ganti dengan text area */}

        <InputForm
          label="Body"
          htmlFor="body"
          placeholder=" Masukan isi postingan disini"
          type="textarea"
        />

        <div className={s.btnly}>
          <Button label="Simpan" styleBtn="btnformkategori" />
        </div>
      </form>
    </div>
  );
}