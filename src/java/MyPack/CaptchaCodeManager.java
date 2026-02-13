
package MyPack;

public class CaptchaCodeManager
{
    public String CaptchaCode()
    {
        char c1,c2,c3,c4,c5,c6;
        String text="ABCDEFGHIJKLMOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz123456789";
        int l1=(int)(Math.random()*text.length());
        c1=text.charAt(l1);
         int l2=(int)(Math.random()*text.length());
        c2=text.charAt(l2);
         int l3=(int)(Math.random()*text.length());
        c3=text.charAt(l3);
         int l4=(int)(Math.random()*text.length());
        c4=text.charAt(l4);
         int l5=(int)(Math.random()*text.length());
        c5=text.charAt(l5);
         int l6=(int)(Math.random()*text.length());
        c6=text.charAt(l6);
        String cph=c1+""+c2+""+c3+""+c4+""+c5+""+c6;
        return cph;
    }
}
