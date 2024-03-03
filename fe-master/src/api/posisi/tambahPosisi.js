const tambahPosisi = async (nama_posisi, slug) => {
    const myHeaders = new Headers();
    const token = localStorage.getItem("authToken");
  
    myHeaders.append("Content-Type", "application/x-www-form-urlencoded");
    myHeaders.append("Authorization", `Bearer ${token}`);
  
    const urlencoded = new URLSearchParams();
    urlencoded.append("nama_posis", nama_posisi);
    urlencoded.append("slug", slug);
  
    const requestOptions = {
      method: "POST",
      headers: myHeaders,
      body: urlencoded,
      redirect: "follow",
    };
  
    fetch(
      "https://28jqlrhg-5000.asse.devtunnels.ms/tambahPosisi",
      requestOptions
    )
      .then((response) => response.json())
      .then((result) => console.log(result));
  };
  
  export default tambahPosisi;
  