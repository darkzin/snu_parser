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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 34 of <array 56 of <array 40 of <array 96 of <array 27 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 68 of <array 25 of <array 38 of <array 53 of <array 30 of <int>>>>>>> %ebp+12 ]
    #    -20(%ebp)   4  [ $v3       <int> %ebp-20 ]

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
    movl    $51493, %eax            #   0:     if     51493 <= 54316 goto 9
    movl    $54316, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_9                 
    jmp     l_f0_6                  #   1:     goto   6
l_f0_9:
    jmp     l_f0_6                  #   3:     goto   6
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   5:     goto   7
l_f0_6:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    movzbl  -13(%ebp), %eax         #   9:     if     t3 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #  10:     goto   2
l_f0_1:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_3                  #  13:     goto   3
l_f0_2:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_3:
    movzbl  -14(%ebp), %eax         #  17:     return t4
    jmp     l_f0_exit              
    movl    $97616, %eax            #  18:     assign v3 <- 97616
    movl    %eax, -20(%ebp)        
    jmp     l_f0_16                 #  19:     goto   16
    jmp     l_f0_13                 #  20:     goto   13
l_f0_16:
    jmp     l_f0_14                 #  22:     goto   14
l_f0_13:
    movl    $1, %eax                #  24:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_15                 #  25:     goto   15
l_f0_14:
    movl    $0, %eax                #  27:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_15:
    movzbl  -15(%ebp), %eax         #  29:     return t5
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 68 of <array 25 of <array 38 of <array 53 of <array 30 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 34 of <array 56 of <array 40 of <array 96 of <array 27 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 93 of <array 87 of <array 32 of <array 95 of <array 70 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 62 of <array 81 of <array 85 of <array 20 of <array 50 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -197406772(%ebp)  197406744  [ $v5       <array 34 of <array 56 of <array 40 of <array 96 of <array 27 of <char>>>>>> %ebp-197406772 ]
    #   -608262796(%ebp)  410856024  [ $v6       <array 68 of <array 25 of <array 38 of <array 53 of <array 30 of <int>>>>>> %ebp-608262796 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $608262784, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $152065696, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-197406772(%ebp)     # local array 'v5': 5 dimensions
    movl    $34,-197406768(%ebp)    #   dimension 1: 34 elements
    movl    $56,-197406764(%ebp)    #   dimension 2: 56 elements
    movl    $40,-197406760(%ebp)    #   dimension 3: 40 elements
    movl    $96,-197406756(%ebp)    #   dimension 4: 96 elements
    movl    $27,-197406752(%ebp)    #   dimension 5: 27 elements
    movl    $5,-608262796(%ebp)     # local array 'v6': 5 dimensions
    movl    $68,-608262792(%ebp)    #   dimension 1: 68 elements
    movl    $25,-608262788(%ebp)    #   dimension 2: 25 elements
    movl    $38,-608262784(%ebp)    #   dimension 3: 38 elements
    movl    $53,-608262780(%ebp)    #   dimension 4: 53 elements
    movl    $30,-608262776(%ebp)    #   dimension 5: 30 elements

    # function body
    movl    $98, %eax               #   0:     assign v1 <- 98
    movb    %al, 8(%ebp)           
    leal    -608262796(%ebp), %eax  #   1:     &()    t3 <- v6
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  1 <- t3
    pushl   %eax                   
    leal    -197406772(%ebp), %eax  #   3:     &()    t4 <- v5
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   5:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    leal    _str_1, %eax            #   6:     &()    t6 <- _str_1
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #   8:     call   WriteStr
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $608262784, %esp        # remove locals
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
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t5       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 83 of <array 10 of <array 76 of <array 47 of <char>>>>>>> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $97, %eax               #   3:     if     97 < 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_5_if_true         
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
l_f2_12_while_cond:
    movl    $99, %eax               #  15:     if     99 >= 97 goto 13_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_13_while_body     
    jmp     l_f2_11                 #  16:     goto   11
l_f2_13_while_body:
    call    dummyINTfunc            #  18:     call   t3 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
l_f2_17_while_cond:
    jmp     l_f2_16                 #  20:     goto   16
    jmp     l_f2_17_while_cond      #  21:     goto   17_while_cond
l_f2_16:
    jmp     l_f2_12_while_cond      #  23:     goto   12_while_cond
l_f2_11:
    movl    $77045, %eax            #  25:     div    t4 <- 77045, 30608
    movl    $30608, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  26:     add    t5 <- t4, 76080
    movl    $76080, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  27:     add    t6 <- t5, 85530
    movl    $85530, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  28:     sub    t7 <- t6, 51036
    movl    $51036, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  29:     add    t8 <- t7, 65103
    movl    $65103, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  30:     add    t9 <- t8, 4009
    movl    $4009, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  31:     add    t10 <- t9, 18386
    movl    $18386, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  32:     add    t11 <- t10, 3663
    movl    $3663, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  33:     add    t12 <- t11, 62130
    movl    $62130, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  34:     add    t13 <- t12, 6230
    movl    $6230, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  35:     sub    t14 <- t13, 54019
    movl    $54019, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  36:     add    t15 <- t14, 7468
    movl    $7468, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  37:     param  0 <- t15
    pushl   %eax                   
    call    WriteInt                #  38:     call   WriteInt
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $52, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
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
    call    ReadInt                 #   1:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 # 62988 goto 2_while_body
    movl    $62988, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    movl    $100, %eax              #   5:     if     100 # 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_5               
    jmp     l_test_6                #   6:     goto   6
l_test_5:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_7                #   9:     goto   7
l_test_6:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_test_7:
    movzbl  -17(%ebp), %eax         #  13:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_1_while_cond     #  14:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    movl    $53120, %eax            #  17:     mul    t2 <- 53120, 27384
    movl    $27384, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     assign v1 <- t2
    movl    %eax, v1               
    jmp     l_test_exit            

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
