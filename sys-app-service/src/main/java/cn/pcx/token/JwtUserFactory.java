//package cn.pcx.token;
//
//import cn.pcx.entity.UserEnitiy;
//import org.joda.time.DateTime;
//import org.joda.time.format.DateTimeFormatter;
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//
//import java.util.ArrayList;
//import java.util.List;
//import java.util.stream.Collectors;
//
///**
// * Created by pcx.cn on 17/06/08.
// */
//public class JwtUserFactory {
//
//    private JwtUserFactory() {
//    }
//
//    public static JwtUser create(UserEnitiy user) {
//        return new JwtUser(
//                user.getId(),
//                user.getAccount(),
//                user.getPassword(),
//                user.getRealname(),
//                mapToGrantedAuthorities(new ArrayList<String>() { "USER", "ADMIN" }),
//                DateTime.parse("2017-01-01")
//        );
//    }
//
//    private static List<GrantedAuthority> mapToGrantedAuthorities(List<String> authorities) {
//        return authorities.stream()
//                .map(SimpleGrantedAuthority::new)
//                .collect(Collectors.toList());
//    }
//}
