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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 82 of <array 16 of <array 88 of <array 68 of <array 3 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 32 of <array 44 of <array 77 of <array 88 of <array 13 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyINTfunc            #   0:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
    movl    $68942, %eax            #   2:     if     68942 > 77094 goto 3_while_body
    movl    $77094, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
    movl    $99, %eax               #   5:     return 99
    jmp     l_f0_exit              
    call    dummyINTfunc            #   6:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_8_while_cond:
    movl    $90170, %eax            #   8:     if     90170 >= 29462 goto 11_if_true
    movl    $29462, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_11_if_true        
    jmp     l_f0_12_if_false        #   9:     goto   12_if_false
l_f0_11_if_true:
    jmp     l_f0_10                 #  11:     goto   10
l_f0_12_if_false:
l_f0_10:
    movl    $98, %eax               #  14:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_8_while_cond       #  15:     goto   8_while_cond
    jmp     l_f0_2_while_cond       #  16:     goto   2_while_cond
l_f0_1:
l_f0_16_while_cond:
    movl    $27934, %eax            #  19:     if     27934 # 42986 goto 17_while_body
    movl    $42986, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_17_while_body     
    jmp     l_f0_15                 #  20:     goto   15
l_f0_17_while_body:
l_f0_20_while_cond:
    movl    $99, %eax               #  23:     if     99 <= 97 goto 21_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_21_while_body     
    jmp     l_f0_19                 #  24:     goto   19
l_f0_21_while_body:
    jmp     l_f0_20_while_cond      #  26:     goto   20_while_cond
l_f0_19:
    movl    $99, %eax               #  28:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_16_while_cond      #  29:     goto   16_while_cond
l_f0_15:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    movl    $1, %eax                #   2:     return 1
    jmp     l_f1_exit              
    call    dummyINTfunc            #   3:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f1_0                  #   4:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    ReadInt                 #   7:     call   t6 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #   8:     if     97 <= 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_14_if_true        
    jmp     l_f1_15_if_false        #   9:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  11:     goto   13
l_f1_15_if_false:
l_f1_13:
    movl    $72932, %eax            #  14:     if     72932 >= 78580 goto 18_if_true
    movl    $78580, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  15:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  17:     goto   17
l_f1_19_if_false:
l_f1_17:
    jmp     l_f1_10                 #  20:     goto   10
l_f1_10:

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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

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
    movl    $63767, %eax            #   0:     add    t5 <- 63767, 16059
    movl    $16059, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     add    t6 <- t5, 8228
    movl    $8228, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     add    t7 <- t6, 5415
    movl    $5415, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     add    t8 <- t7, 85504
    movl    $85504, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     assign v3 <- t8
    movl    %eax, -40(%ebp)        
l_f2_2_while_cond:
    jmp     l_f2_1                  #   6:     goto   1
    movl    $100, %eax              #   7:     if     100 # 100 goto 5_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   8:     goto   6_if_false
l_f2_5_if_true:
    jmp     l_f2_4                  #  10:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_8                  #  13:     goto   8
l_f2_8:
    jmp     l_f2_2_while_cond       #  15:     goto   2_while_cond
l_f2_1:
    movl    $44016, %eax            #  17:     mul    t9 <- 44016, 40840
    movl    $40840, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    $38897, %eax            #  18:     sub    t10 <- 38897, t9
    movl    -36(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     return t10
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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $28867, %eax            #   1:     sub    t1 <- 28867, 18720
    movl    $18720, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t1
    movl    %eax, v0               
    jmp     l_test_4_if_false       #   3:     goto   4_if_false
    jmp     l_test_exit            
    call    dummyCHARfunc           #   5:     call   t2 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    call    dummyProcedure          #   6:     call   dummyProcedure
    jmp     l_test_2                #   7:     goto   2
l_test_4_if_false:
l_test_2:
l_test_9_while_cond:
    movl    $1, %eax                #  11:     if     1 # 1 goto 10_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_10_while_body   
    jmp     l_test_8                #  12:     goto   8
l_test_10_while_body:
    movl    $97, %eax               #  14:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_9_while_cond     #  15:     goto   9_while_cond
l_test_8:
    movl    $1, %eax                #  17:     param  1 <- 1
    pushl   %eax                   
    movl    $100, %eax              #  18:     if     100 < 99 goto 14
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_14              
    jmp     l_test_15               #  19:     goto   15
l_test_14:
    movl    $1, %eax                #  21:     assign t3 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_test_16               #  22:     goto   16
l_test_15:
    movl    $0, %eax                #  24:     assign t3 <- 0
    movb    %al, -22(%ebp)         
l_test_16:
    movzbl  -22(%ebp), %eax         #  26:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  27:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -23(%ebp)         
    movl    $96726, %eax            #  28:     assign v0 <- 96726
    movl    %eax, v0               

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
