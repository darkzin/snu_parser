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
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v1 <- t3
    movb    %al, 8(%ebp)           
    jmp     l_f0_3_if_false         #   2:     goto   3_if_false
    movl    $97, %eax               #   3:     return 97
    jmp     l_f0_exit              
    movl    $0, %eax                #   4:     assign v1 <- 0
    movb    %al, 8(%ebp)           
    movl    $98, %eax               #   5:     if     98 = 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   6:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   8:     goto   6
l_f0_8_if_false:
l_f0_6:
l_f0_11_while_cond:
    movl    $98, %eax               #  12:     if     98 <= 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_12_while_body     
    jmp     l_f0_10                 #  13:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  15:     goto   11_while_cond
l_f0_10:
    movl    $98, %eax               #  17:     return 98
    jmp     l_f0_exit              
    movl    $9724, %eax             #  18:     assign v2 <- 9724
    movl    %eax, 12(%ebp)         
    jmp     l_f0_1                  #  19:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  22:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $98, %eax               #  23:     if     98 > t4 goto 17_if_true
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  24:     goto   18_if_false
l_f0_17_if_true:
l_f0_21_while_cond:
    jmp     l_f0_21_while_cond      #  27:     goto   21_while_cond
    jmp     l_f0_16                 #  28:     goto   16
l_f0_18_if_false:
l_f0_16:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $v1       <bool> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     div    t4 <- t3, 93596
    movl    $93596, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     mul    t5 <- t4, 37986
    movl    $37986, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     mul    t6 <- t5, 61654
    movl    $61654, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     return t6
    jmp     l_f1_exit              
    movl    $75694, %eax            #   5:     sub    t7 <- 75694, 95252
    movl    $95252, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     if     t7 < 3724 goto 2
    movl    $3724, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f1_2                 
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $1, %eax                #   9:     assign t8 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f1_4                  #  10:     goto   4
l_f1_3:
    movl    $0, %eax                #  12:     assign t8 <- 0
    movb    %al, -37(%ebp)         
l_f1_4:
    movzbl  -37(%ebp), %eax         #  14:     assign v1 <- t8
    movb    %al, -45(%ebp)         
    jmp     l_f1_8_if_false         #  15:     goto   8_if_false
    movl    $79485, %eax            #  16:     return 79485
    jmp     l_f1_exit              
    movl    $11225, %eax            #  17:     sub    t9 <- 11225, 88345
    movl    $88345, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  18:     sub    t10 <- t9, 24965
    movl    $24965, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     param  0 <- t10
    pushl   %eax                   
    call    WriteInt                #  20:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_6                  #  21:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t6       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]

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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t3 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #  10:     return t4
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  11:     call   t5 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
l_f2_8_while_cond:
    movl    $100, %eax              #  13:     param  2 <- 100
    pushl   %eax                   
    movl    $92548, %eax            #  14:     param  1 <- 92548
    pushl   %eax                   
    jmp     l_f2_12                 #  15:     goto   12
    movl    $1, %eax                #  16:     assign t6 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_13                 #  17:     goto   13
l_f2_12:
    movl    $0, %eax                #  19:     assign t6 <- 0
    movb    %al, -16(%ebp)         
l_f2_13:
    movzbl  -16(%ebp), %eax         #  21:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  22:     call   t7 <- f0
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  23:     if     t7 # 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_9_while_body      
    jmp     l_f2_7                  #  24:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  26:     goto   8_while_cond
l_f2_7:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]

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
    jmp     l_test_exit            
    movl    $10413, %eax            #   1:     add    t0 <- 10413, 9999
    movl    $9999, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     if     t0 >= 96514 goto 2_if_true
    movl    $96514, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
l_test_9_while_cond:
    movl    $49136, %eax            #  10:     if     49136 > 16291 goto 10_while_body
    movl    $16291, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
    movl    $1, %eax                #  15:     assign v0 <- 1
    movb    %al, v0                
    call    dummyBOOLfunc           #  16:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_1                #  17:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $78930, %eax            #  20:     assign v1 <- 78930
    movl    %eax, v1               
l_test_16_while_cond:
    call    dummyBOOLfunc           #  22:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_test_16_while_cond    #  23:     goto   16_while_cond
    movl    $100, %eax              #  24:     assign v2 <- 100
    movb    %al, v2                

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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
