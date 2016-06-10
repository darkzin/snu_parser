##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t3       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t4       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t5       <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t6       <char> %ebp-81 ]
    #    -88(%ebp)   4  [ $t7       <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t8       <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t9       <int> %ebp-96 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 46 of <array 35 of <array 77 of <array 59 of <array 70 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $84, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $21, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $80783, %eax            #   1:     if     80783 = 60991 goto 4_if_true
    movl    $60991, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_4_if_true         
    jmp     l_f0_5_if_false         #   2:     goto   5_if_false
l_f0_4_if_true:
    jmp     l_f0_7                  #   4:     goto   7
l_f0_7:
    movl    $100, %eax              #   6:     if     100 >= 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #   7:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #   9:     goto   10
l_f0_12_if_false:
l_f0_10:
l_f0_15_while_cond:
    movl    $49742, %eax            #  13:     if     49742 > 29155 goto 16_while_body
    movl    $29155, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_16_while_body     
    jmp     l_f0_14                 #  14:     goto   14
l_f0_16_while_body:
    jmp     l_f0_15_while_cond      #  16:     goto   15_while_cond
l_f0_14:
    jmp     l_f0_3                  #  18:     goto   3
l_f0_5_if_false:
l_f0_3:
    jmp     l_f0_0                  #  21:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyINTfunc            #  24:     call   t3 <- dummyINTfunc
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  25:     div    t4 <- t3, 90287
    movl    $90287, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  26:     div    t5 <- t4, 48027
    movl    $48027, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  27:     return t5
    jmp     l_f0_exit              
    call    dummyCHARfunc           #  28:     call   t6 <- dummyCHARfunc
    movb    %al, -81(%ebp)         
    movl    $2, %eax                #  29:     param  1 <- 2
    pushl   %eax                   
    movl    16(%ebp), %eax          #  30:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  31:     call   t7 <- DIM
    addl    $8, %esp               
    movl    %eax, -88(%ebp)        
    movl    $91986, %eax            #  32:     mul    t8 <- 91986, t7
    movl    -88(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    movl    $96301, %eax            #  33:     sub    t9 <- 96301, 62745
    movl    $62745, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -92(%ebp), %eax         #  34:     add    t10 <- t8, t9
    movl    -96(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $3, %eax                #  35:     param  1 <- 3
    pushl   %eax                   
    movl    16(%ebp), %eax          #  36:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  37:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  38:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  39:     add    t13 <- t12, 357
    movl    $357, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $4, %eax                #  40:     param  1 <- 4
    pushl   %eax                   
    movl    16(%ebp), %eax          #  41:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  42:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  43:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  44:     add    t16 <- t15, 9847
    movl    $9847, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $5, %eax                #  45:     param  1 <- 5
    pushl   %eax                   
    movl    16(%ebp), %eax          #  46:     param  0 <- v4
    pushl   %eax                   
    call    DIM                     #  47:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  48:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  49:     add    t19 <- t18, 1018
    movl    $1018, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  50:     mul    t20 <- t19, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    16(%ebp), %eax          #  51:     param  0 <- v4
    pushl   %eax                   
    call    DOFS                    #  52:     call   t21 <- DOFS
    addl    $4, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  53:     add    t22 <- t20, t21
    movl    -60(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    16(%ebp), %eax          #  54:     add    t23 <- v4, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movzbl  -81(%ebp), %eax         #  55:     assign @t23 <- t6
    movl    -68(%ebp), %edi        
    movb    %al, (%edi)            

l_f0_exit:
    # epilogue
    addl    $84, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 66 of <array 95 of <array 33 of <array 47 of <array 99 of <int>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $v4       <bool> %ebp-21 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $24553, %eax            #   0:     assign v3 <- 24553
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #   1:     if     0 = 0 goto 5
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5                 
    jmp     l_f1_6                  #   2:     goto   6
l_f1_5:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   5:     goto   7
l_f1_6:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #   9:     assign v4 <- t3
    movb    %al, -21(%ebp)         
    jmp     l_f1_0                  #  10:     goto   0
l_f1_0:
    jmp     l_f1_exit              
    movl    $86838, %eax            #  13:     if     86838 > 64282 goto 11_if_true
    movl    $64282, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  14:     goto   12_if_false
l_f1_11_if_true:
l_f1_15_while_cond:
    jmp     l_f1_14                 #  17:     goto   14
    jmp     l_f1_15_while_cond      #  18:     goto   15_while_cond
l_f1_14:
    jmp     l_f1_10                 #  20:     goto   10
l_f1_12_if_false:
l_f1_10:

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 46 of <array 35 of <array 77 of <array 59 of <array 70 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t7       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t8       <char> %ebp-26 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 13 of <array 56 of <array 84 of <array 27 of <array 47 of <char>>>>>>> %ebp+16 ]
    #   -511996152(%ebp)  511996124  [ $v5       <array 46 of <array 35 of <array 77 of <array 59 of <array 70 of <char>>>>>> %ebp-511996152 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $511996140, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $127999035, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-511996152(%ebp)     # local array 'v5': 5 dimensions
    movl    $46,-511996148(%ebp)    #   dimension 1: 46 elements
    movl    $35,-511996144(%ebp)    #   dimension 2: 35 elements
    movl    $77,-511996140(%ebp)    #   dimension 3: 77 elements
    movl    $59,-511996136(%ebp)    #   dimension 4: 59 elements
    movl    $70,-511996132(%ebp)    #   dimension 5: 70 elements

    # function body
    movl    $98, %eax               #   0:     param  3 <- 98
    pushl   %eax                   
    leal    -511996152(%ebp), %eax  #   1:     &()    t3 <- v5
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  2 <- t3
    pushl   %eax                   
    movl    $88524, %eax            #   3:     param  1 <- 88524
    pushl   %eax                   
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     if     t4 # 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1                 
    jmp     l_f2_2                  #   6:     goto   2
l_f2_1:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_3                  #   9:     goto   3
l_f2_2:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f2_3:
    movzbl  -18(%ebp), %eax         #  13:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  14:     call   t6 <- f0
    addl    $16, %esp              
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #  15:     call   t7 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  16:     return t7
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  17:     call   t8 <- dummyCHARfunc
    movb    %al, -26(%ebp)         

l_f2_exit:
    # epilogue
    addl    $511996140, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    movl    $97, %eax               #   1:     if     97 <= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    movl    $100, %eax              #   5:     if     100 = 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
l_test_4:
    jmp     l_test_exit            
    movl    $99, %eax               #  11:     assign v0 <- 99
    movb    %al, v0                
    movl    $0, %eax                #  12:     assign v1 <- 0
    movb    %al, v1                
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  14:     goto   12_while_cond
    jmp     l_test_1_while_cond     #  15:     goto   1_while_cond
l_test_0:
l_test_15_while_cond:
    movl    $61266, %eax            #  18:     mul    t0 <- 61266, 56946
    movl    $56946, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     add    t1 <- t0, 12897
    movl    $12897, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     if     t1 = 35687 goto 16_while_body
    movl    $35687, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_16_while_body   
    jmp     l_test_14               #  21:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  23:     goto   15_while_cond
l_test_14:
l_test_19_while_cond:
    jmp     l_test_20_while_body    #  26:     goto   20_while_body
    jmp     l_test_18               #  27:     goto   18
l_test_20_while_body:
    jmp     l_test_24_if_false      #  29:     goto   24_if_false
    jmp     l_test_22               #  30:     goto   22
l_test_24_if_false:
l_test_22:
    jmp     l_test_19_while_cond    #  33:     goto   19_while_cond
l_test_18:
    movl    $0, %eax                #  35:     assign v1 <- 0
    movb    %al, v1                
l_test_27_while_cond:
    movl    $3887, %eax             #  37:     sub    t2 <- 3887, 60088
    movl    $60088, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  38:     if     t2 <= 78836 goto 28_while_body
    movl    $78836, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_28_while_body   
    jmp     l_test_26               #  39:     goto   26
l_test_28_while_body:
l_test_31_while_cond:
    movl    $9803, %eax             #  42:     if     9803 < 76742 goto 32_while_body
    movl    $76742, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_32_while_body   
    jmp     l_test_30               #  43:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  45:     goto   31_while_cond
l_test_30:
    jmp     l_test_36_if_false      #  47:     goto   36_if_false
    jmp     l_test_34               #  48:     goto   34
l_test_36_if_false:
l_test_34:
    jmp     l_test_37               #  51:     goto   37
l_test_37:
    jmp     l_test_27_while_cond    #  53:     goto   27_while_cond
l_test_26:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
