
package MyP;


public class User2 {
        
        private int id;
     	private String ad;
	private String yazar;
	private String ozet;

    /**
     * @return the id
     */
        public User2(int id, String ad, String yazar, String ozet){
            super();
            this.id=id;
            this.ad=ad;
    }
        
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the ad
     */
    public String getAd() {
        return ad;
    }

    /**
     * @param ad the ad to set
     */
    public void setAd(String ad) {
        this.ad = ad;
    }

    /**
     * @return the yazar
     */
    public String getYazar() {
        return yazar;
    }

    /**
     * @param yazar the yazar to set
     */
    public void setYazar(String yazar) {
        this.yazar = yazar;
    }

    /**
     * @return the ozet
     */
    public String getOzet() {
        return ozet;
    }

    /**
     * @param ozet the ozet to set
     */
    public void setOzet(String ozet) {
        this.ozet = ozet;
    }
        
    @Override
	public String toString()
	{
		return super.toString();
	}
}
	


        
