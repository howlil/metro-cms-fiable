const hapusPosisi = async (id_posisi) => {
    const myHeaders = new Headers();
    const token = localStorage.getItem("authToken");
    myHeaders.append("Authorization", `Bearer ${token}`);
  
    const requestOptions = {
      method: "DELETE",
      headers: myHeaders,
      redirect: "follow",
    };
  
    let del;
    try {
      const response = await fetch(
        `https://28jqlrhg-5000.asse.devtunnels.ms/hapusPosisi/${id_posisi}`,
        requestOptions
      );
      del = await response.json();
      console.log(del.id_posisi);
    } catch (error) {
      console.error(error);
    }
  
    return del;
  };
  
  export default hapusPosisi;
  