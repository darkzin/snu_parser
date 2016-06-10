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
    #      8(%ebp)   1  [ %v3       <bool> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f0_exit              
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
l_f0_5_while_cond:
    movl    $98, %eax               #   3:     if     98 < 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
l_f0_4:
    call    WriteLn                 #   8:     call   WriteLn
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t9       <bool> %ebp-26 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 2 of <array 2 of <array 6 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v5       <ptr(4) to <array 3 of <array 1 of <array 7 of <array 6 of <array 8 of <bool>>>>>>> %ebp+16 ]
    #    -27(%ebp)   1  [ $v6       <char> %ebp-27 ]

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
    call    ReadInt                 #   0:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t6 <- t5, 24315
    movl    $24315, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t6
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
l_f1_2_while_cond:
    movl    $81369, %eax            #   5:     div    t7 <- 81369, 49937
    movl    $49937, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $23043, %eax            #   6:     if     23043 > t7 goto 3_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   7:     goto   1
l_f1_3_while_body:
    movl    $46291, %eax            #   9:     if     46291 < 39206 goto 6
    movl    $39206, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_6                 
    jmp     l_f1_7                  #  10:     goto   7
l_f1_6:
    movl    $1, %eax                #  12:     assign t8 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_8                  #  13:     goto   8
l_f1_7:
    movl    $0, %eax                #  15:     assign t8 <- 0
    movb    %al, -25(%ebp)         
l_f1_8:
    movzbl  -25(%ebp), %eax         #  17:     return t8
    jmp     l_f1_exit              
    movl    $99, %eax               #  18:     assign v6 <- 99
    movb    %al, -27(%ebp)         
    jmp     l_f1_2_while_cond       #  19:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_13                 #  21:     goto   13
    jmp     l_f1_13                 #  22:     goto   13
    jmp     l_f1_13                 #  23:     goto   13
    movl    $1, %eax                #  24:     assign t9 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_14                 #  25:     goto   14
l_f1_13:
    movl    $0, %eax                #  27:     assign t9 <- 0
    movb    %al, -26(%ebp)         
l_f1_14:
    movzbl  -26(%ebp), %eax         #  29:     return t9
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $v3       <bool> %ebp-37 ]

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
l_f2_1_while_cond:
    movl    $23091, %eax            #   1:     if     23091 >= 54966 goto 2_while_body
    movl    $54966, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    movl    $1, %eax                #   4:     assign v3 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    movl    $22784, %eax            #   7:     add    t5 <- 22784, 52344
    movl    $52344, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     sub    t6 <- t5, 56844
    movl    $56844, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     sub    t7 <- t6, 94022
    movl    $94022, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $68755, %eax            #  10:     if     68755 # t7 goto 6
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_6                 
    jmp     l_f2_7                  #  11:     goto   7
l_f2_6:
    movl    $1, %eax                #  13:     assign t8 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_8                  #  14:     goto   8
l_f2_7:
    movl    $0, %eax                #  16:     assign t8 <- 0
    movb    %al, -29(%ebp)         
l_f2_8:
    movzbl  -29(%ebp), %eax         #  18:     assign v3 <- t8
    movb    %al, -37(%ebp)         
    movl    $93859, %eax            #  19:     sub    t9 <- 93859, 18646
    movl    $18646, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  20:     sub    t10 <- t9, 79235
    movl    $79235, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     return t10
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
    #    -21(%ebp)   1  [ $t2       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t3       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t4       <bool> %ebp-23 ]

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
    movl    $96058, %eax            #   0:     sub    t0 <- 96058, 62973
    movl    $62973, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t1 <- t0, 1347
    movl    $1347, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $10991, %eax            #   2:     if     10991 >= t1 goto 1_if_true
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
l_test_1_if_true:
    movl    $99, %eax               #   5:     assign v0 <- 99
    movb    %al, v0                
    movl    $97, %eax               #   6:     assign v0 <- 97
    movb    %al, v0                
    movl    $15254, %eax            #   7:     assign v1 <- 15254
    movl    %eax, v1               
    movl    $98, %eax               #   8:     if     98 < 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_8_if_true       
    jmp     l_test_9_if_false       #   9:     goto   9_if_false
l_test_8_if_true:
    jmp     l_test_7                #  11:     goto   7
l_test_9_if_false:
l_test_7:
    jmp     l_test_0                #  14:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyCHARfunc           #  17:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $8841, %eax             #  18:     assign v1 <- 8841
    movl    %eax, v1               
    movl    $100, %eax              #  19:     assign v0 <- 100
    movb    %al, v0                
    movl    $1, %eax                #  20:     assign v2 <- 1
    movb    %al, v2                
    jmp     l_test_exit            
    jmp     l_test_12               #  22:     goto   12
l_test_12:
    movl    $62643, %eax            #  24:     if     62643 >= 69854 goto 23
    movl    $69854, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_23              
    jmp     l_test_21               #  25:     goto   21
l_test_23:
    movl    $1, %eax                #  27:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_22               #  28:     goto   22
l_test_21:
    movl    $0, %eax                #  30:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_22:
    movzbl  -22(%ebp), %eax         #  32:     assign v2 <- t3
    movb    %al, v2                
    movl    $28332, %eax            #  33:     if     28332 < 68061 goto 26
    movl    $68061, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_26              
    jmp     l_test_27               #  34:     goto   27
l_test_26:
    movl    $1, %eax                #  36:     assign t4 <- 1
    movb    %al, -23(%ebp)         
    jmp     l_test_28               #  37:     goto   28
l_test_27:
    movl    $0, %eax                #  39:     assign t4 <- 0
    movb    %al, -23(%ebp)         
l_test_28:
    movzbl  -23(%ebp), %eax         #  41:     assign v2 <- t4
    movb    %al, v2                
    call    dummyProcedure          #  42:     call   dummyProcedure

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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
