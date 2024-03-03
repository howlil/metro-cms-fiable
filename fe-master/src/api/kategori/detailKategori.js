const detailKategori = async ( id_kategori) => {
    const myHeaders = new Headers();
    const token = localStorage.getItem("authToken");
    myHeaders.append("Authorization", `Bearer ${token}`);
  
    const requestOptions = {
        method: "GET",
        headers: myHeaders,
        redirect: "follow"
      };
      
    try {
      const response = await fetch(
        `https://28jqlrhg-5000.asse.devtunnels.ms/detailKategori/${id_kategori}`,
        requestOptions
      );
      const result = await response.json();
      console.log(result);
      return result;
    } catch (error) {
      console.error("Error:", error);
      return null;
    }
  };
  export default detailKategori;
  