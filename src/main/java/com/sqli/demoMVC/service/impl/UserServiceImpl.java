package com.sqli.demoMVC.service.impl;

import com.sqli.demoMVC.service.UserService;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    public String getUsername() {
        String username;
        Object principal= SecurityContextHolder.getContext().getAuthentication().getName();
        username=principal.toString();
        return username;
    }


}
