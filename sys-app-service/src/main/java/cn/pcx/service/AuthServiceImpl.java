//package cn.pcx.service;
//
//import cn.pcx.token.JwtUser;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.boot.autoconfigure.security.SecurityProperties;
//import org.springframework.security.authentication.AuthenticationManager;
//import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
//import org.springframework.security.core.Authentication;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//
///**
// * Created by pcx.cn on 17/06/08.
// */
//@Service
//public class AuthServiceImpl implements AuthService {
//
//    private AuthenticationManager authenticationManager;
//    private UserDetailsService userDetailsService;
//    private JwtTokenUtil jwtTokenUtil;
//    private UserRepository userRepository;
//
//    @Value("${jwt.tokenHead}")
//    private String tokenHead;
//
//    @Autowired
//    public AuthServiceImpl(
//            AuthenticationManager authenticationManager,
//            UserDetailsService userDetailsService,
//            JwtTokenUtil jwtTokenUtil,
//            UserRepository userRepository) {
//        this.authenticationManager = authenticationManager;
//        this.userDetailsService = userDetailsService;
//        this.jwtTokenUtil = jwtTokenUtil;
//        this.userRepository = userRepository;
//    }
//
//    @Override
//    public SecurityProperties.User register(SecurityProperties.User userToAdd) {
//        final String username = userToAdd.getUsername();
//        if(userRepository.findByUsername(username)!=null) {
//            return null;
//        }
//        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
//        final String rawPassword = userToAdd.getPassword();
//        userToAdd.setPassword(encoder.encode(rawPassword));
//        userToAdd.setLastPasswordResetDate(new Date());
//        userToAdd.setRoles(asList("ROLE_USER"));
//        return userRepository.insert(userToAdd);
//    }
//
//    @Override
//    public String login(String username, String password) {
//        UsernamePasswordAuthenticationToken upToken = new UsernamePasswordAuthenticationToken(username, password);
//        final Authentication authentication = authenticationManager.authenticate(upToken);
//        SecurityContextHolder.getContext().setAuthentication(authentication);
//
//        final UserDetails userDetails = userDetailsService.loadUserByUsername(username);
//        final String token = jwtTokenUtil.generateToken(userDetails);
//        return token;
//    }
//
//    @Override
//    public String refresh(String oldToken) {
//        final String token = oldToken.substring(tokenHead.length());
//        String username = jwtTokenUtil.getUsernameFromToken(token);
//        JwtUser user = (JwtUser) userDetailsService.loadUserByUsername(username);
//        if (jwtTokenUtil.canTokenBeRefreshed(token, user.getLastPasswordResetDate())){
//            return jwtTokenUtil.refreshToken(token);
//        }
//        return null;
//    }
//}
