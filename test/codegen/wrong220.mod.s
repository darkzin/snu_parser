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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t11 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_4                 
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_4:
    jmp     l_f0_2_if_false         #   4:     goto   2_if_false
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $91346, %eax            #   8:     sub    t12 <- 91346, 71409
    movl    $71409, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t13 <- t12, 20847
    movl    $20847, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     sub    t14 <- t13, 37836
    movl    $37836, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     add    t15 <- t14, 72092
    movl    $72092, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     return t15
    jmp     l_f0_exit              
    movl    $466, %eax              #  13:     if     466 >= 94907 goto 7_if_true
    movl    $94907, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  14:     goto   8_if_false
l_f0_7_if_true:
    movl    $97, %eax               #  16:     if     97 <= 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #  17:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  19:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_16_if_false        #  22:     goto   16_if_false
    jmp     l_f0_14                 #  23:     goto   14
l_f0_16_if_false:
l_f0_14:
    jmp     l_f0_6                  #  26:     goto   6
l_f0_8_if_false:
l_f0_6:

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 2 of <array 7 of <array 8 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 8 of <array 2 of <array 3 of <array 3 of <array 5 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 7 of <array 8 of <array 2 of <array 7 of <int>>>>>>> %ebp+20 ]

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
l_f1_4_while_cond:
    jmp     l_f1_3                  #   1:     goto   3
    jmp     l_f1_4_while_cond       #   2:     goto   4_while_cond
l_f1_3:
    call    dummyCHARfunc           #   4:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_0                  #   5:     goto   0
l_f1_0:
    movl    $4212, %eax             #   7:     return 4212
    jmp     l_f1_exit              
    movl    $7282, %eax             #   8:     return 7282
    jmp     l_f1_exit              
    jmp     l_f1_7                  #   9:     goto   7
l_f1_7:
    call    dummyINTfunc            #  11:     call   t12 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     div    t13 <- t12, 25068
    movl    $25068, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     mul    t14 <- t13, 7465
    movl    $7465, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  14:     return t14
    jmp     l_f1_exit              

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
    #    -13(%ebp)   1  [ $t11      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t12      <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 5 of <array 3 of <array 5 of <array 8 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 10 of <array 5 of <array 7 of <array 10 of <char>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <bool> %ebp-15 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
    jmp     l_f2_9_if_false         #   3:     goto   9_if_false
    jmp     l_f2_7                  #   4:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #  10:     call   t11 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  11:     if     98 <= t11 goto 11
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_11                
    jmp     l_f2_12                 #  12:     goto   12
l_f2_11:
    movl    $1, %eax                #  14:     assign t12 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_13                 #  15:     goto   13
l_f2_12:
    movl    $0, %eax                #  17:     assign t12 <- 0
    movb    %al, -14(%ebp)         
l_f2_13:
    movzbl  -14(%ebp), %eax         #  19:     assign v3 <- t12
    movb    %al, -15(%ebp)         
l_f2_16_while_cond:
    movl    $0, %eax                #  21:     return 0
    jmp     l_f2_exit              
    movl    $0, %eax                #  22:     assign v3 <- 0
    movb    %al, -15(%ebp)         
    jmp     l_f2_16_while_cond      #  23:     goto   16_while_cond

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -21(%ebp)   1  [ $t10      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t2       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t6       <bool> %ebp-41 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $77749, %eax            #   0:     sub    t0 <- 77749, 40435
    movl    $40435, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 54474
    movl    $54474, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 18510
    movl    $18510, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     sub    t3 <- t2, 70694
    movl    $70694, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     add    t4 <- t3, 91446
    movl    $91446, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     sub    t5 <- t4, 82574
    movl    $82574, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     assign v0 <- t5
    movl    %eax, v0               
    jmp     l_test_exit            
l_test_3_while_cond:
    call    dummyBOOLfunc           #   9:     call   t6 <- dummyBOOLfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  10:     if     t6 = 1 goto 4_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_4_while_body    
    jmp     l_test_2                #  11:     goto   2
l_test_4_while_body:
    jmp     l_test_3_while_cond     #  13:     goto   3_while_cond
l_test_2:
    movl    $100, %eax              #  15:     assign v1 <- 100
    movb    %al, v1                
    movl    $89354, %eax            #  16:     mul    t7 <- 89354, 84352
    movl    $84352, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  17:     mul    t8 <- t7, 41280
    movl    $41280, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  18:     mul    t9 <- t8, 9746
    movl    $9746, %ebx            
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  19:     assign v0 <- t9
    movl    %eax, v0               
    call    dummyCHARfunc           #  20:     call   t10 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
