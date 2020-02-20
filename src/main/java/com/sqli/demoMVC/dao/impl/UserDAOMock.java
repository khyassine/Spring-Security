//package com.sqli.demoMVC.dao.impl;
//
//import java.util.Collection;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
//import org.springframework.security.core.GrantedAuthority;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.stereotype.Component;
//
//import com.sqli.demoMVC.dao.UserDAO;
//import com.sqli.demoMVC.model.User;
//
//@Component("userDetailsService")
//public class UserDAOMock implements UserDetailsService, UserDAO{
//
//	private static Map<String,User> list;
//	
//	static {
//		list = new HashMap <String,User>();
//		list.put("utilisateur", new User("utilisateur","utilisateur","USER"));
//		list.put("administrateur", new User("administrateur","administrateur","ADMIN"));
//	}
//	public UserDetails loadUserByUsername(final String arg0)
//			throws UsernameNotFoundException {
//		if(!list.containsKey(arg0)){
//			throw new UsernameNotFoundException(arg0 + " non trouvé");
//		}
//
//		return new UserDetails() {
//			
//			private static final long serialVersionUID = 2059202961588104658L;
//
//			public boolean isEnabled() {
//				return true;
//			}
//			
//			public boolean isCredentialsNonExpired() {
//				return true;
//			}
//			
//			public boolean isAccountNonLocked() {
//				return true;
//			}
//			
//			public boolean isAccountNonExpired() {
//				return true;
//			}
//			
//			public String getUsername() {
//				return list.get(arg0).getUserName();
//			}
//			
//			public String getPassword() {
//				return list.get(arg0).getPassword();
//			}
//			
//			public Collection<? extends GrantedAuthority> getAuthorities() {
//				List<SimpleGrantedAuthority> auths = new java.util.ArrayList<SimpleGrantedAuthority>();
//				auths.add(new SimpleGrantedAuthority(list.get(arg0).getRole()));
//				return auths;
//			}
//		};						
//	}
//
//}