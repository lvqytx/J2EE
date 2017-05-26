package team.j2ee.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

public class RandImgCreater {

	@SuppressWarnings("unused")
	private static final String CODE_LIST = "ABCDEFGHJKLMNPQRSTUVWXYZabcdefghjkmnopqrstuvwxyz23456789";
    private HttpServletResponse response;
    @SuppressWarnings("unused")
	private static final int HEIGHT = 20;
    @SuppressWarnings("unused")
	private static final int FONT_NUM = 4;
    private int width;
    private int iNum;
    private String codeList;
    private boolean drawBgFlag;
    private int rBg;
    private int gBg;
    private int bBg;

    public RandImgCreater(HttpServletResponse response)
    {
        this.response = null;
        width = 0;
        iNum = 0;
        codeList = "";
        drawBgFlag = false;
        rBg = 0;
        gBg = 0;
        bBg = 0;
        this.response = response;
        width = 64;
        iNum = 4;
        codeList = "ABCDEFGHJKLMNPQRSTUVWXYZabcdefghjkmnopqrstuvwxyz23456789";
    }

    public RandImgCreater(HttpServletResponse response, int iNum, String codeList)
    {
        this.response = null;
        width = 0;
        this.iNum = 0;
        this.codeList = "";
        drawBgFlag = false;
        rBg = 0;
        gBg = 0;
        bBg = 0;
        this.response = response;
        width = 13 * iNum + 12;
        this.iNum = iNum;
        this.codeList = codeList;
    }

    public String createRandImage()
    {
        BufferedImage image = new BufferedImage(width, 20, 1);
        Graphics g = image.getGraphics();
        Random random = new Random();
        if (drawBgFlag)
        {
            g.setColor(new Color(rBg, gBg, bBg));
            g.fillRect(0, 0, width, 20);
        } else
        {
            g.setColor(getRandColor(200, 250));
            g.fillRect(0, 0, width, 20);
            for (int i = 0; i < 155; i++)
            {
                g.setColor(getRandColor(140, 200));
                int x = random.nextInt(width);
                int y = random.nextInt(20);
                int xl = random.nextInt(12);
                int yl = random.nextInt(12);
                g.drawLine(x, y, x + xl, y + yl);
            }

        }
        g.setFont(new Font("Times New Roman", 0, 18));
        String sRand = "";
        for (int i = 0; i < iNum; i++)
        {
            int rand = random.nextInt(codeList.length());
            String strRand = codeList.substring(rand, rand + 1);
            sRand = (new StringBuilder(String.valueOf(sRand))).append(strRand).toString();
            g.setColor(new Color(20 + random.nextInt(110), 20 + random.nextInt(110), 20 + random.nextInt(110)));
            g.drawString(strRand, 13 * i + 6, 16);
        }

        g.dispose();
        try
        {
            ImageIO.write(image, "JPEG", response.getOutputStream());
        }
        catch (IOException ioexception) { }
        return sRand;
    }

    public void setBgColor(int r, int g, int b)
    {
        drawBgFlag = true;
        rBg = r;
        gBg = g;
        bBg = b;
    }

    private Color getRandColor(int fc, int bc)
    {
        Random random = new Random();
        if (fc > 255)
            fc = 255;
        if (bc > 255)
            bc = 255;
        int r = fc + random.nextInt(bc - fc);
        int g = fc + random.nextInt(bc - fc);
        int b = fc + random.nextInt(bc - fc);
        return new Color(r, g, b);
    }
}
