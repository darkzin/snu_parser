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
    #    -13(%ebp)   1  [ $t12      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t13      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t15      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t16      <bool> %ebp-22 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 17 of <array 76 of <array 47 of <array 75 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 51 of <array 38 of <array 34 of <array 17 of <array 60 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <char> %ebp+20 ]

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
l_f0_1_while_cond:
    movl    $1, %eax                #   1:     if     1 # 0 goto 4
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t12 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t12 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    jmp     l_f0_8                  #   9:     goto   8
l_f0_8:
    movl    $1, %eax                #  11:     assign t13 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_10                 #  12:     goto   10
    movl    $0, %eax                #  13:     assign t13 <- 0
    movb    %al, -14(%ebp)         
l_f0_10:
    movzbl  -13(%ebp), %eax         #  15:     if     t12 # t13 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #  16:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #  18:     goto   1_while_cond
l_f0_0:
    movl    $99, %eax               #  20:     if     99 < 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  21:     goto   14_if_false
l_f0_13_if_true:
    movl    $45539, %eax            #  23:     div    t14 <- 45539, 40004
    movl    $40004, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     param  0 <- t14
    pushl   %eax                   
    call    WriteInt                #  25:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #  26:     call   t15 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    call    dummyBOOLfunc           #  27:     call   t16 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
l_f0_20_while_cond:
    movl    $37721, %eax            #  29:     if     37721 < 44211 goto 21_while_body
    movl    $44211, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_21_while_body     
    jmp     l_f0_19                 #  30:     goto   19
l_f0_21_while_body:
    jmp     l_f0_20_while_cond      #  32:     goto   20_while_cond
l_f0_19:
    jmp     l_f0_12                 #  34:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 64 of <array 79 of <array 62 of <array 93 of <array 55 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $64283, %eax            #   0:     sub    t12 <- 64283, 19899
    movl    $19899, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $29491, %eax            #   1:     mul    t13 <- 29491, 19923
    movl    $19923, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t14 <- t12, t13
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t14
    jmp     l_f1_exit              
    call    dummyINTfunc            #   4:     call   t15 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     div    t16 <- t15, 55468
    movl    $55468, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     mul    t17 <- t16, 42500
    movl    $42500, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     mul    t18 <- t17, 58784
    movl    $58784, %ebx           
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     return t18
    jmp     l_f1_exit              
l_f1_3_while_cond:
    jmp     l_f1_2                  #  10:     goto   2
l_f1_6_while_cond:
    jmp     l_f1_5                  #  12:     goto   5
    jmp     l_f1_6_while_cond       #  13:     goto   6_while_cond
l_f1_5:
    movl    $33207, %eax            #  15:     return 33207
    jmp     l_f1_exit              
    movl    $93438, %eax            #  16:     return 93438
    jmp     l_f1_exit              
    movl    $25256, %eax            #  17:     return 25256
    jmp     l_f1_exit              
    jmp     l_f1_9                  #  18:     goto   9
l_f1_9:
    jmp     l_f1_3_while_cond       #  20:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t14      <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 94 of <array 84 of <array 93 of <array 94 of <array 74 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 85 of <array 67 of <array 28 of <array 92 of <array 55 of <int>>>>>>> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t12 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $5690, %eax             #   1:     div    t13 <- 5690, 70978
    movl    $70978, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t13
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   3:     call   t14 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t11      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t2       <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t5       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 56034
    movl    $56034, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_4                #   4:     goto   4
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_test_5                #   6:     goto   5
l_test_4:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -26(%ebp)         
l_test_5:
    movzbl  -26(%ebp), %eax         #  10:     assign v1 <- t2
    movb    %al, v1                
    movl    $98, %eax               #  11:     if     98 > 97 goto 9_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_9_if_true       
    jmp     l_test_10_if_false      #  12:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_exit            
    jmp     l_test_8                #  15:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $54318, %eax            #  18:     add    t3 <- 54318, 54060
    movl    $54060, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     add    t4 <- t3, 35351
    movl    $35351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     sub    t5 <- t4, 57694
    movl    $57694, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     add    t6 <- t5, 76849
    movl    $76849, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  22:     add    t7 <- t6, 32889
    movl    $32889, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  23:     add    t8 <- t7, 27977
    movl    $27977, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  24:     add    t9 <- t8, 89288
    movl    $89288, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  25:     add    t10 <- t9, 40990
    movl    $40990, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $99731, %eax            #  26:     if     99731 # t10 goto 14
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_14              
    jmp     l_test_15               #  27:     goto   15
l_test_14:
    movl    $1, %eax                #  29:     assign t11 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_16               #  30:     goto   16
l_test_15:
    movl    $0, %eax                #  32:     assign t11 <- 0
    movb    %al, -25(%ebp)         
l_test_16:
    movzbl  -25(%ebp), %eax         #  34:     assign v1 <- t11
    movb    %al, v1                

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
