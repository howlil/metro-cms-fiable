import { useState, useEffect } from "react";
import s from "./tabel.module.css";
import TabelAction from "./TabelAction";
import hapusKategori from "../../../../api/kategori/hapusKategori";
import tampilKategori from "../../../../api/kategori/tampilKategori";
import AlertNotif from "../../Elements/Alert/AlertNotif";
import { useNavigate } from "react-router-dom";
import Skeleton from "@mui/material/Skeleton";

export default function TabelKategori() {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [getKategori, setKategori] = useState(null);
  const [kategoriToDelete, setKategoriToDelete] = useState(null);
  const [loading, setLoading] = useState(true); 

  const navigate = useNavigate();

  useEffect(() => {
    const getData = async () => {
      try {
        const data = await tampilKategori();
        setKategori(data.data);
        setLoading(false)
      } catch (error) {
        console.log(error);
        setLoading(false)

      }
    };
    getData();
  }, []);

  const handleDeleter = async (id) => {
    try {
      await hapusKategori(id);
      setKategori(getKategori.filter((cat) => cat.id_kategori !== id));
    } catch (error) {
      console.log(error);
    }
  };

  const showDeleteConfirmation = (id) => {
    setKategoriToDelete(id);
    setIsModalOpen(true);
  };

  return (
    <div className={s.layout}>
      {loading ? (
        <div>
          {Array.from(new Array(5)).map((_, index) => (
            <Skeleton
              key={index}
              variant="rectangular"
              width="100%"
              height={40}
              style={{ marginBottom: 4 }}
            />
          ))}
        </div>
      ): getKategori ? (
        <table className={s.table}>
          <thead>
            <tr>
              <th className={s.nomor}>No</th>
              <th>Kategori</th>
              <th className={s.aksi}>Aksi</th>
            </tr>
          </thead>
          <tbody>
            {getKategori.map((cat, i) => (
              <tr key={cat.id_kategori}>
                <td className={s.no}>{i + 1}</td>
                <td>{cat.nama_kategori}</td>
                <td>
                  <TabelAction
                    onEdit={() =>
                      navigate(`/kategori/editKategori/${cat.id_kategori}`)
                    }
                    onDelete={() => showDeleteConfirmation(cat.id_kategori)}
                  />
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      ) : (
        <div>Belum Ada Data</div>
      )}
      <AlertNotif
        isOpen={isModalOpen}
        onClose={() => setIsModalOpen(false)}
        onConfirm={() => {
          handleDeleter(kategoriToDelete);
          setIsModalOpen(false);
        }}
      />
     
    </div>
  );
}
