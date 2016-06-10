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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t14      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t15      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t16      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t17      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t18      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t19      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t2       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t20      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t21      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t22      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t23      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t24      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t25      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t26      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t27      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t3       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t4       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t5       <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t6       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t7       <int> %ebp-112 ]
    #   -116(%ebp)   4  [ $t8       <int> %ebp-116 ]
    #   -120(%ebp)   4  [ $t9       <int> %ebp-120 ]
    #      8(%ebp)   1  [ %v3       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v6       <ptr(4) to <array 95 of <array 68 of <array 87 of <array 25 of <array 78 of <int>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $108, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $27, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_f0_exit              
    movl    $21798, %eax            #   1:     add    t1 <- 21798, 34891
    movl    $34891, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t2 <- t1, 59143
    movl    $59143, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   3:     add    t3 <- t2, 56137
    movl    $56137, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #   4:     sub    t4 <- t3, 85962
    movl    $85962, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -100(%ebp)       
    movl    -100(%ebp), %eax        #   5:     add    t5 <- t4, 49270
    movl    $49270, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    $70021, %eax            #   6:     if     70021 > t5 goto 2_if_true
    movl    -104(%ebp), %ebx       
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   7:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $41764, %eax            #  12:     mul    t6 <- 41764, 21673
    movl    $21673, %ebx           
    imull   %ebx                   
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #  13:     div    t7 <- t6, 98128
    movl    $98128, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -112(%ebp)       
    movl    -112(%ebp), %eax        #  14:     div    t8 <- t7, 45827
    movl    $45827, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -116(%ebp)       
    movl    -116(%ebp), %eax        #  15:     div    t9 <- t8, 34073
    movl    $34073, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  16:     mul    t10 <- t9, 40797
    movl    $40797, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  17:     div    t11 <- t10, 46580
    movl    $46580, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $2, %eax                #  18:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  19:     param  0 <- v6
    pushl   %eax                   
    call    DIM                     #  20:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  21:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  22:     add    t14 <- t13, 20298
    movl    $20298, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  23:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  24:     param  0 <- v6
    pushl   %eax                   
    call    DIM                     #  25:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  26:     mul    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  27:     add    t17 <- t16, 77762
    movl    $77762, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $4, %eax                #  28:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  29:     param  0 <- v6
    pushl   %eax                   
    call    DIM                     #  30:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  31:     mul    t19 <- t17, t18
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  32:     add    t20 <- t19, 66062
    movl    $66062, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $5, %eax                #  33:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  34:     param  0 <- v6
    pushl   %eax                   
    call    DIM                     #  35:     call   t21 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  36:     mul    t22 <- t20, t21
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  37:     add    t23 <- t22, 20540
    movl    $20540, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  38:     mul    t24 <- t23, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -80(%ebp)        
    movl    20(%ebp), %eax          #  39:     param  0 <- v6
    pushl   %eax                   
    call    DOFS                    #  40:     call   t25 <- DOFS
    addl    $4, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  41:     add    t26 <- t24, t25
    movl    -84(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    20(%ebp), %eax          #  42:     add    t27 <- v6, t26
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    $48685, %eax            #  43:     assign @t27 <- 48685
    movl    -92(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $108, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v3       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]
    #    -28(%ebp)   4  [ $v5       <int> %ebp-28 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $2783, %eax             #   1:     div    t2 <- 2783, t1
    movl    -16(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v5 <- t2
    movl    %eax, -28(%ebp)        
    jmp     l_f1_5                  #   3:     goto   5
l_f1_5:
    jmp     l_f1_3                  #   5:     goto   3
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_4                  #   7:     goto   4
l_f1_3:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f1_4:
    movzbl  -21(%ebp), %eax         #  11:     return t3
    jmp     l_f1_exit              
l_f1_8_while_cond:
    jmp     l_f1_9_while_body       #  13:     goto   9_while_body
    jmp     l_f1_9_while_body       #  14:     goto   9_while_body
    jmp     l_f1_9_while_body       #  15:     goto   9_while_body
l_f1_9_while_body:
l_f1_14_while_cond:
    movl    $97, %eax               #  18:     if     97 > 98 goto 15_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_15_while_body     
    jmp     l_f1_13                 #  19:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  21:     goto   14_while_cond
l_f1_13:
    jmp     l_f1_8_while_cond       #  23:     goto   8_while_cond

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $100, %eax              #   0:     if     100 <= 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $97, %eax               #   3:     if     97 <= 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #   6:     goto   4
l_f2_6_if_false:
l_f2_4:
l_f2_9_while_cond:
    jmp     l_f2_9_while_cond       #  10:     goto   9_while_cond
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_13_if_false        #  14:     goto   13_if_false
    jmp     l_f2_11                 #  15:     goto   11
l_f2_13_if_false:
l_f2_11:
    movl    $100, %eax              #  18:     return 100
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $97, %eax               #   1:     assign v0 <- 97
    movb    %al, v0                
    movl    $15549, %eax            #   2:     assign v1 <- 15549
    movl    %eax, v1               
    jmp     l_test_0                #   3:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $97, %eax               #   6:     if     97 <= 99 goto 6_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
l_test_10_while_cond:
    jmp     l_test_10_while_cond    #  10:     goto   10_while_cond
    movl    $0, %eax                #  11:     assign v2 <- 0
    movb    %al, v2                
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  13:     goto   14_while_cond
    movl    $43486, %eax            #  14:     assign v1 <- 43486
    movl    %eax, v1               
    call    WriteLn                 #  15:     call   WriteLn
    movl    $98, %eax               #  16:     if     98 < 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_19_if_true      
    jmp     l_test_20_if_false      #  17:     goto   20_if_false
l_test_19_if_true:
    jmp     l_test_18               #  19:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $36852, %eax            #  22:     assign v1 <- 36852
    movl    %eax, v1               
    jmp     l_test_5                #  23:     goto   5
l_test_7_if_false:
l_test_5:
l_test_24_while_cond:
    movl    $44846, %eax            #  27:     if     44846 <= 14243 goto 25_while_body
    movl    $14243, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_25_while_body   
    jmp     l_test_23               #  28:     goto   23
l_test_25_while_body:
    movl    $17244, %eax            #  30:     if     17244 # 64832 goto 28
    movl    $64832, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_28              
    jmp     l_test_29               #  31:     goto   29
l_test_28:
    movl    $1, %eax                #  33:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_30               #  34:     goto   30
l_test_29:
    movl    $0, %eax                #  36:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_30:
    movzbl  -13(%ebp), %eax         #  38:     assign v2 <- t0
    movb    %al, v2                
    jmp     l_test_24_while_cond    #  39:     goto   24_while_cond
l_test_23:
l_test_33_while_cond:
    movl    $98, %eax               #  42:     if     98 = 98 goto 34_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_34_while_body   
    jmp     l_test_32               #  43:     goto   32
l_test_34_while_body:
    jmp     l_test_33_while_cond    #  45:     goto   33_while_cond
l_test_32:
l_test_38_while_cond:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_38_while_cond    #  50:     goto   38_while_cond

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
