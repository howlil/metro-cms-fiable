import style from "./layanankami.module.css"
import { Container, Row, Col } from "react-bootstrap"
import { layananKami } from "../../../../data/dataLayanan"

const LayananKami = () => {
    return (
        <div className={style.layananBack}>
          <Container>
            <Row className={style.layanan}>
              <Col>
                <h1>Layanan Kami</h1>
              </Col>
            </Row>
            <Row className={style.layananCard}>
              {layananKami.map ((layanan) => {
                return <Col key={layanan.id}>
                  <img src={layanan.image}></img>
                  <div>
                    <h1>{layanan.title}</h1>
                    <p>{layanan.desc}</p>
                  </div>
                </Col>
              })}
            </Row>
            <Row>
              <div className={style.layananBtn}>
                <a href="/layanan" className={style.btnTertiary}>Selengkapnya</a>
              </div>
            </Row>
          </Container>
        </div>
    )
  }
  
  export default LayananKami