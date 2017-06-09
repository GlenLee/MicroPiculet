package cn.pcx.token;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.joda.time.DateTime;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by dell on 17/06/07.
 */
public class JwtKit {

    /**
     * 密钥，应可配置
     */
    private final String secret = "pcx.cn";

    /**
     * 生成令牌
     * @param claims
     * @return
     */
    public String generateToken(Map<String, Object> claims) {
        return Jwts.builder()
                .setClaims(claims)
                .setExpiration(generateExpirationDate())
                .signWith(SignatureAlgorithm.HS256, secret)
                .compact();
    }

    /**
     * 生成过期时间
     * @return
     */
    private Date generateExpirationDate() {
        return DateTime.now().plusDays(30).toDate();
    }

    /**
     * 生成令牌参数
     * @param account
     * @param password
     * @return
     */
    public Map<String, Object> generateClaims(String account, String password) {
        Map<String, Object> claims = new HashMap<String, Object>();
        claims.put("account", account);
        claims.put("password", password);
        return claims;
    }

    /**
     * 根据令牌解析出值
     * @param token
     * @return
     */
    public Claims getClaimsFromToken(String token) {
        Claims claims;
        try {
            claims = Jwts.parser()
                    .setSigningKey(secret)
                    .parseClaimsJws(token)
                    .getBody();
        } catch (Exception e) {
            claims = null;
        }
        return claims;
    }
}
