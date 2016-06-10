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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 44 of <array 40 of <array 35 of <array 66 of <array 28 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 66 of <array 72 of <array 71 of <array 42 of <array 7 of <bool>>>>>>> %ebp+16 ]

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
    movl    $35694, %eax            #   0:     assign v1 <- 35694
    movl    %eax, 12(%ebp)         
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t2
    jmp     l_f0_exit              
    call    dummyINTfunc            #   3:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 76 of <array 54 of <array 80 of <array 60 of <array 76 of <int>>>>>>> %ebp+16 ]
    #    -21(%ebp)   1  [ $v3       <bool> %ebp-21 ]

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
    leal    _str_1, %eax            #   0:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    leal    _str_2, %eax            #   3:     &()    t3 <- _str_2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               
    movl    $2686, %eax             #   6:     if     2686 = 79647 goto 3_if_true
    movl    $79647, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   7:     goto   4_if_false
l_f1_3_if_true:
    movl    $98, %eax               #   9:     assign v1 <- 98
    movb    %al, 12(%ebp)          
    movl    $99, %eax               #  10:     assign v1 <- 99
    movb    %al, 12(%ebp)          
    jmp     l_f1_8                  #  11:     goto   8
l_f1_8:
    movl    $63753, %eax            #  13:     return 63753
    jmp     l_f1_exit              
    movl    $831, %eax              #  14:     if     831 >= 80229 goto 13_if_true
    movl    $80229, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  15:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  17:     goto   12
l_f1_14_if_false:
l_f1_12:
    movl    $74061, %eax            #  20:     return 74061
    jmp     l_f1_exit              
    movl    $100, %eax              #  21:     if     100 <= 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  22:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  24:     goto   17
l_f1_19_if_false:
l_f1_17:
    movl    $1, %eax                #  27:     assign v3 <- 1
    movb    %al, -21(%ebp)         
l_f1_23_while_cond:
    movl    $98, %eax               #  29:     if     98 >= 99 goto 24_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_24_while_body     
    jmp     l_f1_22                 #  30:     goto   22
l_f1_24_while_body:
    jmp     l_f1_23_while_cond      #  32:     goto   23_while_cond
l_f1_22:
    movl    $98, %eax               #  34:     assign v1 <- 98
    movb    %al, 12(%ebp)          
l_f1_28_while_cond:
    movl    $17717, %eax            #  36:     if     17717 = 86882 goto 29_while_body
    movl    $86882, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_29_while_body     
    jmp     l_f1_27                 #  37:     goto   27
l_f1_29_while_body:
    jmp     l_f1_28_while_cond      #  39:     goto   28_while_cond
l_f1_27:
    jmp     l_f1_2                  #  41:     goto   2
l_f1_4_if_false:
l_f1_2:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <ptr(4) to <array 76 of <array 54 of <array 80 of <array 60 of <array 76 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #   -1693589592(%ebp)  1693589528  [ $v4       <array 76 of <array 54 of <array 80 of <array 60 of <array 76 of <int>>>>>> %ebp-1693589592 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1693589580, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $423397395, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1693589592(%ebp)    # local array 'v4': 5 dimensions
    movl    $76,-1693589588(%ebp)   #   dimension 1: 76 elements
    movl    $54,-1693589584(%ebp)   #   dimension 2: 54 elements
    movl    $80,-1693589580(%ebp)   #   dimension 3: 80 elements
    movl    $60,-1693589576(%ebp)   #   dimension 4: 60 elements
    movl    $76,-1693589572(%ebp)   #   dimension 5: 76 elements

    # function body
l_f2_1_while_cond:
    movl    $59190, %eax            #   1:     div    t2 <- 59190, 26620
    movl    $26620, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     if     t2 <= 88205 goto 2_while_body
    movl    $88205, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_4                  #   6:     goto   4
    jmp     l_f2_5_while_cond       #   7:     goto   5_while_cond
l_f2_4:
    movl    $78349, %eax            #   9:     assign v0 <- 78349
    movl    %eax, 8(%ebp)          
    jmp     l_f2_1_while_cond       #  10:     goto   1_while_cond
l_f2_0:
    movl    $100, %eax              #  12:     if     100 # 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  13:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_12                 #  15:     goto   12
l_f2_12:
    call    ReadInt                 #  17:     call   t3 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    $31261, %eax            #  18:     assign v2 <- 31261
    movl    %eax, 16(%ebp)         
l_f2_18_while_cond:
    movl    $98, %eax               #  20:     if     98 <= 99 goto 19_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_19_while_body     
    jmp     l_f2_17                 #  21:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  23:     goto   18_while_cond
l_f2_17:
    jmp     l_f2_8                  #  25:     goto   8
l_f2_10_if_false:
l_f2_8:
    leal    -1693589592(%ebp), %eax #  28:     &()    t4 <- v4
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  29:     param  2 <- t4
    pushl   %eax                   
    movl    $99, %eax               #  30:     param  1 <- 99
    pushl   %eax                   
    movl    $34911, %eax            #  31:     add    t5 <- 34911, 51423
    movl    $51423, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  32:     sub    t6 <- t5, 76982
    movl    $76982, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     sub    t7 <- t6, 20962
    movl    $20962, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  34:     add    t8 <- t7, 61058
    movl    $61058, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  35:     sub    t9 <- t8, 2737
    movl    $2737, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  36:     add    t10 <- t9, 7792
    movl    $7792, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  37:     sub    t11 <- t10, 47589
    movl    $47589, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  38:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  39:     call   t12 <- f1
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    movl    $80517, %eax            #  40:     div    t13 <- 80517, 8496
    movl    $8496, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  41:     sub    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  42:     param  0 <- t14
    pushl   %eax                   
    call    WriteInt                #  43:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $1693589580, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   2:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyINTfunc            #   5:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $15780, %eax            #   6:     if     15780 < t1 goto 6_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #   7:     goto   7_if_false
l_test_6_if_true:
    movl    $97, %eax               #   9:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  10:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_5                #  14:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
    .align   4
_str_2:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"








    # end of global data section
    #-----------------------------------------

    .end
##################################################
