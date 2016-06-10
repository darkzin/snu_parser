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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t8       <bool> %ebp-37 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 70 of <array 92 of <array 91 of <array 87 of <array 24 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 55 of <array 59 of <array 39 of <array 33 of <array 77 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 66 of <array 63 of <array 5 of <array 10 of <array 38 of <char>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $45513, %eax            #   1:     mul    t3 <- 45513, 59531
    movl    $59531, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t4 <- t3, 40386
    movl    $40386, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t5 <- t4, 46354
    movl    $46354, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t6 <- t5, 65635
    movl    $65635, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t7 <- t6, 69548
    movl    $69548, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     if     t7 > 97119 goto 2_if_true
    movl    $97119, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   7:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #   9:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyBOOLfunc           #  12:     call   t8 <- dummyBOOLfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  13:     if     t8 = 1 goto 13
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_13                
    jmp     l_f0_7_if_false         #  14:     goto   7_if_false
l_f0_13:
    jmp     l_f0_7_if_false         #  16:     goto   7_if_false
    jmp     l_f0_7_if_false         #  17:     goto   7_if_false
    jmp     l_f0_7_if_false         #  18:     goto   7_if_false
    jmp     l_f0_5                  #  19:     goto   5
l_f0_7_if_false:
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 66 of <array 63 of <array 5 of <array 10 of <array 38 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 55 of <array 59 of <array 39 of <array 33 of <array 77 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 70 of <array 92 of <array 91 of <array 87 of <array 24 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #   -1223651572(%ebp)  1223651544  [ $v1       <array 70 of <array 92 of <array 91 of <array 87 of <array 24 of <bool>>>>>> %ebp-1223651572 ]
    #   1785010680(%ebp)  1286305044  [ $v2       <array 55 of <array 59 of <array 39 of <array 33 of <array 77 of <int>>>>>> %ebp+1785010680 ]
    #   1777110456(%ebp)  7900224  [ $v3       <array 66 of <array 63 of <array 5 of <array 10 of <array 38 of <char>>>>>> %ebp+1777110456 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1777110468, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $629464207, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1223651572(%ebp)    # local array 'v1': 5 dimensions
    movl    $70,-1223651568(%ebp)   #   dimension 1: 70 elements
    movl    $92,-1223651564(%ebp)   #   dimension 2: 92 elements
    movl    $91,-1223651560(%ebp)   #   dimension 3: 91 elements
    movl    $87,-1223651556(%ebp)   #   dimension 4: 87 elements
    movl    $24,-1223651552(%ebp)   #   dimension 5: 24 elements
    movl    $5,1785010680(%ebp)     # local array 'v2': 5 dimensions
    movl    $55,1785010684(%ebp)    #   dimension 1: 55 elements
    movl    $59,1785010688(%ebp)    #   dimension 2: 59 elements
    movl    $39,1785010692(%ebp)    #   dimension 3: 39 elements
    movl    $33,1785010696(%ebp)    #   dimension 4: 33 elements
    movl    $77,1785010700(%ebp)    #   dimension 5: 77 elements
    movl    $5,1777110456(%ebp)     # local array 'v3': 5 dimensions
    movl    $66,1777110460(%ebp)    #   dimension 1: 66 elements
    movl    $63,1777110464(%ebp)    #   dimension 2: 63 elements
    movl    $5,1777110468(%ebp)     #   dimension 3: 5 elements
    movl    $10,1777110472(%ebp)    #   dimension 4: 10 elements
    movl    $38,1777110476(%ebp)    #   dimension 5: 38 elements

    # function body
    movl    $1, %eax                #   0:     assign v0 <- 1
    movb    %al, 8(%ebp)           
    leal    1777110456(%ebp), %eax  #   1:     &()    t2 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  3 <- t2
    pushl   %eax                   
    movl    $98, %eax               #   3:     param  2 <- 98
    pushl   %eax                   
    leal    1785010680(%ebp), %eax  #   4:     &()    t3 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     param  1 <- t3
    pushl   %eax                   
    leal    -1223651572(%ebp), %eax #   6:     &()    t4 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   8:     call   f0
    addl    $16, %esp              
l_f1_3_while_cond:
    call    dummyBOOLfunc           #  10:     call   t5 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_f1_7                  #  11:     goto   7
    movl    $1, %eax                #  12:     assign t6 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_8                  #  13:     goto   8
l_f1_7:
    movl    $0, %eax                #  15:     assign t6 <- 0
    movb    %al, -26(%ebp)         
l_f1_8:
    movzbl  -25(%ebp), %eax         #  17:     if     t5 = t6 goto 4_while_body
    movzbl  -26(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #  18:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #  20:     goto   3_while_cond
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $-1777110468, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $v0       <bool> %ebp-20 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $98, %eax               #   2:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   7:     return t3
    jmp     l_f2_exit              
    movl    $35905, %eax            #   8:     if     35905 = 93012 goto 7_if_true
    movl    $93012, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   9:     goto   8_if_false
l_f2_7_if_true:
l_f2_11_while_cond:
    movl    $98, %eax               #  12:     if     98 >= 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_12_while_body     
    jmp     l_f2_10                 #  13:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  15:     goto   11_while_cond
l_f2_10:
    movl    $98, %eax               #  17:     if     98 <= 98 goto 15
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_15                
    jmp     l_f2_16                 #  18:     goto   16
l_f2_15:
    movl    $1, %eax                #  20:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_17                 #  21:     goto   17
l_f2_16:
    movl    $0, %eax                #  23:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f2_17:
    movzbl  -18(%ebp), %eax         #  25:     assign v0 <- t4
    movb    %al, -20(%ebp)         
    movl    $100, %eax              #  26:     assign v1 <- 100
    movb    %al, -21(%ebp)         
    call    dummyBOOLfunc           #  27:     call   t5 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    jmp     l_f2_6                  #  28:     goto   6
l_f2_8_if_false:
l_f2_6:

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   1:     goto   0
l_test_0:
l_test_5_while_cond:
    movl    $7624, %eax             #   4:     if     7624 > 47238 goto 6_while_body
    movl    $47238, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_while_body    
    jmp     l_test_4                #   5:     goto   4
l_test_6_while_body:
l_test_9_while_cond:
    movl    $34171, %eax            #   8:     if     34171 = 83762 goto 10_while_body
    movl    $83762, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #   9:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  11:     goto   9_while_cond
l_test_8:
l_test_13_while_cond:
    movl    $98709, %eax            #  14:     if     98709 <= 84646 goto 14_while_body
    movl    $84646, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_14_while_body   
    jmp     l_test_12               #  15:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  17:     goto   13_while_cond
l_test_12:
    jmp     l_test_5_while_cond     #  19:     goto   5_while_cond
l_test_4:
    call    dummyCHARfunc           #  21:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_19_if_false      #  22:     goto   19_if_false
    jmp     l_test_22_if_false      #  23:     goto   22_if_false
    jmp     l_test_20               #  24:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_17               #  27:     goto   17
l_test_19_if_false:
l_test_17:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
