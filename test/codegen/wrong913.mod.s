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
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v0       <char> %ebp-30 ]
    #    -36(%ebp)   4  [ $v1       <int> %ebp-36 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $1, %eax                #   0:     if     1 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_6_if_false         #   3:     goto   6_if_false
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $98, %eax               #   7:     assign v0 <- 98
    movb    %al, -30(%ebp)         
    jmp     l_f0_8                  #   8:     goto   8
l_f0_8:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $91616, %eax            #  13:     mul    t1 <- 91616, 67746
    movl    $67746, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  14:     div    t2 <- t1, 30519
    movl    $30519, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     div    t3 <- t2, 46225
    movl    $46225, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  16:     sub    t4 <- t3, 97384
    movl    $97384, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  17:     assign v1 <- t4
    movl    %eax, -36(%ebp)        
    jmp     l_f0_15                 #  18:     goto   15
    movl    $1, %eax                #  19:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_16                 #  20:     goto   16
l_f0_15:
    movl    $0, %eax                #  22:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_f0_16:
    movzbl  -29(%ebp), %eax         #  24:     return t5
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
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
    #    -84(%ebp)   4  [ $t3       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t4       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t5       <bool> %ebp-89 ]
    #    -90(%ebp)   1  [ $t6       <bool> %ebp-90 ]
    #    -96(%ebp)   4  [ $t7       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t8       <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t9       <int> %ebp-104 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 2 of <array 10 of <array 6 of <array 10 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 1 of <array 10 of <array 7 of <array 2 of <bool>>>>>>> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $54635, %eax            #   0:     mul    t1 <- 54635, 19157
    movl    $19157, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t2 <- t1, 84196
    movl    $84196, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   2:     add    t3 <- t2, 7210
    movl    $7210, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #   3:     sub    t4 <- t3, 79796
    movl    $79796, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #   4:     return t4
    jmp     l_f1_exit              
    movl    $46622, %eax            #   5:     if     46622 # 87021 goto 2
    movl    $87021, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2                 
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_f1_4                  #   9:     goto   4
l_f1_3:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -89(%ebp)         
l_f1_4:
    movzbl  -89(%ebp), %eax         #  13:     assign v1 <- t5
    movb    %al, 12(%ebp)          
    jmp     l_f1_8                  #  14:     goto   8
    movl    $1, %eax                #  15:     assign t6 <- 1
    movb    %al, -90(%ebp)         
    jmp     l_f1_9                  #  16:     goto   9
l_f1_8:
    movl    $0, %eax                #  18:     assign t6 <- 0
    movb    %al, -90(%ebp)         
l_f1_9:
    movl    $79276, %eax            #  20:     mul    t7 <- 79276, 75729
    movl    $75729, %ebx           
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  21:     div    t8 <- t7, 51475
    movl    $51475, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    $2, %eax                #  22:     param  1 <- 2
    pushl   %eax                   
    movl    20(%ebp), %eax          #  23:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  24:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -104(%ebp)       
    movl    -100(%ebp), %eax        #  25:     mul    t10 <- t8, t9
    movl    -104(%ebp), %ebx       
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     add    t11 <- t10, 77044
    movl    $77044, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  27:     param  1 <- 3
    pushl   %eax                   
    movl    20(%ebp), %eax          #  28:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  29:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  30:     mul    t13 <- t11, t12
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     add    t14 <- t13, 40746
    movl    $40746, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  32:     param  1 <- 4
    pushl   %eax                   
    movl    20(%ebp), %eax          #  33:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  34:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  35:     mul    t16 <- t14, t15
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  36:     add    t17 <- t16, 87908
    movl    $87908, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  37:     param  1 <- 5
    pushl   %eax                   
    movl    20(%ebp), %eax          #  38:     param  0 <- v3
    pushl   %eax                   
    call    DIM                     #  39:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  40:     mul    t19 <- t17, t18
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  41:     add    t20 <- t19, 66095
    movl    $66095, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  42:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    20(%ebp), %eax          #  43:     param  0 <- v3
    pushl   %eax                   
    call    DOFS                    #  44:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  45:     add    t23 <- t21, t22
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    20(%ebp), %eax          #  46:     add    t24 <- v3, t23
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movzbl  -90(%ebp), %eax         #  47:     assign @t24 <- t6
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            

l_f1_exit:
    # epilogue
    addl    $92, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 6 of <array 8 of <array 3 of <array 2 of <bool>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $32372, %eax            #   1:     return 32372
    jmp     l_f2_exit              
    movl    $99, %eax               #   2:     assign v1 <- 99
    movb    %al, -14(%ebp)         
    movl    $63651, %eax            #   3:     return 63651
    jmp     l_f2_exit              
    movl    $37169, %eax            #   4:     if     37169 <= 25596 goto 7_if_true
    movl    $25596, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   5:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_6                  #   7:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $16256, %eax            #  10:     assign v2 <- 16256
    movl    %eax, -20(%ebp)        
    movl    $66327, %eax            #  11:     return 66327
    jmp     l_f2_exit              
    movl    $65702, %eax            #  12:     if     65702 # 20000 goto 13_if_true
    movl    $20000, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  13:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  15:     goto   12
l_f2_14_if_false:
l_f2_12:
    movl    $75272, %eax            #  18:     assign v2 <- 75272
    movl    %eax, -20(%ebp)        
    jmp     l_f2_0                  #  19:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_18_while_cond:
    jmp     l_f2_21                 #  23:     goto   21
    jmp     l_f2_21                 #  24:     goto   21
l_f2_21:
    movl    $1, %eax                #  26:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_23                 #  27:     goto   23
    movl    $0, %eax                #  28:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f2_23:
    movzbl  -13(%ebp), %eax         #  30:     if     t1 # 0 goto 19_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_19_while_body     
    jmp     l_f2_17                 #  31:     goto   17
l_f2_19_while_body:
l_f2_27_while_cond:
    movl    $97, %eax               #  34:     if     97 < 97 goto 28_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_28_while_body     
    jmp     l_f2_26                 #  35:     goto   26
l_f2_28_while_body:
    jmp     l_f2_27_while_cond      #  37:     goto   27_while_cond
l_f2_26:
l_f2_31_while_cond:
    movl    $97, %eax               #  40:     if     97 < 99 goto 32_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_32_while_body     
    jmp     l_f2_30                 #  41:     goto   30
l_f2_32_while_body:
    jmp     l_f2_31_while_cond      #  43:     goto   31_while_cond
l_f2_30:
    movl    $72582, %eax            #  45:     assign v2 <- 72582
    movl    %eax, -20(%ebp)        
l_f2_36_while_cond:
    jmp     l_f2_35                 #  47:     goto   35
    jmp     l_f2_36_while_cond      #  48:     goto   36_while_cond
l_f2_35:
    jmp     l_f2_18_while_cond      #  50:     goto   18_while_cond
l_f2_17:
    movl    $99, %eax               #  52:     assign v1 <- 99
    movb    %al, -14(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
    jmp     l_test_exit            
    movl    $0, %eax                #   1:     assign v0 <- 0
    movb    %al, v0                
    movl    $97, %eax               #   2:     if     97 >= 100 goto 3
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_3               
    jmp     l_test_4                #   3:     goto   4
l_test_3:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_5                #   6:     goto   5
l_test_4:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_5:
    movzbl  -13(%ebp), %eax         #  10:     assign v0 <- t0
    movb    %al, v0                
    movl    $0, %eax                #  11:     assign v0 <- 0
    movb    %al, v0                

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
