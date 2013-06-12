/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package MyP;

/**
 *
 * @author aolmez
 */
public class User {
    
    	private String Ad;
	private String Soyad;
	private String KullaniciAdi;
	
	
	

        /**
        * @return the Ad
        */
        public String getAd() {
            return Ad;
        }

        /**
        * @param Ad the Ad to set
        */
        public void setAd(String Ad) {
            this.Ad = Ad;
        }

        /**
        * @return the Soyad
        */
        public String getSoyad() {
            return Soyad;
        }

        /**
        * @param Soyad the Soyad to set
        */
        public void setSoyad(String Soyad) {
            this.Soyad = Soyad;
        }

        /**
        * @return the KullaniciAdi
        */
        public String getKullaniciAdi() {
            return KullaniciAdi;
        }

        /**
        * @param KullaniciAdi the KullaniciAdi to set
        */
        public void setKullaniciAdi(String KullaniciAdi) {
            this.KullaniciAdi = KullaniciAdi;
        }
        
        @Override
	public String toString()
	{
		return 	"Hosgeldin" + getAd();
	}
    
}
