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
    #    -33(%ebp)   1  [ $t4       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 29 of <array 55 of <array 69 of <array 21 of <array 76 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 12 of <array 77 of <array 3 of <array 15 of <array 90 of <int>>>>>>> %ebp+12 ]
    #    -57(%ebp)   1  [ $v3       <char> %ebp-57 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movl    $1036, %eax             #   1:     div    t5 <- 1036, 66059
    movl    $66059, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     mul    t6 <- t5, 96692
    movl    $96692, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     div    t7 <- t6, 23668
    movl    $23668, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   4:     mul    t8 <- t7, 7494
    movl    $7494, %ebx            
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   5:     mul    t9 <- t8, 18848
    movl    $18848, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #   6:     mul    t10 <- t9, 89648
    movl    $89648, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   7:     div    t11 <- t10, 87141
    movl    $87141, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     add    t12 <- t11, 6642
    movl    $6642, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     add    t13 <- t12, 32451
    movl    $32451, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     sub    t14 <- t13, 80777
    movl    $80777, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  11:     param  0 <- t14
    pushl   %eax                   
    call    WriteInt                #  12:     call   WriteInt
    addl    $4, %esp               
    movl    $98, %eax               #  13:     assign v3 <- 98
    movb    %al, -57(%ebp)         

l_f0_exit:
    # epilogue
    addl    $48, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v1       <bool> %ebp-18 ]

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
    call    ReadInt                 #   0:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     if     t4 < 57222 goto 1_if_true
    movl    $57222, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $0, %eax                #   7:     if     0 = 1 goto 5_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   8:     goto   6_if_false
l_f1_5_if_true:
    movl    $35060, %eax            #  10:     return 35060
    jmp     l_f1_exit              
    jmp     l_f1_4                  #  11:     goto   4
l_f1_6_if_false:
l_f1_4:
    movl    $85712, %eax            #  14:     return 85712
    jmp     l_f1_exit              
    jmp     l_f1_15                 #  15:     goto   15
    movl    $1, %eax                #  16:     assign t5 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_16                 #  17:     goto   16
l_f1_15:
    movl    $0, %eax                #  19:     assign t5 <- 0
    movb    %al, -17(%ebp)         
l_f1_16:
    movzbl  -17(%ebp), %eax         #  21:     assign v1 <- t5
    movb    %al, -18(%ebp)         
    jmp     l_f1_9                  #  22:     goto   9
l_f1_9:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 12 of <array 77 of <array 3 of <array 15 of <array 90 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <ptr(4) to <array 29 of <array 55 of <array 69 of <array 21 of <array 76 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <char> %ebp-33 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 82 of <array 63 of <array 84 of <array 99 of <array 73 of <char>>>>>>> %ebp+8 ]
    #    -48(%ebp)   4  [ $v2       <int> %ebp-48 ]
    #   -175647852(%ebp)  175647804  [ $v3       <array 29 of <array 55 of <array 69 of <array 21 of <array 76 of <char>>>>>> %ebp-175647852 ]
    #   -190616676(%ebp)  14968824  [ $v4       <array 12 of <array 77 of <array 3 of <array 15 of <array 90 of <int>>>>>> %ebp-190616676 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $190616664, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $47654166, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-175647852(%ebp)     # local array 'v3': 5 dimensions
    movl    $29,-175647848(%ebp)    #   dimension 1: 29 elements
    movl    $55,-175647844(%ebp)    #   dimension 2: 55 elements
    movl    $69,-175647840(%ebp)    #   dimension 3: 69 elements
    movl    $21,-175647836(%ebp)    #   dimension 4: 21 elements
    movl    $76,-175647832(%ebp)    #   dimension 5: 76 elements
    movl    $5,-190616676(%ebp)     # local array 'v4': 5 dimensions
    movl    $12,-190616672(%ebp)    #   dimension 1: 12 elements
    movl    $77,-190616668(%ebp)    #   dimension 2: 77 elements
    movl    $3,-190616664(%ebp)     #   dimension 3: 3 elements
    movl    $15,-190616660(%ebp)    #   dimension 4: 15 elements
    movl    $90,-190616656(%ebp)    #   dimension 5: 90 elements

    # function body
    movl    $80190, %eax            #   0:     sub    t4 <- 80190, 9101
    movl    $9101, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     assign v2 <- t4
    movl    %eax, -48(%ebp)        
    leal    -190616676(%ebp), %eax  #   2:     &()    t5 <- v4
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     param  1 <- t5
    pushl   %eax                   
    leal    -175647852(%ebp), %eax  #   4:     &()    t6 <- v3
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #   6:     call   t7 <- f0
    addl    $8, %esp               
    movb    %al, -33(%ebp)         
l_f2_3_while_cond:
    movl    $42164, %eax            #   8:     add    t8 <- 42164, 85342
    movl    $85342, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     add    t9 <- t8, 40122
    movl    $40122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  10:     add    t10 <- t9, 55062
    movl    $55062, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $68871, %eax            #  11:     add    t11 <- 68871, 85962
    movl    $85962, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  12:     if     t10 > t11 goto 4_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_4_while_body      
    jmp     l_f2_2                  #  13:     goto   2
l_f2_4_while_body:
    jmp     l_f2_3_while_cond       #  15:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $190616664, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 12 of <array 77 of <array 3 of <array 15 of <array 90 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 29 of <array 55 of <array 69 of <array 21 of <array 76 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <char> %ebp-25 ]

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    jmp     l_test_3                #   3:     goto   3
    jmp     l_test_4_while_cond     #   4:     goto   4_while_cond
l_test_3:
    movl    $25982, %eax            #   6:     assign v0 <- 25982
    movl    %eax, v0               
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    movl    $28482, %eax            #   9:     if     28482 <= 56591 goto 8_if_true
    movl    $56591, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_8_if_true       
    jmp     l_test_9_if_false       #  10:     goto   9_if_false
l_test_8_if_true:
    call    ReadInt                 #  12:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    WriteLn                 #  13:     call   WriteLn
    movl    $54621, %eax            #  14:     if     54621 > 56829 goto 14_if_true
    movl    $56829, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_14_if_true      
    jmp     l_test_15_if_false      #  15:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  17:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_7                #  20:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $0, %eax                #  23:     assign v1 <- 0
    movb    %al, v1                
l_test_19_while_cond:
    leal    v3, %eax                #  25:     &()    t1 <- v3
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     param  1 <- t1
    pushl   %eax                   
    leal    v2, %eax                #  27:     &()    t2 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #  29:     call   t3 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  30:     if     t3 # 98 goto 20_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_20_while_body   
    jmp     l_test_18               #  31:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  33:     goto   19_while_cond
l_test_18:
    movl    $0, %eax                #  35:     assign v1 <- 0
    movb    %al, v1                

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v0:                                 # <int>
    .skip    4
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 29 of <array 55 of <array 69 of <array 21 of <array 76 of <char>>>>>>
    .long    5
    .long   29
    .long   55
    .long   69
    .long   21
    .long   76
    .skip 175647780
v3:                                 # <array 12 of <array 77 of <array 3 of <array 15 of <array 90 of <int>>>>>>
    .long    5
    .long   12
    .long   77
    .long    3
    .long   15
    .long   90
    .skip 14968800








    # end of global data section
    #-----------------------------------------

    .end
##################################################
